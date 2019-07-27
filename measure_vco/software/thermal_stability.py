#!/usr/bin/env python3
from read_data import read_data
from collections import defaultdict

import matplotlib
import matplotlib.cm
import matplotlib.pyplot as plt

from math import *
import sys

#colormap = matplotlib.cm.get_cmap("Spectral")
colormap = matplotlib.cm.get_cmap("RdYlBu")

#millivolts_low = -40
#millivolts_high = 90
millivolts_low =  -46.7  # this is the lowest voltage at the expo converter, corresponding to the highest pitch
millivolts_high = +89.4  # this is the highest voltage at the expo converter, corresponding to the lowest pitch

#plt.xkcd(randomness=10,length=400)

# read the input file
data = read_data(open(sys.argv[1],'r'), have_timestamps=True)
data=sorted(data)

target = "freq"
if len(sys.argv) >= 3 and sys.argv[2] == "--ratio":
	target = "ratio"

def group_by_codepoint(data):
	result = defaultdict(lambda : [])

	for timestamp, codepoint, freq, ratio in data:
		result[codepoint] += [(timestamp, freq, ratio)]
	
	return result


grouped = group_by_codepoint(data)
codepoints = sorted(grouped.keys())
#codepoints = [c for c in codepoints if c < 4065]
codepoints = codepoints[::16]

bound = max(abs(millivolts_low), abs(millivolts_high))
colormapper = matplotlib.cm.ScalarMappable(norm=matplotlib.colors.Normalize(-bound,bound), cmap=colormap)

for num,codepoint in enumerate(codepoints):
	if target == "freq":
		row = [(t,f) for t,f,r in grouped[codepoint]]
	else:
		row = [(t,r) for t,f,r in grouped[codepoint]]

	if len(row) <= 0:
		continue

	millivolts = (codepoint / 4096) * millivolts_low + (1 - codepoint / 4096) * millivolts_high
	#color = colormap(0.5 + 0.5 * millivolts / max(abs(millivolts_low), abs(millivolts_high)) )
	#print(colormapper.norm(millivolts) *2 - 1, millivolts / bound)
	color = colormapper.cmap(colormapper.norm(millivolts))
	#print(color)

	f0 = row[100][1]
	#f0 = sum(f for t,f in row) / len(row)


	label = "%d (%5.2f mV)" % (codepoint, millivolts) if (num % int(len(codepoints)/8) == 0) else None

	if target == "freq":
		plotdata = [log(f/f0,2)*1200 for t,f in row]
	else:
		plotdata = [f for t,f in row]
	plt.plot( [t for t,f in row], plotdata, color=color, label=label)


plt.colorbar(colormapper)
plt.legend()
plt.show()
