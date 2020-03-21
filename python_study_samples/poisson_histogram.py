import matplotlib.pyplot as plt
import numpy as np
data = np.random.poisson(lam=10, size=1000)
count, bins_edge, patches = plt.hist(data, bins=100)
plt.grid()
plt.show()
