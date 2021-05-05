#!/usr/bin/env python
# coding: utf-8

# In[1]:


from gekko import GEKKO
import numpy as np
import matplotlib.pyplot as plt
import math
import sympy as sym
from sympy import symbols, Function, Eq, solve, Matrix
get_ipython().run_line_magic('matplotlib', 'inline')


# In[ ]:


# define u and mu as functions
# t, c1, c2,c3 = symbols(r't, c1,c2,c3')
# mu1 = Function(r'\mu1')(t)
# mu2 = Function(r'\mu2')(t)
# mu3 = Function(r'\mu3')(t)
# mu4 = Function(r'\mu4')(t)
# mu5 = Function(r'\mu5')(t)
# mu6 = Function(r'\mu6')(t)
# u1 = Function(r'\u1')(t)
# u2 = Function(r'\u2')(t)
# u3 = Function(r'\u3')(t)

# mu1dot = mu1.diff(t)
# mu2dot = mu2.diff(t)
# mu3dot = mu3.diff(t)
# mu4dot = mu4.diff(t)
# mu5dot = mu5.diff(t)
# mu6dot = mu6.diff(t)


# In[ ]:


# eq1 = Eq(u1 - c1**(-1)*mu1, 0)
# eq2 = Eq(u2 - c2**(-1)*mu2, 0)
# eq3 = Eq(u3 - c3**(-1)*mu3, 0)

# eq4 = Eq(mu1dot - u3*mu3 + u2*mu3, 0)
# eq5 = Eq(mu2dot - mu6 - u1*mu3 + u3*mu1, 0)
# eq6 = Eq(mu3dot + mu5 - u2*mu1 + u1*mu2, 0)
# eq7 = Eq(mu4dot - u3*mu5 + u2*mu6, 0)
# eq8 = Eq(mu5dot - u1*mu6 + u3*mu4, 0)
# eq9 = Eq(mu6dot - u2*mu4 + u1*mu5, 0)

# soln = solve((eq1,eq2,eq3,eq4,eq5,eq6,eq7,eq8,eq9), (u1, u2, u3, mu1, mu2, mu3, mu4, mu5, mu6))
# display(soln)


# In[20]:


m = GEKKO() # initialize gekko
nt = 101
m.time = np.linspace(0,2,nt)
# b = 0.75
# Variables (initial values for mu)
mu1 = m.Var(value=0, lb = 0, ub = 1) 
mu2 = m.Var(value=0, lb = 0, ub = 1) 
mu3 = m.Var(value=0, lb = 0, ub = 1) 
mu4 = m.Var(value = 0, lb = 0, ub = 1)
mu5 = m.Var(value=0, lb = 0, ub = 1) 
mu6 = m.Var(value = 0, lb = 0, ub = 1)
u1 = m.Var(value=0)
u2 = m.Var(value=0) 
u3 = m.Var(value=0) 



# Equations
c1 = 0.5
c2 = 0.5
c3 = 0.5
u1 = c1**(-1)*mu1
u2 = c2**(-1)*mu2
u3 = c3**(-1)*mu3
m.Equation(mu1.dt()== u3*mu2 - u2*mu3)
m.Equation(mu2.dt()== mu6 +u1*mu3 - u3*mu1)
m.Equation(mu3.dt()== -mu5 + u2*mu1 - u1*mu2)
m.Equation(mu4.dt()== u3*mu5 - u2*mu6)
m.Equation(mu5.dt()== u1*mu6 - u3*mu4)
m.Equation(mu6.dt()== u2*mu4 - u1*mu5)
m.options.IMODE = 6
m.solve(disp=False)





# In[21]:


print('Results')
print('u1: ' + str(u1.value))
print('u2: ' + str(u2.value))
print('u3: ' + str(u3.value))
print('mu1: ' + str(mu1.value))

plt.figure(1) # plot results
plt.plot(m.time,mu1.value,'k-',label=r'$mu_1$')
plt.plot(m.time,mu2.value,'b-',label=r'$mu_2$')
plt.plot(m.time,mu3.value,'g-',label=r'$mu_3$')
plt.plot(m.time,mu4.value,'y-',label=r'$mu_4$')
plt.plot(m.time,mu5.value,'r--',label=r'$mu_5$')


# In[12]:


from scipy.integrate import solve_ivp
import numpy as np


# In[22]:


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




