import sys

# read a data file, try to autodetect the file format and skip broken lines
# MCU_CLOCK: the clock of the stm32 mcu. this is required in order to
# correctly map the input to actual seconds / frequencies
def read_data(fileobj, MCU_CLOCK=78000000):
	n_entries = 0
	n_good_lines = 0

	data = []

	for line in fileobj:
		entries = line.split()

		if len(entries) != n_entries:
			if n_good_lines > 10:
				# we're already locked. just ignore this line
				print("ignoring line '%s'" % line.rstrip(), file=sys.stderr)
				continue
			else:
				# we aren't locked yet. reset the counters
				n_good_lines = 0
				n_entries = len(entries)
				print("resetting due to line '%s'" % line.rstrip(), file=sys.stderr)
		else:
			n_good_lines += 1
			
		
		if len(entries) >= 4 and len(entries) % 2 == 0:
			entries = [int(e) for e in entries]

			codepoint = entries[0]
			divider =   entries[1]

			# if we've got enough periods, ignore the first period because it may be noisy
			if len(entries) >= 8:
				offset = 4
			else:
				offset = 2

			n_meas = len(entries[offset:])/2
			hi = sum(entries[offset::2])
			lo = sum(entries[offset+1::2])

			freq = MCU_CLOCK / divider / (hi+lo) * n_meas
			ratio = hi / (hi+lo)

			data += [(codepoint, freq, ratio)]
		else:
			print("line '%s' has unknown format" % line.rstrip(), file=sys.stderr)
	
	return data

