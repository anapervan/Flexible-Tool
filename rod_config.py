import numpy as np
import matplotlib.pyplot as plt


### shape of N, based of 3-4-5 triangle
N = 100                                                     # number of points in function
t = np.linspace(0,1,N)                                      # length along rod from 0 to 1 (unit length)

y1 = [0]*int((4/13)*N)                                      # |
y2 = list((3/5)*t[0:int((5/13)*N)])                         #  \
y3 = [3/13]*int((4/13)*N)                                   #   |
y = y1 + y2 + y3                                            # |\|

z1 = list(t[0:int((4/13)*N)])                               # |
z2 = [t[int((4/13)*N)] - (4/3)*i for i in y2]               #  \
z3 = list(t[0:int((4/13)*N)])                               #   |
z = z1 + z2 + z3                                            # |\|

x = [0]*len(y)                                              # planar in x

q = [x, y, z]


### plot N
ax = plt.figure().add_subplot(projection='3d')
ax.plot(x, y, z)
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')
ax.set_title('q(t)')

plt.show()
