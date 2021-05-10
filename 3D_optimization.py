#!/usr/bin/env python
# coding: utf-8

# In[11]:


from gekko import GEKKO
import numpy as np
import matplotlib.pyplot as plt
import math
import sympy as sym
from sympy import symbols, Function, Eq, solve, Matrix
get_ipython().run_line_magic('matplotlib', 'inline')


# In[ ]:





# In[ ]:





# In[ ]:





# In[64]:


m = GEKKO() # initialize gekko
nt = 101
m.time = np.linspace(0,2,nt)
b = 0.75
# Variables (initial values for mu), need to figure out what's the initial values for mus
mu1 = m.Var(value=0.1, lb = 0, ub = 1) 
mu2 = m.Var(value=0.1, lb = 0, ub = 1) 
mu3 = m.Var(value=0.1, lb = 0, ub = 1) 
mu4 = m.Var(value = 0.1, lb = 0, ub = 1)
mu5 = m.Var(value=0.1, lb = 0, ub = 1) 
mu6 = m.Var(value = 0.1, lb = 0, ub = 1)

u1 = m.Var(value=0)
u2 = m.Var(value=0) 
u3 = m.Var(value=0) 

# q1 = m.Var(value=0, lb = 0, ub = b) # x
# q2 = m.Var(value=0, lb = 0, ub = b) # y
# q3 = m.Var(value=0, lb = 0, ub = b) # z
# q4 = m.Var(value = 0, lb = 0, ub = b) # theta1
# q5 = m.Var(value=0, lb = 0, ub = b)  # theta2
# q6 = m.Var(value = 0, lb = 0, ub = b) # theta3
q11 = m.Var(value=0, lb = 0, ub = b)
q12 = m.Var(value=0, lb = 0, ub = b)
q13 = m.Var(value=0, lb = 0, ub = b)
q14 = m.Var(value=0, lb = 0, ub = b)
q21 = m.Var(value=0, lb = 0, ub = b)
q22 = m.Var(value=0, lb = 0, ub = b)
q23 = m.Var(value=0, lb = 0, ub = b)
q24 = m.Var(value=0, lb = 0, ub = b)
q31 = m.Var(value=0, lb = 0, ub = b)
q32 = m.Var(value=0, lb = 0, ub = b)
q33 = m.Var(value=0, lb = 0, ub = b)
q34 = m.Var(value=0, lb = 0, ub = b)
q41 = m.Var(value=0, lb = 0, ub = b)
q42 = m.Var(value=0, lb = 0, ub = b)
q43 = m.Var(value=0, lb = 0, ub = b)
q44 = m.Var(value=0, lb = 0, ub = b)

x1 = [[0, 0, 0, 0], 
    [0, 0, -1, 0],
    [0, 1, 0, 0],
     [0, 0, 0, 0]]

x2 = [[0, 0, 1, 0], 
    [0, 0, 0, 0],
    [-1, 0, 0, 0],
     [0, 0, 0, 0]]

x3 = [[0, -1, 0, 0], 
    [1, 0, 0, 0],
    [0, 1, 0, 0],
     [0, 0, 0, 0]]

x4 = [[0, 0, 0, 1], 
    [0, 0, 0, 0],
    [0, 1, 0, 0],
     [0, 0, 0, 0]]

x5 = [[0, 0, 0, 0], 
    [0, 0, 0, 1],
    [0, 1, 0, 0],
     [0, 0, 0, 0]]

x6 = [[0, 0, 0, 0], 
    [0, 0, 0, 0],
    [0, 0, 0, 1],
     [0, 0, 0, 0]]


# In[65]:


# variable array dimension
n = 4 # rows
p = 4 # columns
# create array
q = m.Array(m.Var,(n,p))
for i in range(n):
    for j in range (n):
            q[i,j].value = 2.0

qminimize = m.Var(value = 0)


# In[66]:


