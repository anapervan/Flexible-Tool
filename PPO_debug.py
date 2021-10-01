import logging
import ray
from ray import tune
import ray.tune.progress_reporter as reporter
from typing import Optional, Type
from ray.rllib.models.torch.torch_modelv2 import TorchModelV2
from ray.rllib.models.torch.misc import normc_initializer, SlimFC, SlimConv2d
from ray.rllib.utils.annotations import override
from ray.rllib.utils.framework import try_import_torch
from ray.rllib.models.catalog import ModelCatalog
from ray.rllib.utils.typing import ModelConfigDict
import ray.rllib.agents.ddpg as ddpg
import ray.rllib.agents.ppo as ppo
import numpy as np
from typing import Dict, List
from ray.rllib.models.torch.misc import SlimFC
from ray.rllib.utils.typing import ModelConfigDict, TensorType
from ray.tune import grid_search
from ray.rllib.agents.ddpg.ddpg_tf_policy import build_ddpg_models, get_distribution_inputs_and_class, validate_spaces
import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import solve_ivp  # solve initial value problem
from scipy.optimize import minimize
from mpl_toolkits import mplot3d  # 3d plotting
from scipy.linalg import norm
from scipy.spatial.transform import Rotation as R
import math
import gym
from gym import spaces
from ray.rllib.env.env_context import EnvContext
from ray.tune import CLIReporter



torch, nn = try_import_torch()
ray.init()


# In[4]:


############################
#### Environment
############################

class Rod(gym.Env):

    def __init__(self, config: EnvContext):

        ### For environment
        self.L = 1  # length of rod
        self.N = 100  # total number of segments along the rod
        self.q_output = np.zeros([16, self.N])  # array for final q output
