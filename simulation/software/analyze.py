#!/usr/bin/env python3

import sys
import math

def quantile(data, p):
	s = sorted(data)
	i = int(len(s)*p)
	i = min(i,len(s)-1)
	i = max(0,i)
	return s[i]

data=[]
for line in sys.stdin:
	data.append([float(e) for e in line.split()])


threshold = (quantile([ d[5] for d in data], 0.005) + quantile([ d[5] for d in data], 0.995))/2

bindata = [d[5] > threshold for d in data]
t = [d[0] for d in data]

state = 'waiting'

periods = []

for i in range(len(bindata)):
	val = bindata[i]
	if state == 'waiting':
		if val:
			rise_start = t[i]
			state = 'rising'
	elif state == 'rising':
		if not val:
			fall_start = t[i]
			state = 'falling'
	elif state == 'falling':
		if val:
			periods.append((fall_start-rise_start, t[i]-fall_start))
			rise_start = t[i]
			state = 'rising'

periods = periods[2:] # throw away the first few

freq = len(periods) / sum([p[0]+p[1] for p in periods])
hi = sum([p[0] for p in periods])
lo = sum([p[1] for p in periods])
#print("freq: %6.2f, cents: %7.1f, period: %2.2f%%" % (freq, math.log(freq,2)*1200, 100*hi/(hi+lo)))
print("%f %f %f" % (freq, math.log(freq,2)*1200, 100*hi/(hi+lo)))
