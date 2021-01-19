import ngspyce as ns
import matplotlib.pyplot as plt
import math
import numpy as np

ns.source("vcf_plottable.cir")


t_skip_ms = 25
n_periods = 2
freq = 1013.12

def printall(l):
	for x in l: print(x)

def zero_crossings(a):
	return np.where(np.diff(np.array(a)>=0.0))[0]


def calc_attenuation_and_phase(freq, control_current_mA, n_periods = 2, t_skip_ms = 25, debug = False):
	period = 1 / freq

	# set the control current
	printall(ns.cmd("alter i1 %fm" % control_current_mA))

	# set the input frequency
	printall(ns.cmd("let tmp =  @v4[sin]"))
	printall(ns.cmd("let tmp[2] = %f" % freq))
	printall(ns.cmd("alter @v4[sin] = tmp"))

	skip_periods = math.ceil(t_skip_ms / 1000 * freq)
	actual_t_skip_ms = skip_periods / freq * 1000
	t_run_ms = actual_t_skip_ms + n_periods / freq * 1000

	ns.cmd("tran 10u %fm %fm" % (t_run_ms, actual_t_skip_ms))

	signal_in = ns.vector('signal_in')
	signal_out = ns.vector('signal_out')
	time = ns.vector('time') - actual_t_skip_ms/1000

	amplitude_in = np.max(signal_in) - np.min(signal_in)
	amplitude_out = np.max(signal_out) - np.min(signal_out)

	zeros = zero_crossings(signal_out)
	if len(zeros) >= 3:
		pmax = int((zeros[0] + zeros[1]) / 2)
		pmin = int((zeros[1] + zeros[2]) / 2)
		print (pmax, pmin)

		if signal_out[pmax] < signal_out[pmin]:
			pmin, pmax = pmax, pmin
		
		period = ((time[pmax] / period - 1/4) % 1.0) * math.pi * 2
		if period > math.pi:
			period -= 2*math.pi
	else:
		period = np.nan

	attenuation_db = math.log10(amplitude_out / amplitude_in) * 10

	print (attenuation_db, period)

	if debug:
		plt.plot(time, signal_in)
		plt.plot(time, signal_out)
		plt.pause(3)
	
	return attenuation_db, period

#calc_attenuation_and_phase(100, debug=True)


def calc_bode(control_current_mA, freqs):
	attns = []
	phases = []
	for freq in freqs:
		print(freq)
		attn, phase = calc_attenuation_and_phase(freq, control_current_mA)
		attns.append(attn)
		phases.append(phase)
	return attns, phases

def my_logspace(lo, hi, steps = 50):
	return np.logspace(np.log10(lo), np.log10(hi), steps)

freqs = my_logspace(50, 5000, 20)
attns, phases = calc_bode(0.1, freqs)

#plt.xscale('log')
#plt.yscale('log')
#plt.plot(freqs, attns)
#plt.pause(10)

fig, ax1 = plt.subplots()

color = 'tab:red'
ax1.set_xscale('log')
ax1.set_xlabel('freq (Hz)')
ax1.set_ylabel('attenuation (dB)', color=color)
ax1.plot(freqs, attns, color=color)
ax1.tick_params(axis='y', labelcolor=color)

ax2 = ax1.twinx()  # instantiate a second axes that shares the same x-axis

color = 'tab:blue'
ax2.set_ylabel('phase', color=color)  # we already handled the x-label with ax1
ax2.plot(freqs, phases, color=color)
ax2.tick_params(axis='y', labelcolor=color)

fig.tight_layout()  # otherwise the right y-label is slightly clipped
plt.show()
plt.pause(10)