#         self.q_des = np.zeros([3, self.N])  # input from shape_opt -- desired configuration
        x_des = np.linspace(0,1,self.N)
        y_des = np.zeros(self.N)
        z_des = np.zeros(self.N)
        
        self.q_des = np.concatenate([x_des,y_des,z_des])
        self.step_counter = 0
    
    
    
    

        self.action_space = spaces.Box(np.array([0, -1, -1, -1, -1, -1, -1, -1]), np.array(
            [1, 1, 1, 1, 1, 1, 1, 1]))  ## action space is grasp location + (position+rotation) = 1+7=8
        upper = np.ones((self.N*3,))
        lower = -upper
        self.observation_space = spaces.Box(lower, upper)  ## x,y,z
        self.config = np.zeros([19, self.N]).flatten()

    ### rod dynamics, from bretl
    def rod_dynamics(self, t, q, u):
        q11, q12, q13, q14, q21, q22, q23, q24, q31, q32, q33, q34, q41, q42, q43, q44 = q
        u1, u2, u3 = u

        dq11dt = u3 * q12 - u2 * q13
        dq12dt = -u3 * q11 + u1 * q13
        dq13dt = u2 * q11 - u1 * q12
        dq14dt = q11
        dq21dt = u3 * q22 - u2 * q23
        dq22dt = -u3 * q21 + u1 * q23
        dq23dt = u2 * q21 - u1 * q22
        dq24dt = q21
        dq31dt = u3 * q32 - u2 * q33
        dq32dt = -u3 * q31 + u1 * q33
        dq33dt = u2 * q31 - u1 * q32
        dq34dt = q31
        dq41dt = u3 * q42 - u2 * q43
        dq42dt = -u3 * q41 + u1 * q43
        dq43dt = u2 * q41 - u1 * q42
        dq44dt = q41

        dqdt = [dq11dt, dq12dt, dq13dt, dq14dt, dq21dt, dq22dt, dq23dt, dq24dt, dq31dt, dq32dt, dq33dt, dq34dt, dq41dt,
                dq42dt, dq43dt, dq44dt]
        return dqdt

    ### cost function, from Bretl
    def cost_function(self, qu, nt, dt, qd_final):
        # parameters
        c1, c2, c3 = 1., 1., 1.
        P = 500  # weight on final cost

        # calculate cost
        qu = qu.reshape((19, nt))
        running_cost = np.zeros((1, nt))
        for i in range(nt):
            running_cost[0, i] = dt * 0.5 * (c1 * qu[16, i] ** 2 + c2 * qu[17, i] ** 2 + c3 * qu[18, i])
        final_cost = P * (qu[0:16, -1] - qd_final) ** 2  # last q value minus desired q endpoint
        cost = np.sum(running_cost) + np.sum(final_cost)
        #         print("cost", cost)
        return cost

    ### segmented dynamics
    def dynamics(self, qu, q_initial, qd_final, nt1, dt):
        # print('qu size:=', len(qu.flatten()))
        # print('nt1 :=', nt1)
        qu = qu.reshape((19, nt1))
        q = qu[0:16, :]
        u = qu[16:19, :]
        error = np.zeros((1, 16 * nt1))
        #     error = np.zeros((1,16*nt1+16))

        j = 0
        for i in range(nt1 - 1):
            error[:, j] = q[0, i + 1] - (q[0, i] + dt * (u[2, i] * q[1, i] - u[1, i] * q[2, i]))
            error[:, j + 1] = q[1, i + 1] - (q[1, i] + dt * (-u[2, i] * q[0, i] + u[0, i] * q[2, i]))
            error[:, j + 2] = q[2, i + 1] - (q[2, i] + dt * (u[1, i] * q[0, i] - u[0, i] * q[1, i]))
            error[:, j + 3] = q[3, i + 1] - (q[3, i] + dt * (q[0, i]))
            error[:, j + 4] = q[4, i + 1] - (q[4, i] + dt * (u[2, i] * q[5, i] - u[1, i] * q[6, i]))
            error[:, j + 5] = q[5, i + 1] - (q[5, i] + dt * (-u[2, i] * q[4, i] + u[0, i] * q[6, i]))
            error[:, j + 6] = q[6, i + 1] - (q[6, i] + dt * (u[1, i] * q[4, i] - u[0, i] * q[5, i]))
            error[:, j + 7] = q[7, i + 1] - (q[7, i] + dt * (q[4, i]))
            error[:, j + 8] = q[8, i + 1] - (q[8, i] + dt * (u[2, i] * q[9, i] - u[1, i] * q[10, i]))
            error[:, j + 9] = q[9, i + 1] - (q[9, i] + dt * (-u[2, i] * q[8, i] + u[0, i] * q[10, i]))
            error[:, j + 10] = q[10, i + 1] - (q[10, i] + dt * (u[1, i] * q[8, i] - u[0, i] * q[9, i]))
            error[:, j + 11] = q[11, i + 1] - (q[11, i] + dt * (q[8, i]))
            error[:, j + 12] = q[12, i + 1] - (q[12, i] + dt * (u[2, i] * q[13, i] - u[1, i] * q[14, i]))
            error[:, j + 13] = q[13, i + 1] - (q[13, i] + dt * (-u[2, i] * q[12, i] + u[0, i] * q[14, i]))
            error[:, j + 14] = q[14, i + 1] - (q[14, i] + dt * (u[1, i] * q[12, i] - u[0, i] * q[13, i]))
            error[:, j + 15] = q[15, i + 1] - (q[15, i] + dt * (q[12, i]))
            j = j + 16

        # enforce initial condition 
        error[:, j] = q[0, 0] - q_initial[0]
        error[:, j + 1] = q[1, 0] - q_initial[1]
        error[:, j + 2] = q[2, 0] - q_initial[2]
        error[:, j + 3] = q[3, 0] - q_initial[3]
        error[:, j + 4] = q[4, 0] - q_initial[4]
        error[:, j + 5] = q[5, 0] - q_initial[5]
        error[:, j + 6] = q[6, 0] - q_initial[6]
        error[:, j + 7] = q[7, 0] - q_initial[7]
        error[:, j + 8] = q[8, 0] - q_initial[8]
        error[:, j + 9] = q[9, 0] - q_initial[9]
        error[:, j + 10] = q[10, 0] - q_initial[10]
        error[:, j + 11] = q[11, 0] - q_initial[11]
        error[:, j + 12] = q[12, 0] - q_initial[12]
        error[:, j + 13] = q[13, 0] - q_initial[13]
        error[:, j + 14] = q[14, 0] - q_initial[14]
        error[:, j + 15] = q[15, 0] - q_initial[15]
        #     j = j+16

        #     # enforce final condition
        #     error[:,j]    = q[0,-1]  - qd_final[0]
        #     error[:,j+1]  = q[1,-1]  - qd_final[1]
        #     error[:,j+2]  = q[2,-1]  - qd_final[2]
        #     error[:,j+3]  = q[3,-1]  - qd_final[3]
        #     error[:,j+4]  = q[4,-1]  - qd_final[4]
        #     error[:,j+5]  = q[5,-1]  - qd_final[5]
        #     error[:,j+6]  = q[6,-1]  - qd_final[6]
        #     error[:,j+7]  = q[7,-1]  - qd_final[7]
        #     error[:,j+8]  = q[8,-1]  - qd_final[8]
        #     error[:,j+9]  = q[9,-1]  - qd_final[9]
        #     error[:,j+10] = q[10,-1] - qd_final[10]
        #     error[:,j+11] = q[11,-1] - qd_final[11]
        #     error[:,j+12] = q[12,-1] - qd_final[12]
        #     error[:,j+13] = q[13,-1] - qd_final[13]
        #     error[:,j+14] = q[14,-1] - qd_final[14]
        #     error[:,j+15] = q[15,-1] - qd_final[15]

        pos_error = np.absolute(error)
        #     print("error",pos_error)

        return pos_error.flatten()

    ### 2D plot
    def plot_2d(self, q_array):
        # Find grasps from data
        grasps = []
        for col in range(np.shape(q_array)[1] - 1):
            if all(q_output[:, col] == q_array[:, col + 1]):
                grasps.append(col)

        plt.figure(dpi=100, facecolor='w')
        plt.plot(q_array[3, :], q_array[7, :], linewidth=5, color='cornflowerblue')
        plt.scatter(q_array[3, grasps], q_array[7, grasps], marker='s', s=100, color='gold', label='grasp')
        axes = plt.gca()
        plt.title('rod')
        plt.xlabel('x')
        plt.ylabel('y')
        plt.grid(True)

        plt.figure(dpi=100, facecolor='w')
        plt.plot(q_array[3, :], q_array[11, :], linewidth=5, color='cornflowerblue')
        plt.scatter(q_array[3, grasps], q_array[11, grasps], marker='s', s=100, color='gold', label='grasp')
        axes = plt.gca()
        plt.title('rod')
        plt.xlabel('x')
        plt.ylabel('z')
        plt.grid(True)
        plt.show()

    ### 3D plot
    def plot_3d(self, q_array):
        ### plot the initial trajectory in 3D
        q14, q24, q34 = q_array[3, :], q_array[7, :], q_array[11, :]

        # Interpret initial q's
        x = [q14[i] for i in range(np.shape(q_array)[1])]
        y = [q24[i] for i in range(np.shape(q_array)[1])]
        z = [q34[i] for i in range(np.shape(q_array)[1])]

        # Find grasps from data
        grasps = []
        for col in range(np.shape(q_array)[1] - 1):
            if all(q_output[:, col] == q_array[:, col + 1]):
                grasps.append(col)

        # 3D plot
        fig = plt.figure(figsize=(12, 10))
        ax = plt.axes(projection='3d')
        ax.scatter(x[0], y[0], z[0], marker='o', s=150, color='navy', label='start point')
        ax.scatter(x[-1], y[-1], z[-1], marker='o', s=150, color='blue', label='end point')
        for g in grasps:
            ax.scatter(x[g], y[g], z[g], marker='s', s=100, color='gold', label='grasp')
        ax.set_title('initial rod configuration in 3D')
        ax.set_xlabel('x')
        ax.set_ylabel('y')
        ax.set_zlabel('z')
        ax.set_xlim([-1.1, 1.1])
        ax.set_ylim([-1.1, 1.1])
        ax.set_zlim([-1.1, 1.1])
        plt.legend()
        ax.plot3D(x, y, z, linewidth=5, color='cornflowerblue')

        ### plot one cylinder segment

    def plot_cylinder_segment(self, x0, y0, z0, xf, yf, zf, ax):
        # input: beginning and ending center points of cylinder
        # function modified from: https://stackoverflow.com/questions/39822480/plotting-a-solid-cylinder-centered-on-a-plane-in-matplotlib

        # axis and radius
        p0 = np.array([x0, y0, z0])  # point at one end
        p1 = np.array([xf, yf, zf])  # point at other end
        R = .1  # radius

        v = p1 - p0  # vector in direction of axis
        mag = norm(v)  # magnitude of vector
        v = v / mag  # unit vector in direction of axis

        # make some vector not in the same direction as v
        not_v = np.array([1, 0, 0])
        if (v == not_v).all():
            not_v = np.array([0, 1, 0])

        n1 = np.cross(v, not_v)  # make vector perpendicular to v
        n1 /= norm(n1)  # normalize n1
        n2 = np.cross(v, n1)  # unit vector perpendicular to v and n1

        # surface ranges over t from 0 to length of axis and 0 to 2*pi
        t = np.linspace(0, mag, 2)
        theta = np.linspace(0, 2 * np.pi, 12)
        rsample = np.linspace(0, R, 2)
        t, theta2 = np.meshgrid(t, theta)  # use meshgrid to make 2d arrays
        rsample, theta = np.meshgrid(rsample, theta)

        # generate coordinates for surface
        X, Y, Z = [p0[i] + v[i] * t + R * np.sin(theta2) * n1[i] + R * np.cos(theta2) * n2[i] for i in [0, 1, 2]]
        ax.plot_surface(X, Y, Z, color='orange')

    ### 3D mesh visualization
    def plot_mesh(self, q_array):
        q14, q24, q34 = q_array[3, :], q_array[7, :], q_array[11, :]

        # Interpret initial q's
        x = [q14[i] for i in range(np.shape(q_array)[1])]
        y = [q24[i] for i in range(np.shape(q_array)[1])]
        z = [q34[i] for i in range(np.shape(q_array)[1])]

        ### 3d plot parameters and labels
        fig2 = plt.figure(figsize=(12, 10))
        ax = plt.axes(projection='3d')
        ax.set_title('rod configuration in 3D')
        ax.set_xlabel('x')
        ax.set_ylabel('y')
        ax.set_zlabel('z')
        ax.set_xlim([-1.1, 1.1])
        ax.set_ylim([-1.1, 1.1])
        ax.set_zlim([-1.1, 1.1])

        ### 3D plot of each element
        for i in list(range(np.shape(q_array)[1] - 1)):
            if any([x[i] != x[i + 1], y[i] != y[i + 1], z[i] != z[i + 1]]):
                plot_cylinder_segment(x[i], y[i], z[i], x[i + 1], y[i + 1], z[i + 1], ax)
        plt.show()

    def check_physics(self, grasp, bend):
        ### ensure physics are satisfied. the final grasp position must be within r = (x^2+y^2+z^2)^(1/2) of grasp location
        if (grasp_location) ** 2 >= (bend[0] ** 2 + bend[1] ** 2 + bend[2] ** 2):
            print('Physics are satisfied')
        else:
            print('Physics are off. Rod is inextensible')

    ### simulate actions
    pi = math.pi

    def simulate_bends(self, L):
        x1, y1, z1 = 0.1, 0.1, 0.1
        theta1 = 0  # pi/3
        #     r1 = R.from_matrix([[1, 0, 0], [0, 1, 0],[0, 0, 1]])
        r1 = R.from_matrix([[np.cos(theta1), -np.sin(theta1), 0], [np.sin(theta1), np.cos(theta1), 0], [0, 0, 1]])
        quat1 = r1.as_quat()  # convert to quaternion form
        bend = np.concatenate((np.array([x1, y1, z1]), quat1),
                              axis=0)  # final grasp position and quaternion: x, y, z, w_o, x_o, y_o, z_o

        grasp_location = 2 * L / 3  # locations of grasp, along the length of the rod

        return grasp_location, bend

    ######## RESET FUNCTION ########
    ### output qu initial position
    def reset(self):  ## only take self can put into init
        self.step_counter = 0
        N = self.N
        L = self.L
        t_span = np.linspace(0, L, N)  # list for whole length
        dt = (t_span[-1] - t_span[0]) / (N - 1)  # segment length

        ### q and u initial point
        q0 = np.array([[1, 0, 0, 0],
                       [0, 1, 0, 0],
                       [0, 0, 1, 0],
                       [0, 0, 0, 1]])  # initial q's
        q0_flatten = q0.flatten()  # flatten
        q_initial = np.reshape(q0_flatten, (16, 1))  # reshape
        q_estimate = q_initial * np.ones((1, N))  # flatten

        u_initial = np.array([[0.1], [0.1], [0.1]])  # initial u's
        u_estimate = u_initial * np.ones((3, N))  # reshape

        ### solve for q and u initial guesses (based in initial point)
        self.config_output = solve_ivp(lambda t, y: self.rod_dynamics(t, y, u_initial), [t_span[0], t_span[-1]],
                                       q_initial.flatten(), t_eval=t_span)
        self.config = np.vstack((self.config_output.y, u_estimate)).flatten()

        self.qu0 = np.zeros(300)
        self.qu0[:99] = 1  ## xdirection will be one but the rest will be zero

        #     return q_config.y # output only q configuration -- do we need u? or save us as self.u variable?
        #         plot_3d(q_config.y) ## probably don't need plot when doing the RL
        return self.qu0.flatten()  # q_config.y

    ######### STEP FUNCTION #########
    ### output new piecewise q representation of rod
    def step(self, action):  ## can only take action
        self.step_counter +=1
        qu0 = self.qu0
        L = self.L
        N = self.N
        config = self.config
        q_output = self.q_output
        q_des = self.q_des

