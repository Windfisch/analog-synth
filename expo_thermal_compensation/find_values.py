#!/usr/bin/env python3

from math import *
import numpy as np

import matplotlib.pyplot as plt

# conventions: all temperatures Twhatever in kelvin, all Tbla_C in celsius

def kelvin(T_C):
	return T_C + 273.15

Tmin_C = 20
Tmax_C = 27

#                  +----[R2]----+
# (in) ----[R1]----+            +------+----- [R4] ---- GND
#                  +----[R3]----+      |
#                                    (out)
# ratio := out/in
# R3 is an NTC

q_e = 1.60217662e-19 # coulomb. electron charge
k = 1.380649e-23 # J/K. boltzmann constant

# expo pair does const * exp( (out) / VT ) = const * 2^( (out)/VT / log(2) )
# where VT = kT/q_e

def VT(T_C):
	T = kelvin(T_C)
	return k * T / q_e

def octaves_per_volt(R1,R2,R3,R4, T_C):
	# if in was 0, then out=0 and exp( out/VT ) = 1
	# let's try in := 1
	in_ = 1

	R3_real = calcNTC(R3, T_C)
	Rtop = R1 + 1/ (1/R2 + 1/R3_real)
	Rbot = R4

	out = in_ * Rbot / (Rtop+Rbot)
	#print(out, VT(T_C))
	return out / VT(T_C)

def calcNTC(Rref, T_C):
	# returns the resistance of a Vishay NTCLE100E3 series resistor with nominal
	# resistance R at temperature T_C

	B2585 = {
		 1000: 3528,
		 1500: 3528,
		 2000: 3528,
		 2200: 3977,
		 2700: 3977,
		 3300: 3977,
		 4700: 3977,
		 5000: 3977,
		 6800: 3977,
		10000: 3977
	}

	params = {
		3528: (- 12.0596, 3687.667, - 7617.13,  - 5.914730E+06), # < 25 C
		3977: (- 14.6337, 4791.842, - 115334, - 3.730535E+06)
	}

	A,B,C,D = params[B2585[Rref]]
	if B2585[Rref] == 3528 and T_C >= 25:
		A,B,C,D = (- 21.0704 , 11903.95, - 2504699,  2.470338E+08)
	
	T = kelvin(T_C)
	return Rref * exp(A + B/T + C/(T**2) + D/(T**3))

R1,R2,R3,R4 = 12000,4700,4700,330
#R1,R2,R3,R4 = 12000+4700,0.0001,4700,330

def evaluate(R1,R2,R3,R4, temps_C):
	deviation_cent_per_octave, mid = calc_curve(R1,R2,R3,R4, temps_C)
	return max([abs(d) for d in deviation_cent_per_octave]), mid

def calc_curve(R1,R2,R3,R4, temps_C, mid=None):
	v_per_octs = [ 1/octaves_per_volt(R1,R2,R3,R4, T_C) for T_C in temps_C ]
	if mid is None:
		mid = (min(v_per_octs) + max(v_per_octs))/2
	return[ log(mid / v_per_oct,2)*1200 for v_per_oct in v_per_octs ], mid


E3 = [1, 2.2, 4.7]
E6 = [1, 1.5, 2.2, 3.3, 4.7, 6.8]
E12 = [1, 1.2, 1.5, 1.8, 2.2, 2.7, 3.3, 3.9, 4.7, 5.6, 6.8, 8.2]
def row(E, decades):
	return sum( [ [e*d for d in decades] for e in E ], [] )

Rs_available = [100,220,470,1000,2200,4700,10000,47000,100000,220000,470000, 200,510, 2000,5100,20000,51000,1000000,150,330,680,1500,3300,6800,68000,680000]

#R1s = row(E12, [100,1000,10000,100000])
#R2s = row(E12, [100,1000,10000,100000])
#R3s = [1000, 2200, 4700, 10000]
#R4s = row(E12, [100,1000,10000,100000])
R1s,R2s,R4s = Rs_available, Rs_available, Rs_available
R3s = [1000]

best_maxdev = 999999
results = []
for R1 in R1s:
	for R2 in R2s:
		for R3 in R3s:
			for R4 in R4s:
				maxdev, mid = evaluate(R1,R2,R3,R4, range(Tmin_C, Tmax_C))
				if maxdev < best_maxdev:
					best = R1,R2,R3,R4
					best_maxdev = maxdev
					print("best values", best_maxdev, best, mid)
				results.append( (maxdev, mid, R1,R2,R3,R4) )

results=sorted(results)
for maxdev, mid, R1,R2,R3,R4 in results[:20]:
	print("±%6.4fc, %8.2fmV/oct, %7d %7d %7d %7d" % (maxdev, mid*1000, R1,R2,R3,R4))

R1,R2,R3,R4 = best

maxdev, mid = evaluate(R1,R2,R3,R4, range(Tmin_C, Tmax_C))

print("max deviation: %f" % maxdev)

plotrange = np.arange(15,40, 0.1)
#plotrange=range(Tmin_C,Tmax_C)
plt.plot( plotrange, calc_curve(R1,R2,R3,R4, plotrange, mid)[0])
plt.show()





v_per_octs = [ 1/octaves_per_volt(R1,R2,R3,R4, T_C) for T_C in range(Tmin_C,Tmax_C) ]

mid = (min(v_per_octs) + max(v_per_octs))/2

deviation_cent_per_octave = [ log(mid / v_per_oct,2)*1200 for v_per_oct in v_per_octs ]

print("Millivolts per octave: %9.4f" % (mid*1000))
print("Deviation in cents per octave for temperatures ranging from %d to %d C:" % (Tmin_C, Tmax_C))
print("\t" + ", ".join(["%5.2f" % d for d in deviation_cent_per_octave]))


plotrange = np.arange(10,50, 0.1)
plt.plot( plotrange, [ log(mid * octaves_per_volt(R1,R2,R3,R4, T_C), 2)*1200 for T_C in plotrange])
plt.show()
