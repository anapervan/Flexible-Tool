#!/usr/bin/env python
# coding: utf-8

# In[ ]:


## solve for the optimal contorl problem (equation 2)


# In[ ]:


get_ipython().system('pip3 install gekko')


# In[5]:


from gekko import GEKKO
import numpy as np
import matplotlib.pyplot as plt
import math
get_ipython().run_line_magic('matplotlib', 'inline')


# In[16]:


m = GEKKO() # initialize gekko
nt = 101
m.time = np.linspace(0,2,nt)
# Variables (initial values for q)
q1 = m.Var(value=0, lb = 0, ub = b) # ub = xend
q2 = m.Var(value=0, lb = 0, ub = b) # ub = yend
q3 = m.Var(value=0, lb = 0, ub = b) # ub = thetaend
q4 = m.Var(value = 0)
u = m.Var(value=0) # not quite sure the boundaries for u, probably there isn't one

# set final time will be 1
p = np.zeros(nt) # mark final time point
p[-1] = 1.0
final = m.Param(value=p)

# Equations
m.Equation(q1.dt()== m.cos(q3))
m.Equation(q2.dt()== m.sin(q3))
m.Equation(q3.dt())== u
m.Equation(q4.dt() == 0.5*u**2)





# In[17]:


m.Obj(q4*final) # Objective function
m.options.IMODE = 6 # optimal control mode
m.solve(disp=False) # solve
# plt.figure(1) # plot results
# plt.plot(m.time,x1.value,'k-',label=r'$x_1$')
# plt.plot(m.time,x2.value,'b-',label=r'$x_2$')
# plt.plot(m.time,u.value,'r--',label=r'$u$')
# plt.legend(loc='best')
# plt.xlabel('Time')
# plt.ylabel('Value')
# plt.show()


# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:




