#!/usr/bin/env python3

import sys
import math

i = int(sys.argv[1])

def quantile(data, p):
	s = sorted(data)
	i = int(len(s)*p)
	i = min(i,len(s)-1)
	i = max(0,i)
	return s[i]

data=[]
for line in sys.stdin:
	data.append([float(e) for e in line.split()])

print( quantile([d[i] for d in data], 0.5) )
