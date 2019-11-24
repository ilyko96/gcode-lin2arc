import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import sys

from read_gcode import GCodeReader

commands = GCodeReader.parse_gcode('circ.gcode')
for cmd in commands:
	print(cmd)
print(sys.getsizeof(commands))

# fig = plt.figure()
# ax = fig.gca(projection='3d')
# theta = np.linspace(-6 * np.pi, 6 * np.pi, 100)
# z = np.linspace(-3, 3, 100)
# r = z**2 + 1
# x = r * np.sin(theta)
# y = r * np.cos(theta)
# ax.plot(x, y, z, label='parametric curve')
# ax.legend()
#
# plt.show()

