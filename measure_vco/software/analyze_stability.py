#!/usr/bin/env python3

import numpy as np

import sys
from math import *
import matplotlib.pyplot as plt
import matplotlib
import random
from read_data import read_data

# returns all entries up to (excluding) the first non-unique codepoint
def get_unique(data):
	cps = set()
	result = []
	for d in data:
		if d[0] in cps:
			return result
		else:
			result += [d]
			cps.add(d[0])
	return result

# derives data. data must be unique and in the format [ (x,y), (x,y), ... ]
# begin, end specify the range to derive, and step is the minimum distance for the central difference.
def derive(data, begin, end, step):
	data = sorted(data)
	result = []

	i,j = 0,0

	for x in range(begin,end):
		while j+1 < len(data) and data[j][0] < x + step:
			j += 1
		while i+1 < len(data) and data[i+1][0] < x - step:
			i += 1

		if data[i][0] != data[j][0]:
			deriv = (data[j][1] - data[i][1]) / (data[j][0] - data[i][0])
		else:
			deriv = 0
		
		result += [deriv]
	return result

# extracts all ax-th elements in a list of tuples (`data`)
def axis(data, ax):
	return [d[ax] for d in data]

# interpolates (or extrapolates) the y at x, under the assumption that y(x1)=y1 and y(x2)=y2
def interpolate(x, x1,y1, x2,y2):
	alpha = (x-x1) / (x2-x1)
	# alpha = 0 for x==x1 and 1 for x==x2
	return alpha * y2 + (1-alpha)*y1

def wiggle_one(codepoint, amount):
	hi = codepoint // 64
	lo = codepoint % 64

	if hi % 2 == 0:
		return 64 * hi + (1+amount)*lo
	else:
		return 64 * (hi-1) + (1+amount)*64 + (1-amount)*lo

# compensate the DAC inaccuracy. 64 is currently hardcoded and works for my dac.
def wiggle(data, amount_lo, amount_hi):
	return [ (wiggle_one(codepoint, interpolate(codepoint, 0, amount_lo, 4096, amount_hi)), *rest) for codepoint, *rest in data ]

# robust line fit on data := [(x,y), (x,y), ...]. outliers are classified using threshold. performs n RANSAC-iterations
def fit_line(data, threshold, n):
	best_inliers = []

	for i in range(n):
		inliers = []
		x1 = random.randrange(0, len(data))
		x2 = random.randrange(0, len(data))
		if data[x1][0] == data[x2][0]: continue

		for d in data:
			expected = interpolate(d[0], data[x1][0], data[x1][1], data[x2][0], data[x2][1])
			actual = d[1]
			if abs(expected-actual) <= threshold:
				inliers += [d]

		if len(best_inliers) < len(inliers):
			best_inliers = inliers
	
	return np.polyfit(axis(best_inliers, 0), axis(best_inliers, 1), 1)


def percentile(values, perc):
	return sorted(values)[int(perc*(len(values)-1))]

def expand_range(lo, hi, lo_amount, hi_amount):
	return (lo - lo_amount*(hi-lo), hi + hi_amount*(hi-lo))

# plots using matplotlib, but properly sets the x/y ranges so that outliers aren't shown
def fancy_plot(xs, ys):
	x_perc = 0.1
	y_perc = 0.1
	x_extra = 0
	y_extra = 0

	plt.plot(xs,ys)
	plt.xlim( expand_range(percentile(xs,0+x_perc), percentile(xs,1-x_perc), x_perc+x_extra, x_perc+x_extra) )
	plt.ylim( expand_range(percentile(ys,0+y_perc), percentile(ys,1-y_perc), y_perc+y_extra, y_perc+y_extra) )
	plt.show()

# plots using matplotlib, but properly sets the x/y ranges so that outliers aren't shown
def fancy_plot2(xs1, ys1, xs2, ys2, xlabel, y1label, y2label, fit=None, fig=None, ax1=None, ax2=None):
	x_perc = 0.1
	y_perc = 0.1
	x_extra = 0.03
	y_extra = 0
	
	if fig is None and ax1 is None and ax2 is None:
		fig, ax1 = plt.subplots()
		setup = True
	else:
		setup = False
	
	color = 'tab:blue'

	if setup:
		ax1.xaxis.set_major_locator(matplotlib.ticker.MultipleLocator(512))
		ax1.axhline(0, ls='--', lw=1, color=color)


		xs = xs1+xs2
		ax1.set_xlim( expand_range(percentile(xs,0+x_perc), percentile(xs,1-x_perc), x_perc+x_extra, x_perc+x_extra) )
		ax1.set_ylim( expand_range(percentile(ys1,0+y_perc), percentile(ys1,1-y_perc), y_perc+y_extra, y_perc+y_extra) )

		ax1.set_xlabel(xlabel)
		ax1.set_ylabel(y1label, color=color)
		ax1.tick_params(axis='y', labelcolor=color)

		freq0 = 2**(fit[1]/1200)
		firstfreq = 10*ceil(freq0/10)
		firsttick = (log(firstfreq,2) * 1200 - fit[1]) / fit[0]

		new_tick_locations = np.arange(firsttick ,4096,1200/fit[0])

		def tick_function(X):
			V = [ 2**(v*fit[0]/1200 + fit[1]/1200) for v in X ]
			return ["%.0f Hz" % z for z in V]

		ax3 = ax1.twiny()
		ax3.set_xlim(ax1.get_xlim())
		ax3.set_xticks(new_tick_locations)
		ax3.set_xticklabels(tick_function(new_tick_locations))
		ax3.set_xlabel("Frequency")
	else:
		del ax1.lines[1]
	
	ax1.plot(xs1, ys1, color=color)

	color = 'tab:red'
	if ax2 is None:
		ax2 = ax1.twinx()  # instantiate a second axes that shares the same x-axis
		ax2.axhline(0.5, ls='--', lw=1, color=color)
		ax2.set_ylim( expand_range(percentile(ys2,0+y_perc), percentile(ys2,1-y_perc), y_perc+y_extra, y_perc+y_extra) )

		ax2.set_ylabel(y2label, color=color)  # we already handled the x-label with ax1
		ax2.tick_params(axis='y', labelcolor=color)
	else:
		del ax2.lines[1]
		
	ax2.plot(xs2, ys2, color=color)

	fig.tight_layout()  # otherwise the right y-label is slightly clipped

	return fig,ax1,ax2

# read the input file
data = read_data(open(sys.argv[1],'r'))
data=sorted(data)

# linearize it (i.e. turn frequency into logarithmic units, aka cents)
cents = [(d[0], log(d[1],2)*1200) for d in data]
cents = wiggle(cents, 0.1, 0.0)

fit = fit_line(cents, 100, 100)
print(fit)
print("%6.2f code points = %6.4f Volt per octave" % (1200 / fit[0], 1200 / fit[0] / 2048))
print("starting at %7.2f Hz = %+6.0fc distance from a4@440Hz" % ( 2**(fit[1]/1200), fit[1] - log(440,2)*1200))
print("ending   at %7.2f Hz = %+6.0fc distance from a4@440Hz" % ( 2**(4096*fit[0]/1200 + fit[1]/1200), 4096*fit[0]+fit[1] - log(440,2)*1200))

cent_deviation = [ (c[0], c[1] - fit[0]*c[0] - fit[1]) for c in cents]

fancy_plot2(axis(cent_deviation,0), axis(cent_deviation,1), axis(data, 0), axis(data,2), "code point (corrected)", "deviation [cent]", "pulse width")



cents_der = derive(cents, 0, 4096, 16)

