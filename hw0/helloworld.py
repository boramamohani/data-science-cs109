#import notebook
import numpy as np #numerical programming
import scipy as sp #stats functions
import matplotlib as mpl #import matplotlib
mpl.use('Agg')

import matplotlib.cm as cm #colormaps
import matplotlib.pyplot as plt #plotting
import pandas as pd  #handle data as dataframes

#sets up pandas table display
pd.set_option('display.width', 500)
pd.set_option('display.max_columns', 100)
pd.set_option('display.notebook_repr_html', True)


x = np.linspace(0, 10, 30) #array of 30 points from 0 to 10
y = np.sin(x)
z = y + np.random.normal(size=30) * 0.2

plt.plot(x,y, 'o-', label = 'A sine wave')
plt.plot(x, z, '-', label = 'noisy sine')
plt.legend(loc = 'lower right')
plt.xlabel('x axis')
plt.ylabel('y axis')

plt.show()
plt.savefig("./plot.png")