#         grasp_location, bend = self.simulate_bends(L)
        grasp_location, x, y, z,w,xo,yo,zo = action
        # print('config size:=', len(config))
        config = np.resize(config, (19, N))
        q_initial = config[0:16,0]
        # q_initial = 
        # q_initial = config[0:16, 0]   ####used to be this

        ### parameters
        nt1 = int((grasp_location) * N)  # number of segments/timesteps along the rod before the bend    ########## +1 may cause nt1 = negative
        if nt1 <= 0:
            nt1 = 1
        elif nt1 >= N-1:
            nt1 = N-2
        t_span1 = np.linspace(0, L * nt1 / N, nt1+1)  # list of segment starting points
        dt = (t_span1[-1] - t_span1[0]) / (N - 1)  # segment length
        # print('nt1:=', nt1)
        nt2 = N - nt1  # number of segments/timesteps along the rod after the bend
        # print('nt2:=', nt2)
        t_span2 = np.linspace(L * (nt1+1) / N, L, nt2)  # list of segment starting points

        ### construct q final point
        # define desired final endpoint for this grasp
#         x, y, z = bend[0], bend[1], bend[2]  # position inputs
#         w, xo, yo, zo = bend[3], bend[4], bend[5], bend[6]  # rotation inputs
        r = R.from_quat([w, xo, yo, zo])
        rot_matrix = r.as_matrix()

        # convert desired endpoint into q representation
        qd_out = np.concatenate(
            (np.concatenate((rot_matrix, np.array([[x], [y], [z]])), axis=1), np.array([[0, 0, 0, 1]])),
            axis=0)  # concatenate position inputs and bottom row to convert to transformation matrix
        qd_flat = np.reshape(qd_out, (16, 1))  # reshape into 16 by 1
        qd_final = [qd_flat[i][0] for i in range(len(qd_flat))]  # convert from np array to list

        ### solve for q and u segment
        con = ({'type': 'eq', 'fun': self.dynamics, 'args': (q_initial, qd_final, nt1, dt)})   ################### !!!!!!!!!!!!!!!!!!! I think the error is we didn't update qu, which is in the first position in Dynamics function
        opt = {'maxiter': 200}
        sol = minimize(self.cost_function, config[:, 0:nt1], args=(nt1, dt, qd_final), method=None, jac=None, hess=None,
                       hessp=None, bounds=None, constraints=con, tol=1e-2, callback=None, options={'disp': True})
        qu_final_before = sol.x.reshape((19, nt1))
        
        ### save full q description
        q_output[:, 0:nt1] = qu_final_before[0:16, :]  # save this segment in full q description

        ### q and u new initial point - from previous endpoint
        q_initial = qu_final_before[0:16, -1]  # initial conditions for next grasp
        u_initial = np.array(
            [[qu_final_before[16, -1]], [qu_final_before[17, -1]], [qu_final_before[18, -1]]])  # initial conditions for next grasp
        u_estimate = u_initial * np.ones((3, nt2))  # reshape

        # after the grasp, let the rod just go "straight" along its length -- only initial condition, no final condition
        estimate = solve_ivp(lambda t, y: self.rod_dynamics(t, y, u_initial), [t_span2[0], t_span2[-1]], q_initial.flatten(), t_eval=t_span2)
        # estimate = solve_ivp(lambda t, y: self.rod_dynamics(t, y, u_initial), [t_span2[0], t_span2[-1]], q_initial.flatten(), t_eval=None)
        qu_final_after = np.vstack((estimate.y, u_estimate))
        q_output[:, nt1:N] = qu_final_after[0:16, :]  # save this segment in full q description
        self.obs = np.array([q_output[3, :], q_output[7, :], q_output[11, :]])  ## be the xyz throught he timeline
        self.config = np.concatenate([qu_final_before.flatten(), qu_final_after.flatten()])   ############################## self.config  = 19, not 16, used to be q_outputconfig

