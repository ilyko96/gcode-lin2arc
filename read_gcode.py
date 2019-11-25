import numpy as np
import re


class GCodeReader:
	""" Takes path to gcode-file and creates the list of commands """
	@staticmethod
	def parse_gcode(filePath):
		commands = []
		with open(filePath, 'r') as file:
			line = file.readline()
			cnt = 1
			while line:
				line_parsed = GCodeReader.parse_line(line, cnt)
				if line_parsed is not None:
					commands.append(line_parsed)
				line = file.readline()
				cnt += 1

			# print(commands)
		return commands

	""" Takes the line of gcode and parses it into command + arguments """
	@staticmethod
	def parse_line(line_cnt, ind, skip_comments=True):
		# Preprocess line first

		# Remove leading spaces
		# line = re.sub('^\s+', '', line)
		line = line_cnt.strip()

		# Skip if it is empty:
		if len(line) == 0:
			return None

		# Check if it is a comment line
		if re.match('^\;', line):
			return None if skip_comments else {'line': ind, 'type': 'comment', 'content': line_cnt}

		# Omit the leading number of the line if it exists
		line = re.sub('^\d+\s', '', line)

		# Parse G- or M-command
		cmd = re.search('^(G|M)\d+(\.\d+)*\s*', line)
		if cmd is None:
			return {'line': ind, 'type': 'error', 'error': 'Command is not recognized', 'content': line_cnt}
		cmd = cmd.group()
		line = line[len(cmd):len(line)]
		cmd = cmd.strip()

		# Check for inline comment in tail
		comment = re.search('\;.*$', line)
		if comment is not None:
			line = line[0:comment.span()[0]]
			comment = comment.group()
			comment = comment[1:len(comment)].strip()

		# Get list of arguments
		args = re.split('\s+', line)

		arguments = {}
		# Parse each argument
		for arg in args:
			if len(arg) == 0:
				continue
			# Change all commas to periods
			arg = re.sub('\,', '.', arg)
			# Check argument validity
			if not re.match('^[a-zA-Z](\-*\d+(\.\d+)*)*', arg):
				return {'line': ind, 'type': 'error', 'error': 'Argument \'{0}\' is not recognized'.format(arg),
				        'command': cmd, 'comment': comment, 'content': line_cnt}
			# Add to list
			arguments[arg[0]] = arg[1:len(arg)]

		# Return final dict
		return {'line': ind, 'type': 'command', 'command': cmd, 'comment': comment, 'arguments': arguments}