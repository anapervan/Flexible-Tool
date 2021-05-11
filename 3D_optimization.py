#!/usr/bin/env python
# coding: utf-8

from gekko import GEKKO
import numpy as np
import matplotlib.pyplot as plt
import math
import sympy as sym
from sympy import symbols, Function, Eq, solve, Matrix
get_ipython().run_line_magic('matplotlib', 'inline')


### Initialize model
m = GEKKO()
nt = 101
m.time = np.linspace(0,1,nt)
up_b = 1.0          # upper boundary for q variables


### Parameters
c1 = m.Param(value = 1.0)
c2 = m.Param(value = 1.0)
c3 = m.Param(value = 1.0)


### Variables
# need to figure out what's the initial values for mus
mu1 = m.Var(value = 0.1, lb = 0, ub = 1)
mu2 = m.Var(value = 0.1, lb = 0, ub = 1)
mu3 = m.Var(value = 0.1, lb = 0, ub = 1)
mu4 = m.Var(value = 0.1, lb = 0, ub = 1)
mu5 = m.Var(value = 0.1, lb = 0, ub = 1)
mu6 = m.Var(value = 0.1, lb = 0, ub = 1)

u1 = m.Var(fixed_initial=False)
u2 = m.Var(fixed_initial=False)
u3 = m.Var(fixed_initial=False)

# e = [1,0,0,0, 0,1,0,0, 0,0,1,0, 0,0,0,1] # beginning point of rod - no rotation or translation
# b = [1,0,0,0, 0,1,0,0, 0,0,1,0, 1,0,0,1] # final point (opposite end) configuration of rod
q11 = m.Var(value = 1., lb = 0, ub = up_b)
q12 = m.Var(value = 0., lb = 0, ub = up_b)
q13 = m.Var(value = 0., lb = 0, ub = up_b)
q14 = m.Var(value = 0., lb = 0, ub = up_b)
q21 = m.Var(value = 0., lb = 0, ub = up_b)
q22 = m.Var(value = 1., lb = 0, ub = up_b)
q23 = m.Var(value = 0., lb = 0, ub = up_b)
q24 = m.Var(value = 0., lb = 0, ub = up_b)
q31 = m.Var(value = 0., lb = 0, ub = up_b)
q32 = m.Var(value = 0., lb = 0, ub = up_b)
q33 = m.Var(value = 1., lb = 0, ub = up_b)
q34 = m.Var(value = 0., lb = 0, ub = up_b)
q41 = m.Var(value = 0., lb = 0, ub = up_b)
q42 = m.Var(value = 0., lb = 0, ub = up_b)
q43 = m.Var(value = 0., lb = 0, ub = up_b)
q44 = m.Var(value = 1., lb = 0, ub = up_b)

qminimize = m.Var(value = 0)


### Equations
m.Equation(u1 == c1**(-1)*mu1)
m.Equation(u2 == c2**(-1)*mu2)
m.Equation(u3 == c3**(-1)*mu3)

m.Equation(mu1.dt() == u3*mu2 - u2*mu3)
m.Equation(mu2.dt() == mu6 +u1*mu3 - u3*mu1)
m.Equation(mu3.dt() == -mu5 + u2*mu1 - u1*mu2)
m.Equation(mu4.dt() == u3*mu5 - u2*mu6)
m.Equation(mu5.dt() == u1*mu6 - u3*mu4)
m.Equation(mu6.dt() == u2*mu4 - u1*mu5)

m.Equation(q11.dt() == u3*q12 - u2*q13)
m.Equation(q12.dt() == -u3*q11 + u1*q13)
m.Equation(q13.dt() == u2*q11 - u1*q12)
m.Equation(q14.dt() == q11)

m.Equation(q21.dt() == u3*q22 - u2*q23)
m.Equation(q22.dt() == -u3*q21 + u1*q23)
m.Equation(q23.dt() == u2*q21 - u1*q22)
m.Equation(q24.dt() == q21)

m.Equation(q31.dt() == u3*q32 - u2*q33)
m.Equation(q32.dt() == -u3*q31 + u1*q33)
m.Equation(q33.dt() == u2*q31 - u1*q31)
m.Equation(q34.dt() == q31)

m.Equation(q41.dt() == u3*q42 - u2*q43)
m.Equation(q42.dt() == -u3*q41 + u1*q43)
m.Equation(q43.dt() == u2*q41 - u1*q42)
m.Equation(q44.dt() == q41)

m.Equation(qminimize.dt()== 0.5*(c1*u1**2 + c2*u2**2 + c3*u3**2))


### Objective
m.Obj(qminimize)


### Solve
m.options.IMODE = 6 # 6 = simultaneous (CTL)
m.solve(disp=False)
