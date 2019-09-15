#!/usr/bin/env python3

# needs cleaned up input files

import numpy as np
import sys

MCU_CLOCK=78000000

import sys
from math import *
import matplotlib.pyplot as plt
import matplotlib
import random

for line in open(sys.argv[1],'r').readlines():
	components = line.split()
	codepoint = int(components[0])
	divider = int(components[1])

	print("codepoint %d, divider %d" % (codepoint,divider))
	data = [int(x)/MCU_CLOCK*divider for x in components[2:]]
	pairs = list(zip(data[0::2], data[1::2]))
	
	freqs = [1/(a+b) for a,b in pairs]
	cents = [ log(f/freqs[0], 2) * 1200 for f in freqs ]
	ratios = [a/(a+b) for a,b in pairs]
	times = [sum([a+b for a,b in pairs[0:i]]) for i in range(len(pairs))]

	plt.plot(times, cents)
	plt.show()
