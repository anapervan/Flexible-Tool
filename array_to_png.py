### plot q's, save as two png files
import pandas as pd
import numpy as np
from numpy import load
import matplotlib.pyplot as plt

### import data from csv (written in data_processing)
q_array = load('q_array.npy')
a_array = load('a_array.npy')

### find number of trials
data_trials = int(a_array.shape[0])
t_steps = 100

### plot each trial
for i in range(data_trials):
    x = [q_array[i][3][j] for j in range(t_steps)]
    y = [q_array[i][7][j] for j in range(t_steps)]
    z = [q_array[i][11][j] for j in range(t_steps)]

    ax0=plt.axes()
    ax0.plot(x, y, color='black', linewidth=5)
    ax0.set_xlim([-1,1.1])
    ax0.set_ylim([-1,1])
    ax0.get_xaxis().set_visible(False)
    ax0.get_yaxis().set_visible(False)
    filename = 'png_data/' + str(i) + '_xy.png'
    plt.savefig(filename)

    ax1=plt.axes()
    ax1.plot(x, z, color='black', linewidth=5)
    ax1.set_xlim([-1,1.1])
    ax1.set_ylim([-1,1])
    ax1.get_xaxis().set_visible(False)
    ax1.get_yaxis().set_visible(False)
    filename = 'png_data/' + str(i) + '_xz.png'
    plt.savefig(filename)
