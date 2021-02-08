import matplotlib.pyplot as plt
import numpy as np
from scipy.fft import fft

def thd(data, n_periods): # total harmonic distortion
	result = np.abs(fft(data))**2
	result = result[1:int(len(result)/2)]
	if n_periods is None:
		ref = max(result)
	else:
		ref = result[n_periods-1]
	return np.sqrt((sum(result)-ref) / ref)

def energy(data):
	return np.sqrt(sum(np.abs(fft(data))**2))

def my_logspace(lo, hi, steps = 50):
	return np.logspace(np.log10(lo), np.log10(hi), steps)

vT = 0.025

wave = np.sin(np.arange(0, 2*np.pi, 2*np.pi/1024))

amplitudes = my_logspace(0.0001, 10, 1000)
thds = [thd(np.tanh(wave*amplitude/2/vT), 1) for amplitude in amplitudes]
energies = [energy(np.tanh(wave*amplitude/2/vT)) for amplitude in amplitudes]
peakpeak = [np.tanh(amplitude/2/vT) for amplitude in amplitudes]


fig,ax = plt.subplots()

ax.set_xlabel("amplitude/mV")
ax.set_ylabel("total harmonic distortion of a sine wave/dB")
ax.set_xscale('log')
ax.plot(amplitudes*1000, np.log10(thds) * 10, label="thd")

ax2 = ax.twinx()
ax2.plot(amplitudes*1000, np.log10(energies) * 10 - 29, 'red', label="energy")
ax2.plot(amplitudes*1000, np.log10(peakpeak) * 10, 'orange', label="peak to peak")
ax2.set_ylabel("energy/dB")

ax2.legend(loc='lower right')
ax.legend(loc='upper left')

plt.show()

