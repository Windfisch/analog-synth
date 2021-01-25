import ngspyce as ns
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
import math
import numpy as np
import scipy.interpolate
import thd


DRAFT_MODE=True

ns.source("vcf_plottable.cir")

plt.rcParams.update({'font.size': 8})

t_skip_ms = 25
n_periods = 2
freq = 1013.12

def my_logspace(lo, hi, steps = 50):
	return np.logspace(np.log10(lo), np.log10(hi), steps)

def printall(l):
	for x in l: print(x)

def zero_crossings(a):
	return np.where(np.diff(np.array(a)>=0.0))[0]

def update_amplifier(impedance_ohms, factor):
	r78 = impedance_ohms
	r910 = r78 * factor
	printall(ns.cmd("alter r7 %f" % r78))
	printall(ns.cmd("alter r8 %f" % r78))
	printall(ns.cmd("alter r9 %f" % r910))
	printall(ns.cmd("alter r10 %f" % r910))

def set_input_amplitude(amplitude):
	printall(ns.cmd("let tmp =  @v4[sin]"))
	printall(ns.cmd("let tmp[1] = %f" % amplitude))
	printall(ns.cmd("alter @v4[sin] = tmp"))

def simulate_waveform(freq, n_periods = 2, t_skip_ms = 25, steps_per_period=200):
	period = 1 / freq
	timestep = period / steps_per_period

	# set the input frequency
	printall(ns.cmd("let tmp =  @v4[sin]"))
	printall(ns.cmd("let tmp[2] = %f" % freq))
	printall(ns.cmd("alter @v4[sin] = tmp"))

	skip_periods = math.ceil(t_skip_ms / 1000 * freq)
	actual_t_skip_ms = skip_periods / freq * 1000
	t_run_ms = actual_t_skip_ms + n_periods / freq * 1000

	print("tran %fu %fm %fm" % (timestep*1000000, t_run_ms, actual_t_skip_ms))
	ns.cmd("tran %fu %fm %fm" % (timestep*1000000, t_run_ms, actual_t_skip_ms))

	return ns.vector('signal_in'), ns.vector('signal_out'), (ns.vector('time') - actual_t_skip_ms/1000)

def interpolate_periodic(x, y, period):
	x2 = np.append(x-period, np.append(x, x+period))
	y2 = np.append(y,np.append(y,y))
	return scipy.interpolate.interp1d(x2, y2, 'cubic', assume_sorted = True)

def calc_thd(freq):
	steps = 64 # 256 seems to give the same results as 1024, 64 seems to be "good enough" and fast.
	if DRAFT_MODE: steps = 32
	_, signal, time = simulate_waveform(freq, n_periods = 1, steps_per_period = steps)
	interpolator = interpolate_periodic(time, signal, 1/freq)
	interpolated = [interpolator(x / steps / freq) for x in range(steps)]
	return thd.thd(interpolated, 1)

def calc_attenuation(freq, control_current_mA, n_periods = 2, t_skip_ms = 25, debug = False):
	return calc_attenuation_and_phase(freq, control_current_mA, n_periods, t_skip_ms, 20, debug)[0]

def calc_attenuation_and_phase(freq, control_current_mA, n_periods = 2, t_skip_ms = 25, steps_per_period=200, debug = False):
	# set the control current
	printall(ns.cmd("alter i1 %fm" % control_current_mA))

	signal_in, signal_out, time = simulate_waveform(freq, n_periods, t_skip_ms, steps_per_period)

	amplitude_in = np.max(signal_in) - np.min(signal_in)
	amplitude_out = np.max(signal_out) - np.min(signal_out)

	zeros = zero_crossings(signal_out)
	if len(zeros) >= 3:
		pmax = int((zeros[0] + zeros[1]) / 2)
		pmin = int((zeros[1] + zeros[2]) / 2)
		print (pmax, pmin)

		if signal_out[pmax] < signal_out[pmin]:
			pmin, pmax = pmax, pmin
		
		period = ((time[pmax] * freq - 1/4) % 1.0) * math.pi * 2
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