#         reference = np.array([self.q_des[3, :], self.q_des[7, :], self.q_des[11, :]])

        done = False
        ### reward
        if np.mean(np.absolute(self.q_des.flatten() - self.obs.flatten())) < 0.1:
            reward = 100
            done = True
        else:
            reward = -10
        
        if self.step_counter > 5:
            done = True


        return self.obs.flatten(), reward, done, {}  ## observation (8), reward, bool(stop or not), info(dic, can be empty dic)

class Net(TorchModelV2, nn.Module):
    def __init__(self, obs_space, action_space, num_outputs, model_config,
                 name):
        TorchModelV2.__init__(self, obs_space, action_space, num_outputs, model_config, name)
        nn.Module.__init__(self)

        self.size_in = 3
        self.lstm_state_size = 64
        self.grab_location = 1
        self.lstm = nn.LSTM(self.size_in, self.lstm_state_size, batch_first=True)
        self.num_outputs = self.grab_location + 7  ## one grab location + seven (position + translation)

        # Postprocess LSTM output with another hidden layer and compute values.
        self.linear = SlimFC(self.lstm_state_size, self.num_outputs, activation_fn="tanh")
        self.value_branch = SlimFC(self.lstm_state_size, 1, activation_fn=None)
        self._features = None

    def forward(self, inputs, state, seq_lens):
        obs = inputs["obs"]
        batch_size = obs.shape[0]
        inputs = nn.Flatten()(obs)
        #       torch.flatten(inputs)
        inputs = torch.reshape(inputs, (batch_size, 100, 3))
        #       inputs = inputs.view(batch_size, 100, 3)

        # Forward through LSTM.
        output, (h, c) = self.lstm(inputs)
        #         print('self._features size:', self._features.size())

        self._features = output[:, -1, ...]

        output = self.linear(self._features)
        print("!!!!!!!", output.shape)

        return output, state  ## squeeze the output from -1 to 1

    def value_function(self):
        return self.value_branch(self._features).squeeze(1)