X1 = m.Array(m.Const, (n,p))
X1[1, 2] = -1
X1[2, 1] = 1
display(X1)
X2 = m.Array(m.Const, (n,p))
X2[2, 0] = -1
X2[0, 2] = 1
display(X2)
X3 = m.Array(m.Const, (n,p))
X3[0, 1] = -1
X3[1, 0] = 1
display(X3)
X4 = m.Array(m.Const, (n,p))
X4[0, 3] = 1
display(X4)


# In[ ]:





# In[67]:


# Equations
c1 = 1.0
c2 = 1.0
c3 = 1.0
u1 = c1**(-1)*mu1
u2 = c2**(-1)*mu2
u3 = c3**(-1)*mu3
m.Equation(mu1.dt()== u3*mu2 - u2*mu3)
m.Equation(mu2.dt()== mu6 +u1*mu3 - u3*mu1)
m.Equation(mu3.dt()== -mu5 + u2*mu1 - u1*mu2)
m.Equation(mu4.dt()== u3*mu5 - u2*mu6)
m.Equation(mu5.dt()== u1*mu6 - u3*mu4)
m.Equation(mu6.dt()== u2*mu4 - u1*mu5)


m.Equation(q11.dt() == u3*q[0,1] - u2*q[0,2])
m.Equation(q12.dt() == -u3*q[0,0] + u1*q[0,2])
m.Equation(q13.dt() == u2*q[0,0] - u1*q[0,1])
m.Equation(q14.dt() == q[0,0])

m.Equation(q21.dt() == u3*q[1,1] - u2*q[1,2])
m.Equation(q22.dt() == -u3*q[1,0] + u1*q[1,2])
m.Equation(q23.dt() == u2*q[1,0] - u1*q[1,1])
m.Equation(q24.dt() == q[1,0])

m.Equation(q31.dt() == u3*q[2,1] - u2*q[2,2])
m.Equation(q32.dt() == -u3*q[2,0] + u1*q[2,2])
m.Equation(q33.dt() == u2*q[2,0] - u1*q[2,1])
m.Equation(q34.dt() == q[2,0])

m.Equation(q41.dt() == u3*q[3,1] - u2*q[3,2])
m.Equation(q42.dt() == -u3*q[3,0] + u1*q[3,2])
m.Equation(q43.dt() == u2*q[3,0] - u1*q[3,1])
m.Equation(q44.dt() == q[3,0])


m.Equation(qminimize.dt()== 0.5*(c1*u1**2 + c2*u2**2 + c3*u3**2))




# In[68]:


# set final time will be 1
p = np.zeros(nt) # mark final time point
p[-1] = 1.0
final = m.Param(value=p)

m.Obj(qminimize*final)




m.options.IMODE = 6
m.solve(disp=False)


# In[ ]:





# In[ ]:





# In[8]:


# from scipy.integrate import solve_ivp
# import numpy as np


# In[9]:


# c1 = 0.5
# c2 = 0.5
# c3 = 0.5
# t , mu1, mu2, mu3, mu4, mu5, mu6 = symbols(r't, mu1, mu2, mu3, mu4, mu5, mu6')
# # mu1 = Function(r'\mu1')(t)
# # mu2 = Function(r'\mu2')(t)
# # mu3 = Function(r'\mu3')(t)
# # mu4 = Function(r'\mu4')(t)
# # mu5 = Function(r'\mu5')(t)
# # mu6 = Function(r'\mu6')(t)
# u1 = c1**(-1)*mu1
# u2 = c2**(-1)*mu2
# u3 = c3**(-1)*mu3
# v = np.array([mu1, mu2, mu3, mu4, mu5, mu6, u1, u2, u3])
# display(v.shape)
# def rhs(s, v): 
#     return [v[8]*v[1] - v[7]*v[2], 
#             v[5] + v[6]*v[2]- v[8]*v[0],
#             -v[4] + v[7]*v[0] - v[6]*v[1],
#              v[8]*v[4] - v[7]*v[5],
#              v[6]*v[5] - v[8]*v[3],
#              v[7]*v[3] - v[6]*v[4]]
# res = solve_ivp(rhs, (0, 2), [0.1, 0.1, 0.1,0.1,0.1,0.1, 0.1, 0.1, 0.1])


# In[ ]:





# In[ ]:




