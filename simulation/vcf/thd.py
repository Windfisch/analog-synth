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