class Transformer_Model(TorchModelV2, nn.Module):
    """Generic fully connected network."""

    def __init__(self, obs_space: gym.spaces.Space,
                 action_space: gym.spaces.Space, num_outputs: int,
                 model_config: ModelConfigDict, name: str):
        TorchModelV2.__init__(self, obs_space, action_space, num_outputs,
                              model_config, name)
        nn.Module.__init__(self)

        custom_configs = model_config.get("custom_model_config")
        self._sensor_seq_len = custom_configs.get("sensor_seq_len", 10)

        activation = model_config.get("fcnet_activation", "tanh")

        encoder_layer = nn.TransformerEncoderLayer(d_model=3, nhead=3, batch_first=True, dim_feedforward=128)
        self._transformer_encoder = nn.TransformerEncoder(encoder_layer, num_layers=2)

        self._all_fc1 = SlimFC(in_size=3,
                               out_size=64,
                               initializer=normc_initializer(1.0),
                               activation_fn=activation)

        self._all_fc2 = SlimFC(in_size=64,
                               out_size=16,
                               initializer=normc_initializer(1.0),
                               activation_fn=activation)

        self._action_layer = SlimFC(in_size=16,
                                    out_size=num_outputs,
                                    initializer=normc_initializer(0.01),
                                    activation_fn=None)
        self._value_layer = SlimFC(in_size=16,
                                   out_size=1,
                                   initializer=normc_initializer(0.01),
                                   activation_fn=None)

        self._features = None

    @override(TorchModelV2)
    def forward(self, input_dict: Dict[str, TensorType],
                state: List[TensorType],
                seq_lens: TensorType) -> (TensorType, List[TensorType]):
        obs = input_dict["obs"].float()
        batch_size = obs.shape[0]

        input_sensor = torch.reshape(obs, (batch_size, 100, 3))  ###used to be 100
        sensor_out = self._transformer_encoder(input_sensor)[:, -1, ...]

        output = self._all_fc1(sensor_out)
        self._features = self._all_fc2(output)
        action_out = self._action_layer(self._features)

        return action_out, state

    @override(TorchModelV2)
    def value_function(self) -> TensorType:
        assert self._features is not None, "must call forward() first"
        return self._value_layer(self._features).squeeze(1)


