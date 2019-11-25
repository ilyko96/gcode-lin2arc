import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

from read_gcode import GCodeReader
filePath = 'circ.gcode'
commands = GCodeReader.parse_gcode(filePath)

xs, ys, zs = [[0]], [[0]], [[0]]
cursor = [0, 0, 0]
relative = False
for command in commands:
	print(command)
	if command['type'] in 'error':
		print('Error in command detected: {0}'.format(command))
		continue

	if command['type'] in 'command':
		cmd = command['command']
		args = command['arguments']

		# Auto-home
		if cmd in 'G28':
			if len(args) == 0:
				cursor = [0, 0, 0]
				continue
			if 'X' in args: cursor[0] = 0
			if 'Y' in args: cursor[1] = 0
			if 'Z' in args: cursor[2] = 0

		# Absolute mode
		if cmd in 'G90':
			relative = False

		# Relative mode
		if cmd in 'G91':
			relative = True

		# Safely parses string to float
		def safeParseValue(s):
			v = 0
			try: v = float(s)
			except:
				print('Error in parsing numerical argument value: \'{0}\''.format(s))
				return None
			return v
		# Safely parses args for 'X', 'Y', 'Z' and returns point
		def safeParseArgs(args):
			pt = [None, None, None]
			if 'X' in args: pt[0] = safeParseValue(args['X'])
			if 'Y' in args: pt[1] = safeParseValue(args['Y'])
			if 'Z' in args: pt[2] = safeParseValue(args['Z'])
			return pt
		# Updates cursor values treating pt as relative shifts
		def updateCursorRelative(pt):
			cursor[0] = cursor[0] if pt[0] is None else cursor[0] + pt[0]
			cursor[1] = cursor[1] if pt[1] is None else cursor[1] + pt[1]
			cursor[2] = cursor[2] if pt[2] is None else cursor[2] + pt[2]
		# Updates cursor values treating pt as absolute coordinates
		def updateCursorAbsolute(pt):
			cursor[0] = cursor[0] if pt[0] is None else pt[0]
			cursor[1] = cursor[1] if pt[1] is None else pt[1]
			cursor[2] = cursor[2] if pt[2] is None else pt[2]
		# Updates cursor value according to current mode (Relative/Absolute)
		def updateCursor(pt):
			if not np.any(pt): return False
			if relative: updateCursorRelative(pt)
			else: updateCursorAbsolute(pt)
			return True

		# Linear movement without extrusion
		if cmd in 'G0':
			cursor_prev = cursor[:]
			pt = safeParseArgs(args)
			if updateCursor(pt):
				if len(xs[-1]) == 1:
					xs[-1][0] = cursor[0]
					ys[-1][0] = cursor[1]
					zs[-1][0] = cursor[2]
				else:
					xs.append([cursor[0]])
					ys.append([cursor[1]])
					zs.append([cursor[2]])

		# Linear movement
		if cmd in 'G1':
			pt = safeParseArgs(args)
			if updateCursor(pt):
				xs[-1].append(cursor[0])
				ys[-1].append(cursor[1])
				zs[-1].append(cursor[2])
	pass

fig = plt.figure()
ax = fig.gca(projection='3d')
theta = np.linspace(-6 * np.pi, 6 * np.pi, 100)
z = np.linspace(-3, 3, 100)
r = z**2 + 1
x = r * np.sin(theta)
y = r * np.cos(theta)
for i in range(len(xs)):
	ax.plot(xs[i], ys[i], zs[i], label='move #{0}'.format(i))
ax.legend()

plt.show()

