import numpy as np
import re

filePath = 'circ.gcode'

commands = []
with open(filePath, 'r') as file:
	line = file.readline()
	cnt = 1
	while line:
		# Remove leading spaces
		# line = re.sub('^\s+', '', line)
		line = line.strip()

		processLine = True

		# Skip comments
		if len(line) == 0 or line[0] == ';':
			processLine = False

		# Leave only G0/G1 and G90/G91 commands
		if len(line) < 2 or not re.match('^(G0|G1|G90|G91)\s', line):
			processLine = False

		# Process line:
		if processLine:
			# Get G-command
			cmd = re.search('^G\d+', line).group()

			# Arguments for G0/G1 commands
			argsPrefixes = ['E', 'F', 'X', 'Y', 'Z']
			# First parse arguments and store tuples of argument name and parsed value
			args = [(arg, re.search('{0}\d+((\.|\,)\d+)*'.format(arg), line)) for arg in argsPrefixes]
			# Get rid of argument name in value
			args = [(arg[0], re.sub('^\D+', '', arg[1].group()) if arg[1] else None) for arg in args]

			commands.append((cmd, args))

		line = file.readline()
		cnt += 1

	print(commands)