#         assert self._features is not None, "must call forward() first"
#         return torch.reshape(self.value_branch(self._features), [-1])


ModelCatalog.register_custom_model("my_model", Transformer_Model)  # Net LSTM
model = {"custom_model": "my_model", "fcnet_activation": "tanh", "vf_share_layers": True,
         "custom_model_config": {"cam_seq_len": 10, "sensor_seq_len": 30, "cam_dim": (36, 36)}}
# model = {"custom_model": "my_model", "fcnet_activation": "tanh", "vf_share_layers": True, "custom_model_config": {}}
# model = {"fcnet_hiddens": [300, 100], "fcnet_activation": "tanh", "vf_share_layers": True}

# In[6]:


#######################################################
##### DDPG config
#######################################################

config = ppo.DEFAULT_CONFIG.copy()
train_batch_size = 60  ## batch size will be tuned later

config_ppo = {
    "num_workers":5,
    "num_gpus": 4,
    # "critic_lr": grid_search([1e-2, 1e-4, 1e-6]),  ## try different lr
    # "actor_lr": grid_search([1e-2, 1e-4, 1e-6]),
    "monitor": True,
    "model": model,
    "train_batch_size": train_batch_size,
    "clip_actions": True,
    "normalize_actions": True,
    "sgd_minibatch_size": 40,
    "batch_mode": "complete_episodes",  ## or "truncate_episodes"
    "no_done_at_end": True,
    "shuffle_buffer_size": 60,  ## need to be tuned
    "framework": "torch",
    "env": Rod,  ## need to be import from custom

}
config.update(config_ppo)


def stopper(trial_num, result):
    ### determine when the training will stop
    # (when mean reward larger than 50 or episode larger than 1500 will stop train)
    return result["episode_reward_mean"] > 100 and result["episode_len_mean"] > 200


tune.run("PPO",  ## used to be DDPG
        config=config,
        local_dir='/home/bowen/Documents/Rod_manipulation/Flexible-Tool/logdir',
        ## need to be set path when we trained on beast
        checkpoint_freq=25,
        verbose=2,
        checkpoint_at_end=True,
        #  stop=stopper,
        stop={"episode_reward_mean": 50},
        progress_reporter= CLIReporter(max_progress_rows=10) ## need to be set later
        )
