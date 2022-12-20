import sys
dir0 = 'C:/Users/u0102306/PycharmProjects/nlreg1d'  # adjust this to the location on your computer
if dir0 not in sys.path:
    sys.path.insert(0, dir0)

import nlreg1d
print('ok')

import os
import numpy as np
from matplotlib import pyplot as plt
import nlreg1d as nl

# set parameters:
np.random.seed(123456789)
niter = 10      # max iterations for SRSF registration
save = True   # save figure as PDF?
parametric = True  # parametric or nonparametric inference
nperm = 1000   # number of permutations for SnPM ("Fmax") inference



# load and register data:
dataset = nl.data.SimulatedA()
y = dataset.dv
J = (dataset.group==0).sum()     # number of observations in first group
yr,wf = nl.register_srsf(y, MaxItr=niter)
wlist = nl.Warp1DList( wf )
d = wlist.get_displacement_field()

# plot:
plt.close('all')
colors = '0.0', (0.8,0.1,0.1)
xlabel = 'Time  (%)'
ylim = [ (0,100), (0,100), (-0.5, 0.5), (-12, 13), (0, 80), (-12,13), (-6,5) ]
alpha_x = [70, 70, 70, 70]
leg_loc = [(0.80, 0.92), (0.80, 0.92), (0.99, 0.29)]
nl.plot.plot_multipanel(y, yr, d, J, colors, parametric, ylim, alpha_x, paired=False, permutations=nperm, dvlabel='shoulder rotation  (°)', group_labels=['TD mean', 'DCP mean'], xlabel=xlabel, leg_loc=leg_loc)
plt.show()


import spm1d
# spmi = spm1d.stats.ttest_paired(y[J:], y[:J]).inference(0.05)
spmi = spm1d.stats.ttest2(y[J:], y[:J]).inference(0.05/3)
endpoints = [c.endpoints for c in spmi.clusters]
print(spmi)
print(endpoints)

spmi2 = spm1d.stats.ttest2(yr[J:], yr[:J]).inference(0.05/3)
endpoints2 = [c.endpoints for c in spmi2.clusters]
print(spmi2)
print(endpoints2)

dc = d[:,1:-1]  # cropped
spmi3 = spm1d.stats.ttest2(dc[J:], dc[:J]).inference(0.05/3)
#spmi = spm1d.stats.ttest2(d[J:], d[:J]).inference(0.05)
endpoints3 = [c.endpoints for c in spmi3.clusters]
print(spmi3)
print(endpoints3)