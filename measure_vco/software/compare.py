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

def lighten_color(color, amount=0.5):
    import matplotlib.colors as mc
    import colorsys
    try:
        c = mc.cnames[color]
    except:
        c = color
    c = colorsys.rgb_to_hls(*mc.to_rgb(c))
    return colorsys.hls_to_rgb(c[0], 1 - amount * (1 - c[1]), c[2])

colors = ['tab:blue', 'tab:orange', 'tab:green', 'tab:red', 'tab:purple', 'tab:brown', 'tab:pink', 'tab:gray', 'tab:olive', 'tab:cyan']

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
def fancy_plot2(xs1, ys1, xs2, ys2, base_color, xlabel, y1label, y2label, fig=None, ax1=None, ax2=None):
	x_perc = 0.1
	y_perc = 0.1
	x_extra = 0.03
	y_extra = 0

	if fig is None and ax1 is None and ax2 is None:
		fig, ax1 = plt.subplots()
		setup = True
	else:
		setup = False
	
	color = base_color

	if setup:
		ax1.xaxis.set_major_locator(matplotlib.ticker.MultipleLocator(600))
		ax1.axhline(0, ls='--', lw=1, color=color)

		@matplotlib.ticker.FuncFormatter
		def major_formatter(x, pos):
			tone = int(round(x / 100))
			cents = x - tone*100

			octave = tone // 12
			tonestr = ['C','C#','D','D#','E','F','F#','G','G#','A','A#','B'][tone % 12] + str(octave)

			centstr = ""
			if abs(cents) > 1:
				centstr = "%+dc" % (int(cents))
			return tonestr + centstr

		ax1.xaxis.set_major_formatter(major_formatter)

		xs = xs1+xs2
		ax1.set_xlim( expand_range(percentile(xs,0+x_perc), percentile(xs,1-x_perc), x_perc+x_extra, x_perc+x_extra) )
		ax1.set_ylim( expand_range(percentile(ys1,0+y_perc), percentile(ys1,1-y_perc), y_perc+y_extra, y_perc+y_extra) )

		ax1.set_xlabel(xlabel)
		ax1.set_ylabel(y1label, color=color)
		ax1.tick_params(axis='y', labelcolor=color)
	
	ax1.plot(xs1, ys1, color=color)

	color = lighten_color(base_color, 0.5)
	if ax2 is None:
		ax2 = ax1.twinx()  # instantiate a second axes that shares the same x-axis
		ax2.axhline(0.5, ls='--', lw=1, color=color)
		ax2.set_ylim( expand_range(percentile(ys2,0+y_perc), percentile(ys2,1-y_perc), y_perc+y_extra, y_perc+y_extra) )

		ax2.set_ylabel(y2label, color=color)  # we already handled the x-label with ax1
		ax2.tick_params(axis='y', labelcolor=color)
		
	ax2.plot(xs2, ys2, color=color)

	fig.tight_layout()  # otherwise the right y-label is slightly clipped

	return fig,ax1,ax2

fig,ax1,ax2=None,None,None

fit = None

cents_a4 = log(440,2)*1200
cents_c0 = cents_a4 - 4*1200 - 1200 + 300

for filename,i in zip(sys.argv[1:], range(999999)):
	base_color = colors[i%len(colors)]
	# read the input file
	print()
	print()
	print()
	print(filename)
	print()
	print()
	print()
	data = read_data(open(filename,'r'))
	data=sorted(data)

	# linearize it (i.e. turn frequency into logarithmic units, aka cents)
	cents = [(d[0], log(d[1],2)*1200) for d in data]
	cents = wiggle(cents, 0.1, 0.0)

	pwm = [(d[0], d[2]) for d in data]
	pwm = wiggle(pwm, 0.1, 0.0)
	
	if fit is None: # fit the v/oct gain and the offset only once.
		fit = fit_line(cents, 100, 100)
	
	# find the index in cents that is closest to a4
	l = None
	count = 0
	for c, i in zip(cents, range(len(cents))):
		if c[1] > cents_a4:
			count += 1 # try to be robust against outliers
			if count >= 5:
				l = i-5
				break

	print("a4 is at %d/%d" % (l, len(cents)))
	
	# find the offset (which can be changed by the tune poti), taking the v/oct gain as given
	avg, avg_n = 0,0
	for probe in range( max(0, l-10), min(len(cents), l+10) ):
		avg += -fit[0] * cents[probe][0] + cents[probe][1]
		avg_n += 1
	fit[1] = avg/avg_n
	
	print(fit)
	print("%6.2f code points = %6.4f Volt per octave" % (1200 / fit[0], 1200 / fit[0] / 2048))
	print("starting at %7.2f Hz = %+6.0fc distance from a4@440Hz" % ( 2**(fit[1]/1200), fit[1] - log(440,2)*1200))
	print("ending   at %7.2f Hz = %+6.0fc distance from a4@440Hz" % ( 2**(4096*fit[0]/1200 + fit[1]/1200), 4096*fit[0]+fit[1] - log(440,2)*1200))

	pwm = [ (fit[0]*p[0] + fit[1] - cents_c0, p[1]) for p in pwm]
	cent_deviation = [ (fit[0]*c[0] + fit[1] - cents_c0, c[1] - (fit[0]*c[0] + fit[1])) for c in cents]

	fig, ax1, ax2 = fancy_plot2(axis(cent_deviation,0), axis(cent_deviation,1), axis(pwm, 0), axis(pwm,1), base_color, "target tone [cent]", "deviation [cent]", "pulse width", fig, ax1, ax2)

plt.show()