def make_thd_plot(thdplot, sinplot):
	thdplot.set_ylabel("thd (dB)")
	thdplot.set_xlabel("control current (mA)")
	thdplot.set_title("total harmonic distortion")
	sinplot.set_xticks([],[])
	#sinplot.set_yticks([],[])
	#sinplot.set_title("sine shape at cc = 1mA")
	#for voltage in np.arange(3,18, 1):
	for voltage in my_logspace(3,30,10 if not DRAFT_MODE else 4):
		printall(ns.cmd("alter v1 %f"%voltage))
		printall(ns.cmd("alter v2 %f"%voltage))

		y=[]
		x=my_logspace(0.01,1,8)
		for current in x:
			printall(ns.cmd("alter i1 %fm" % current))
			y.append(calc_thd(300))

		
		printall(ns.cmd("alter i1 40u"))
		_, signal, time = simulate_waveform(300, n_periods = 1, steps_per_period=64)

		thdplot.plot(x/1000, np.log10(y)*10, label="+/- %fV"%voltage)
		sinplot.plot(time, signal)

	thdplot.set_xscale('log')

	fmt_mA = ticker.EngFormatter(unit='A')
	fmt_dB = ticker.FormatStrFormatter('%.0f dB')
	thdplot.xaxis.set_major_formatter(fmt_mA)
	thdplot.yaxis.set_major_formatter(fmt_dB)
	
	#thdplot.legend()

if not DRAFT_MODE:
	amplitudes = [0.5,1,2,4,8,16,32]
	impedances = [100, 1000, 10*1000, 100*1000, 1000*1000]
else:
	amplitudes = [4,8]
	impedances = [10*1000,100*1000]
	#amplitudes = [1,4,16]
	#impedances = [100, 10*1000, 1000*1000]

ohmfmt = ticker.EngFormatter(unit="Ω")
voltfmt = ticker.EngFormatter(unit="V")

_, plots = plt.subplots(len(amplitudes),2*len(impedances))

for x, amplitude in enumerate(amplitudes):
	for y, impedance in enumerate(impedances):
		ns.destroy()
		set_input_amplitude(amplitude)
		update_amplifier(impedance, 500)
		thdplot = plots[x][2*y]
		sinplot = plots[x][2*y+1]
		make_thd_plot(thdplot, sinplot)
		thdplot.set_title("%.1fV, %.0fkOhm" % (amplitude, impedance/1000))
		thdplot.set_ylim([-35,-4])
		sinplot.set_ylim([-2*amplitude, 2*amplitude])

		#thdplot.tick_params(axis='x', direction='in', pad=-14)
		#thdplot.tick_params(axis='y', direction='in', pad=-30)
		#sinplot.tick_params(direction='in', pad=-12)

		sinplot.yaxis.tick_right()

		if x != len(amplitudes)-1:
			thdplot.set_xlabel(None)
			thdplot.xaxis.set_major_formatter(plt.NullFormatter())
		
		thdplot.set_ylabel(None)

		if x != 0:
			thdplot.set_title(None)
			sinplot.set_title(None)
		else:
			thdplot.set_title("thd")
			sinplot.set_title("sin shape @ 40µA")
			
			sinplot.text(-0.1, 1.0, 'impedance = %s\n\n' % ohmfmt.format_data(impedance), fontsize=12, horizontalalignment='center', verticalalignment='baseline', transform=sinplot.transAxes)

		if y == 0:
			thdplot.text(0, 0.5, '%s in\n\n\n' % voltfmt.format_data(amplitude/100), fontsize=10, horizontalalignment='right', verticalalignment='center', transform=thdplot.transAxes, rotation='vertical')

		if y != 0:
			thdplot.yaxis.set_major_formatter(plt.NullFormatter())
	
		if y != len(impedances)-1:
			sinplot.yaxis.set_major_formatter(plt.NullFormatter())


#calc_attenuation_and_phase(1000, 0.5, n_periods=10, t_skip_ms = 0, debug=True)
plt.pause(0)
exit()


def calc_bode(control_current_mA, freqs, steps_per_period = 200):
	attns = []
	phases = []
	for freq in freqs:
		print(freq)
		attn, phase = calc_attenuation_and_phase(freq, control_current_mA, steps_per_period = steps_per_period)
		attns.append(attn)
		phases.append(phase)
	return attns, phases



update_amplifier(10*1000*1000, 500)
printall(ns.cmd("alter c6 100u"))
#printall(ns.cmd("alter v1 3"))
#printall(ns.cmd("alter v2 3"))

freqs = my_logspace(5, 20000, 20)

plt.xscale('log')

for current in my_logspace(0.001, 1, 5):
	attns, phases = calc_bode(current, freqs, steps_per_period = 20)
	plt.plot(freqs, attns, label="%5fmA" % (current*1000))

plt.legend()
plt.pause(20)


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
