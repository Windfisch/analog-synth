EESchema Schematic File Version 4
LIBS:measure_vco-cache
LIBS:vco-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2575 6900 2825 6900
$Comp
L Device:R R?
U 1 1 5D41EF05
P 2575 7050
F 0 "R?" V 2475 7050 50  0000 C CNN
F 1 "50k" V 2575 7050 50  0000 C CNN
F 2 "" V 2505 7050 50  0001 C CNN
F 3 "~" H 2575 7050 50  0001 C CNN
	1    2575 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5D42D378
P 2575 7200
F 0 "#PWR?" H 2575 6950 50  0001 C CNN
F 1 "GNDREF" H 2580 7027 50  0000 C CNN
F 2 "" H 2575 7200 50  0001 C CNN
F 3 "" H 2575 7200 50  0001 C CNN
	1    2575 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1825 6300 1925 6300
Wire Wire Line
	2625 6400 2525 6400
Connection ~ 1825 6300
Text GLabel 1025 6400 0    50   Input ~ 0
V_expo
Wire Wire Line
	1525 6300 1625 6300
Wire Wire Line
	1025 6400 1125 6400
Wire Wire Line
	1125 6400 1125 6300
Wire Wire Line
	1125 6300 1225 6300
Wire Wire Line
	1125 6400 1125 6500
Wire Wire Line
	1125 6500 1225 6500
Connection ~ 1125 6400
$Comp
L power:GNDREF #PWR?
U 1 1 5CF229F9
P 1825 6800
F 0 "#PWR?" H 1825 6550 50  0001 C CNN
F 1 "GNDREF" H 1830 6627 50  0001 C CNN
F 2 "" H 1825 6800 50  0001 C CNN
F 3 "" H 1825 6800 50  0001 C CNN
	1    1825 6800
	1    0    0    -1  
$EndComp
Connection ~ 1625 6300
Wire Wire Line
	1625 6300 1825 6300
Connection ~ 1825 6500
Wire Wire Line
	1825 6500 1925 6500
$Comp
L power:GNDREF #PWR?
U 1 1 5D41CBAA
P 1625 7600
F 0 "#PWR?" H 1625 7350 50  0001 C CNN
F 1 "GNDREF" H 1630 7427 50  0001 C CNN
F 2 "" H 1625 7600 50  0001 C CNN
F 3 "" H 1625 7600 50  0001 C CNN
	1    1625 7600
	1    0    0    -1  
$EndComp
Text GLabel 5625 6800 2    50   Input ~ 0
square_ctl
Text GLabel 5675 5250 2    50   Input ~ 0
triangle
$Comp
L Device:R R?
U 1 1 5CF3873D
P 3075 7350
F 0 "R?" V 2975 7350 50  0000 C CNN
F 1 "100k" V 3075 7350 50  0000 C CNN
F 2 "" V 3005 7350 50  0001 C CNN
F 3 "~" H 3075 7350 50  0001 C CNN
	1    3075 7350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5675 5250 4125 5250
Wire Wire Line
	2375 7500 3475 7500
Wire Wire Line
	3475 7500 3475 7350
Wire Wire Line
	3475 7350 3475 6800
Connection ~ 3475 7350
Wire Wire Line
	3225 7350 3475 7350
Wire Wire Line
	2825 7350 2925 7350
Wire Wire Line
	2875 6900 2825 6900
Wire Wire Line
	2825 6900 2825 7350
$Comp
L power:VCC #PWR?
U 1 1 5CF357C9
P 3075 7100
F 0 "#PWR?" H 3075 6950 50  0001 C CNN
F 1 "VCC" H 2975 7150 50  0000 C CNN
F 2 "" H 3075 7100 50  0001 C CNN
F 3 "" H 3075 7100 50  0001 C CNN
	1    3075 7100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2625 6400 2875 6400
Connection ~ 2625 6400
Wire Wire Line
	2875 6400 2875 6700
Wire Wire Line
	4575 5700 4625 5700
Connection ~ 4625 5700
Wire Wire Line
	4625 5700 4675 5700
Wire Wire Line
	4125 5700 4275 5700
$Comp
L power:GNDREF #PWR?
U 1 1 5CF85DC5
P 4625 6600
F 0 "#PWR?" H 4625 6350 50  0001 C CNN
F 1 "GNDREF" H 4630 6427 50  0001 C CNN
F 2 "" H 4625 6600 50  0001 C CNN
F 3 "" H 4625 6600 50  0001 C CNN
	1    4625 6600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CF81086
P 4425 5900
F 0 "R?" V 4325 5900 50  0000 C CNN
F 1 "100k" V 4425 5900 50  0000 C CNN
F 2 "" V 4355 5900 50  0001 C CNN
F 3 "~" H 4425 5900 50  0001 C CNN
	1    4425 5900
	0    1    -1   0   
$EndComp
Text GLabel 5675 5800 2    50   Input ~ 0
sawtooth
$Comp
L pspice:QNPN Q?
U 1 1 5CF6A60E
P 4475 6250
F 0 "Q?" H 4175 6100 50  0000 L CNN
F 1 "BC546" H 4025 6000 50  0000 L CNN
F 2 "" H 4475 6250 50  0001 C CNN
F 3 "~" H 4475 6250 50  0001 C CNN
F 4 "Q" H 4475 6250 50  0001 C CNN "Spice_Primitive"
F 5 "BC546B" H 4475 6250 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4475 6250 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "BC546.lib" H 4475 6250 50  0001 C CNN "Spice_Lib_File"
	1    4475 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4125 5700 4125 5250
Connection ~ 4125 5250
Wire Wire Line
	4125 5250 2875 5250
$Comp
L Device:R R?
U 1 1 5CF775B1
P 4425 5700
F 0 "R?" V 4325 5700 50  0000 C CNN
F 1 "100k" V 4425 5700 50  0000 C CNN
F 2 "" V 4355 5700 50  0001 C CNN
F 3 "~" H 4425 5700 50  0001 C CNN
	1    4425 5700
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5CF782B8
P 5000 5450
F 0 "R?" V 4900 5450 50  0000 C CNN
F 1 "100k" V 5000 5450 50  0000 C CNN
F 2 "" V 4930 5450 50  0001 C CNN
F 3 "~" H 5000 5450 50  0001 C CNN
	1    5000 5450
	0    -1   1    0   
$EndComp
Connection ~ 2875 6400
Wire Wire Line
	2875 5250 2875 6400
$Comp
L Device:R R?
U 1 1 5CF9A0F2
P 4025 6250
F 0 "R?" V 3925 6250 50  0000 C CNN
F 1 "10k" V 4025 6250 50  0000 C CNN
F 2 "" V 3955 6250 50  0001 C CNN
F 3 "~" H 4025 6250 50  0001 C CNN
	1    4025 6250
	0    1    1    0   
$EndComp
Text Notes 3525 7350 0    50   ~ 0
If R8 was connected to GNDREF, the triangle would be\ncentered around GNDREF, but only if the output of the\ncomparator U3 would swing between Vcc and Vee.\nHowever, U3 swings between less-than-Vcc and\nexactly Vee, so the triangle isn't centered.\nR14 and R15 comprise a poti to compensate for that.
Wire Wire Line
	4675 5075 4125 5075
Wire Wire Line
	4125 5075 4125 5250
Text GLabel 1025 4875 0    50   Input ~ 0
V_pwm
Wire Wire Line
	4675 4875 1025 4875
Text GLabel 5675 4975 2    50   Input ~ 0
pulse
Wire Wire Line
	5675 4975 5275 4975
Text Notes 5625 6750 0    50   ~ 0
do not use
Text Notes -2625 4650 0    50   ~ 0
R3 * C1 should be 100µs, this affects the frequency range\nR3 : R5 must be 2:1, this affects the triangle shape\nR4 : R6 must be 1:1, this affects the triangle shape\nR8 : R9 should be 1:2, this affects the triangle amplitude and\nfrequency range. If R9 is too large, this may cause distortion\nR11 : R12 should be 1:1, this affects sawtooth amplitude
$Comp
L Device:R R?
U 1 1 5CF3A8E6
P 2225 7500
F 0 "R?" V 2125 7500 50  0000 C CNN
F 1 "10k" V 2225 7500 50  0000 C CNN
F 2 "" V 2155 7500 50  0001 C CNN
F 3 "~" H 2225 7500 50  0001 C CNN
	1    2225 7500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D41CBA2
P 1825 6650
F 0 "R?" V 1725 6650 50  0000 C CNN
F 1 "47k" V 1825 6650 50  0000 C CNN
F 2 "" V 1755 6650 50  0001 C CNN
F 3 "~" H 1825 6650 50  0001 C CNN
	1    1825 6650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5CF2012A
P 1375 6500
F 0 "R?" V 1475 6500 50  0000 C CNN
F 1 "47k" V 1375 6500 50  0000 C CNN
F 2 "" V 1305 6500 50  0001 C CNN
F 3 "~" H 1375 6500 50  0001 C CNN
	1    1375 6500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5CF1806F
P 1375 6300
F 0 "R?" V 1275 6300 50  0000 C CNN
F 1 "100k" V 1375 6300 50  0000 C CNN
F 2 "" V 1305 6300 50  0001 C CNN
F 3 "~" H 1375 6300 50  0001 C CNN
	1    1375 6300
	0    -1   1    0   
$EndComp
Text Notes -2625 5300 0    50   ~ 0
Note that V_expo should be at least 250mV above GND to\navoid a distorted shape and a wrong frequency. This is because\nQ1, when turned on, still has a voltage about 25mV between C and E.\nThis reduces the current through R5, and thus reduces the discharge\nrate of C1. As a mitigation, either use large-enough control voltages,\nor put Q1's emitter at GND - 25mV.\nOr, preferably, replace Q1 with a MOSFET like the 2N7000.
Wire Wire Line
	4575 5900 4625 5900
Wire Wire Line
	4275 5900 4125 5900
Wire Wire Line
	4125 5900 4125 5700
Connection ~ 4125 5700
Connection ~ 4625 5900
Wire Wire Line
	4625 5900 4675 5900
Wire Wire Line
	1625 7550 1625 7600
Connection ~ 2825 6900
Text Notes 525  1875 0    50   ~ 0
ca 290mV/oct
Text Notes 2300 1775 0    50   ~ 0
ca 24mV/oct
Text Notes 2775 2800 1    50   ~ 0
ca 19mV/Oct
Text Notes 3900 2650 1    50   ~ 0
ca 18mV/oct
$Comp
L Device:R R?
U 1 1 5D4A8D8A
P 2300 2275
F 0 "R?" H 2370 2321 50  0000 L CNN
F 1 "150" V 2300 2200 50  0000 L CNN
F 2 "" V 2230 2275 50  0001 C CNN
F 3 "~" H 2300 2275 50  0001 C CNN
	1    2300 2275
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D054548
P 1150 1925
F 0 "R?" V 1050 1925 50  0000 C CNN
F 1 "147k" V 1150 1925 50  0000 C CNN
F 2 "" V 1080 1925 50  0001 C CNN
F 3 "~" H 1150 1925 50  0001 C CNN
	1    1150 1925
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5D61694C
P 2950 3425
F 0 "#PWR?" H 2950 3175 50  0001 C CNN
F 1 "GNDREF" H 2955 3252 50  0000 C CNN
F 2 "" H 2950 3425 50  0001 C CNN
F 3 "" H 2950 3425 50  0001 C CNN
	1    2950 3425
	1    0    0    -1  
$EndComp
Wire Notes Line
	2800 3850 3575 3850
Wire Notes Line
	2800 2625 3575 2625
Wire Wire Line
	3550 3350 3825 3350
Wire Notes Line
	2800 2625 2800 3850
Wire Notes Line
	3575 2625 3575 3850
Text Notes 2850 3825 0    50   ~ 0
Rossum\ncompensation
Wire Wire Line
	3400 2925 3400 2800
Wire Wire Line
	3825 2925 3825 2125
Wire Wire Line
	3400 2925 3650 2925
Wire Wire Line
	3825 3350 3825 4050
Connection ~ 3400 2925
Wire Wire Line
	3400 3050 3400 2925
Wire Wire Line
	2950 3425 2950 3350
Wire Wire Line
	3100 3200 3100 3050
$Comp
L Device:R_POT_TRIM R?
U 1 1 5D5E850B
P 3100 3350
F 0 "R?" V 2985 3350 50  0000 C CNN
F 1 "1k" V 3100 3350 50  0000 C CNN
F 2 "" H 3100 3350 50  0001 C CNN
F 3 "~" H 3100 3350 50  0001 C CNN
	1    3100 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 4050 4375 4050
$Comp
L Device:R R?
U 1 1 5D5DCAB9
P 3250 3050
F 0 "R?" V 3150 3050 50  0000 C CNN
F 1 "100k" V 3250 3050 50  0000 C CNN
F 2 "" V 3180 3050 50  0001 C CNN
F 3 "~" H 3250 3050 50  0001 C CNN
	1    3250 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D5DBBAB
P 3250 2800
F 0 "R?" V 3150 2800 50  0000 C CNN
F 1 "4.7k" V 3250 2800 50  0000 C CNN
F 2 "" V 3180 2800 50  0001 C CNN
F 3 "~" H 3250 2800 50  0001 C CNN
	1    3250 2800
	0    1    1    0   
$EndComp
Text Notes 1975 3600 0    50   ~ 0
thermal\ncompensation
Wire Notes Line
	2675 1975 2675 3625
Wire Notes Line
	1950 2400 1950 3625
Wire Notes Line
	1950 2400 2375 1975
Wire Notes Line
	2675 3625 1950 3625
Wire Notes Line
	2375 1975 2675 1975
Wire Wire Line
	2300 2800 2300 2725
Wire Wire Line
	2300 2800 2975 2800
Wire Wire Line
	2300 2725 2475 2725
Connection ~ 2300 2800
Wire Wire Line
	2300 2850 2300 2800
Connection ~ 2300 2725
Wire Wire Line
	2125 2725 2300 2725
$Comp
L power:GNDREF #PWR?
U 1 1 5D4D9682
P 2300 3150
F 0 "#PWR?" H 2300 2900 50  0001 C CNN
F 1 "GNDREF" H 2305 2977 50  0000 C CNN
F 2 "" H 2300 3150 50  0001 C CNN
F 3 "" H 2300 3150 50  0001 C CNN
	1    2300 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2425 2475 2425
$Comp
L Device:R R?
U 1 1 5D4B330E
P 2300 3000
F 0 "R?" H 2370 3046 50  0000 L CNN
F 1 "2.2k" V 2300 2925 50  0000 L CNN
F 2 "" V 2230 3000 50  0001 C CNN
F 3 "~" H 2300 3000 50  0001 C CNN
	1    2300 3000
	1    0    0    -1  
$EndComp
Connection ~ 2300 2425
Wire Wire Line
	2125 2425 2300 2425
$Comp
L Device:R R?
U 1 1 5D4A95E2
P 2475 2575
F 0 "R?" H 2525 2625 50  0000 L CNN
F 1 "1k" V 2475 2525 50  0000 L CNN
F 2 "" V 2405 2575 50  0001 C CNN
F 3 "~" H 2475 2575 50  0001 C CNN
	1    2475 2575
	1    0    0    -1  
$EndComp
$Comp
L Device:Thermistor_NTC R?
U 1 1 5D4AB436
P 2125 2575
F 0 "R?" H 2200 2625 50  0000 L CNN
F 1 "1k" H 2200 2525 50  0000 L CNN
F 2 "" H 2125 2625 50  0001 C CNN
F 3 "~" H 2125 2625 50  0001 C CNN
	1    2125 2575
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D41CBAE
P 5500 2725
F 0 "R?" H 5570 2771 50  0000 L CNN
F 1 "1k" H 5570 2680 50  0000 L CNN
F 2 "" V 5430 2725 50  0001 C CNN
F 3 "~" H 5500 2725 50  0001 C CNN
	1    5500 2725
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5D41CBAF
P 6350 2275
F 0 "#PWR?" H 6350 2025 50  0001 C CNN
F 1 "GNDREF" H 6355 2102 50  0001 C CNN
F 2 "" H 6350 2275 50  0001 C CNN
F 3 "" H 6350 2275 50  0001 C CNN
	1    6350 2275
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2275 6350 2125
Wire Wire Line
	5000 3275 5200 3275
$Comp
L power:VCC #PWR?
U 1 1 5D41CBB2
P 5300 1375
F 0 "#PWR?" H 5300 1225 50  0001 C CNN
F 1 "VCC" H 5317 1548 50  0000 C CNN
F 2 "" H 5300 1375 50  0001 C CNN
F 3 "" H 5300 1375 50  0001 C CNN
	1    5300 1375
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D41CBB1
P 5300 1525
F 0 "R?" H 5370 1571 50  0000 L CNN
F 1 "100k" V 5300 1425 50  0000 L CNN
F 2 "" V 5230 1525 50  0001 C CNN
F 3 "~" H 5300 1525 50  0001 C CNN
	1    5300 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3175 4400 3175
$Comp
L power:VEE #PWR?
U 1 1 5CFF2176
P 1200 3625
F 0 "#PWR?" H 1200 3475 50  0001 C CNN
F 1 "VEE" H 1217 3798 50  0000 C CNN
F 2 "" H 1200 3625 50  0001 C CNN
F 3 "" H 1200 3625 50  0001 C CNN
	1    1200 3625
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5CFF25D9
P 1200 3025
F 0 "#PWR?" H 1200 2875 50  0001 C CNN
F 1 "VCC" H 1218 3198 50  0000 C CNN
F 2 "" H 1200 3025 50  0001 C CNN
F 3 "" H 1200 3025 50  0001 C CNN
	1    1200 3025
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1475 7600 1475
Wire Wire Line
	7600 1475 7600 1825
$Comp
L power:GNDREF #PWR?
U 1 1 5CFF60BC
P 6750 2075
F 0 "#PWR?" H 6750 1825 50  0001 C CNN
F 1 "GNDREF" H 6755 1902 50  0001 C CNN
F 2 "" H 6750 2075 50  0001 C CNN
F 3 "" H 6750 2075 50  0001 C CNN
	1    6750 2075
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2075 6750 1925
Wire Wire Line
	6750 1925 6900 1925
Wire Wire Line
	6750 1725 6750 1475
Wire Wire Line
	6750 1475 7050 1475
Wire Wire Line
	6900 1725 6750 1725
Connection ~ 6750 1725
Text GLabel 7750 1825 2    50   Input ~ 0
V_expo
Wire Wire Line
	7600 1825 7500 1825
Wire Wire Line
	7750 1825 7600 1825
Connection ~ 7600 1825
$Comp
L power:GNDREF #PWR?
U 1 1 5D41CBBA
P 4200 3575
F 0 "#PWR?" H 4200 3325 50  0001 C CNN
F 1 "GNDREF" H 4205 3402 50  0001 C CNN
F 2 "" H 4200 3575 50  0001 C CNN
F 3 "" H 4200 3575 50  0001 C CNN
	1    4200 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3575 4200 3375
Wire Wire Line
	4200 3375 4400 3375
$Comp
L Device:C C?
U 1 1 5D41CBBB
P 4750 2900
F 0 "C?" V 4498 2900 50  0000 C CNN
F 1 "1n" V 4589 2900 50  0000 C CNN
F 2 "" H 4788 2750 50  0001 C CNN
F 3 "~" H 4750 2900 50  0001 C CNN
	1    4750 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 2875 5500 3275
Wire Wire Line
	4200 1725 4200 2900
Wire Wire Line
	4600 2900 4200 2900
Connection ~ 4200 2900
Wire Wire Line
	4200 2900 4200 3175
Wire Wire Line
	4900 2900 5200 2900
Wire Wire Line
	5200 3275 5200 4050
Wire Wire Line
	5200 2900 5200 3275
Connection ~ 5200 3275
Wire Wire Line
	5200 3275 5500 3275
$Comp
L Device:R R?
U 1 1 5CFF1629
P 7200 1475
F 0 "R?" V 7100 1475 50  0000 C CNN
F 1 "10k" V 7200 1475 50  0000 C CNN
F 2 "" V 7130 1475 50  0001 C CNN
F 3 "~" H 7200 1475 50  0001 C CNN
	1    7200 1475
	0    1    1    0   
$EndComp
Text Notes 5825 3925 0    50   ~ 0
for Q4, the following holds true:\nI_C = const * exp(V_B / VT) with VT=26mV\n(thermal voltage of a transistor)\nnow this means that Vout will double\nevery (log(2) * 26mV) = 18mV.\n\nNote that VT is temperature dependent.\nWhen the temperature rises, VT rises and so\nthe input voltage must rise too. The thermal\ncompensation consisting of TODO does that.\n\nAdditionally, Q3 and Q4 have a bulk resistance\nbetween their ideal and actual emitters. This\ncauses the VCO's tuning to drop a bit at high\nfrequencies. The Rossum compensation compensates\nfor this by measuring the current through R17 and\nfeeding back a small amount into Q3's base.
Text Notes 3800 1050 0    50   ~ 0
R16 determines the I_C current through\nQ4 when Q4's base is at GNDREF.\nTogether with V_tune, it determines the pitch.\nChoose R16 and V_tune such, that U8's output needs\nto be at around GNDREF for "sane" pitches.
$Comp
L Device:R R?
U 1 1 5D054E64
P 1875 1775
F 0 "R?" V 1975 1825 50  0000 R CNN
F 1 "12k2" V 1875 1875 50  0000 R CNN
F 2 "" V 1805 1775 50  0001 C CNN
F 3 "~" H 1875 1775 50  0001 C CNN
	1    1875 1775
	0    -1   -1   0   
$EndComp
Text GLabel 1000 2125 0    50   Input ~ 0
V_tune
Wire Wire Line
	1400 2125 1300 2125
Wire Wire Line
	1300 1925 1400 1925
$Comp
L Device:R R?
U 1 1 5D41CBC2
P 1150 2125
F 0 "R?" V 1250 2125 50  0000 C CNN
F 1 "220k" V 1150 2125 50  0000 C CNN
F 2 "" V 1080 2125 50  0001 C CNN
F 3 "~" H 1150 2125 50  0001 C CNN
	1    1150 2125
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 1775 2300 2125
Wire Wire Line
	1500 1775 1725 1775
Wire Wire Line
	1500 2025 1600 2025
Connection ~ 1500 2025
Wire Wire Line
	1400 2025 1400 2125
Wire Wire Line
	1400 1925 1400 2025
Connection ~ 1400 2025
Wire Wire Line
	1400 2025 1500 2025
Wire Wire Line
	1450 2225 1600 2225
Wire Wire Line
	1450 2375 1450 2225
$Comp
L power:GNDREF #PWR?
U 1 1 5D04FEE6
P 1450 2375
F 0 "#PWR?" H 1450 2125 50  0001 C CNN
F 1 "GNDREF" H 1455 2202 50  0000 C CNN
F 2 "" H 1450 2375 50  0001 C CNN
F 3 "" H 1450 2375 50  0001 C CNN
	1    1450 2375
	1    0    0    -1  
$EndComp
Connection ~ 2300 2125
Wire Wire Line
	2200 2125 2300 2125
Text GLabel 1000 1925 0    50   Input ~ 0
V_control
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5D5D6407
P 10725 4575
F 0 "J?" H 10800 4575 50  0000 L CNN
F 1 "power supply" H 10675 4375 50  0000 L CNN
F 2 "" H 10725 4575 50  0001 C CNN
F 3 "~" H 10725 4575 50  0001 C CNN
	1    10725 4575
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR?
U 1 1 5D5D6D99
P 10525 4675
F 0 "#PWR?" H 10525 4525 50  0001 C CNN
F 1 "VEE" H 10543 4848 50  0000 C CNN
F 2 "" H 10525 4675 50  0001 C CNN
F 3 "" H 10525 4675 50  0001 C CNN
	1    10525 4675
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5D5D7596
P 10300 4575
F 0 "#PWR?" H 10300 4325 50  0001 C CNN
F 1 "GNDREF" H 10305 4402 50  0000 C CNN
F 2 "" H 10300 4575 50  0001 C CNN
F 3 "" H 10300 4575 50  0001 C CNN
	1    10300 4575
	1    0    0    -1  
$EndComp
Wire Wire Line
	10525 4575 10300 4575
$Comp
L power:VCC #PWR?
U 1 1 5D5DC792
P 10525 4475
F 0 "#PWR?" H 10525 4325 50  0001 C CNN
F 1 "VCC" H 10542 4648 50  0000 C CNN
F 2 "" H 10525 4475 50  0001 C CNN
F 3 "" H 10525 4475 50  0001 C CNN
	1    10525 4475
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 1 1 5D5E9E8D
P 1900 2125
F 0 "U?" H 2000 1975 50  0000 C CNN
F 1 "LM324" H 1875 2125 50  0000 C CNN
F 2 "" H 1850 2225 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1950 2325 50  0001 C CNN
	1    1900 2125
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 2 1 5D5EA9A1
P 4700 3275
F 0 "U?" H 4775 3125 50  0000 C CNN
F 1 "LM324" H 4675 3275 50  0000 C CNN
F 2 "" H 4650 3375 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 4750 3475 50  0001 C CNN
	2    4700 3275
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 3 1 5D5EBF6F
P 7200 1825
F 0 "U?" H 7300 1675 50  0000 C CNN
F 1 "LM324" H 7175 1825 50  0000 C CNN
F 2 "" H 7150 1925 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 7250 2025 50  0001 C CNN
	3    7200 1825
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 4 1 5D5ED4E4
P 1300 3325
F 0 "U?" H 1375 3475 50  0000 C CNN
F 1 "LM324" H 1400 3150 50  0000 C CNN
F 2 "" H 1250 3425 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1350 3525 50  0001 C CNN
	4    1300 3325
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 5 1 5D5EEA82
P 1300 3325
F 0 "U?" H 1475 3925 50  0001 L CNN
F 1 "LM324" H 1275 4075 50  0001 L CNN
F 2 "" H 1250 3425 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1350 3525 50  0001 C CNN
	5    1300 3325
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 1 1 5D628926
P 2225 6400
F 0 "U?" H 2325 6250 50  0000 C CNN
F 1 "LM324" H 2200 6400 50  0000 C CNN
F 2 "" H 2175 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 2275 6600 50  0001 C CNN
	1    2225 6400
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 2 1 5D628930
P 3175 6800
F 0 "U?" H 3275 6650 50  0000 C CNN
F 1 "LM324" H 3150 6800 50  0000 C CNN
F 2 "" H 3125 6900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 3225 7000 50  0001 C CNN
	2    3175 6800
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 3 1 5D62893A
P 4975 4975
F 0 "U?" H 5050 5150 50  0000 C CNN
F 1 "LM324" H 4950 4975 50  0000 C CNN
F 2 "" H 4925 5075 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 5025 5175 50  0001 C CNN
	3    4975 4975
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 4 1 5D628944
P 4975 5800
F 0 "U?" H 5050 5625 50  0000 C CNN
F 1 "LM324" H 4950 5800 50  0000 C CNN
F 2 "" H 4925 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 5025 6000 50  0001 C CNN
	4    4975 5800
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 5 1 5D62894E
P 3175 6800
F 0 "U?" H 3225 6625 50  0001 L CNN
F 1 "LM324" H 3250 6550 50  0001 L CNN
F 2 "" H 3125 6900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 3225 7000 50  0001 C CNN
	5    3175 6800
	1    0    0    -1  
$EndComp
Connection ~ 3475 6800
$Comp
L power:VEE #PWR?
U 1 1 5CF354CF
P 3075 6500
F 0 "#PWR?" H 3075 6350 50  0001 C CNN
F 1 "VEE" H 3175 6550 50  0000 C CNN
F 2 "" H 3075 6500 50  0001 C CNN
F 3 "" H 3075 6500 50  0001 C CNN
	1    3075 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5275 5800 5375 5800
Wire Wire Line
	4850 5450 4625 5450
Wire Wire Line
	4625 5450 4625 5700
Wire Wire Line
	5150 5450 5375 5450
Wire Wire Line
	5375 5450 5375 5800
Connection ~ 5375 5800
Wire Wire Line
	5375 5800 5675 5800
$Comp
L 74xx:74HC86 U?
U 1 1 5D720F09
P 7600 5300
F 0 "U?" H 7600 5300 50  0000 C CNN
F 1 "74HC86" H 7600 5534 50  0000 C CNN
F 2 "" H 7600 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 7600 5300 50  0001 C CNN
	1    7600 5300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U?
U 2 1 5D724B9C
P 8200 5500
F 0 "U?" H 8200 5500 50  0000 C CNN
F 1 "74HC86" H 8200 5734 50  0000 C CNN
F 2 "" H 8200 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 8200 5500 50  0001 C CNN
	2    8200 5500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U?
U 3 1 5D72705E
P 8800 5700
F 0 "U?" H 8800 5700 50  0000 C CNN
F 1 "74HC86" H 8800 5475 50  0000 C CNN
F 2 "" H 8800 5700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 8800 5700 50  0001 C CNN
	3    8800 5700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U?
U 4 1 5D728D89
P 7600 5700
F 0 "U?" H 7600 5700 50  0000 C CNN
F 1 "74HC86" H 7575 5475 50  0000 C CNN
F 2 "" H 7600 5700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 7600 5700 50  0001 C CNN
	4    7600 5700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U?
U 5 1 5D72B593
P 6975 4775
F 0 "U?" V 7100 4725 50  0000 L CNN
F 1 "74HC86" V 6825 4650 50  0000 L CNN
F 2 "" H 6975 4775 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 6975 4775 50  0001 C CNN
	5    6975 4775
	0    -1   -1   0   
$EndComp
$Comp
L power:VEE #PWR?
U 1 1 5D7E2188
P 7475 4775
F 0 "#PWR?" H 7475 4625 50  0001 C CNN
F 1 "VEE" H 7493 4948 50  0000 C CNN
F 2 "" H 7475 4775 50  0001 C CNN
F 3 "" H 7475 4775 50  0001 C CNN
	1    7475 4775
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D7E3BD5
P 6475 4775
F 0 "#PWR?" H 6475 4625 50  0001 C CNN
F 1 "VCC" H 6492 4948 50  0000 C CNN
F 2 "" H 6475 4775 50  0001 C CNN
F 3 "" H 6475 4775 50  0001 C CNN
	1    6475 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5300 7900 5400
Wire Wire Line
	7900 5700 7900 5600
Wire Wire Line
	8500 5500 8500 5600
Wire Wire Line
	9200 5600 9200 5700
Wire Wire Line
	9200 5700 9100 5700
Wire Wire Line
	9500 5600 9500 6125
Wire Wire Line
	9500 6125 8500 6125
Wire Wire Line
	8500 6125 8500 5800
$Comp
L Device:R R?
U 1 1 5D937375
P 7250 6025
F 0 "R?" H 7250 6175 50  0000 L CNN
F 1 "100k" V 7250 5925 50  0000 L CNN
F 2 "" V 7180 6025 50  0001 C CNN
F 3 "~" H 7250 6025 50  0001 C CNN
	1    7250 6025
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5D965050
P 6400 5450
F 0 "J?" H 6450 5700 50  0000 C CNN
F 1 "Conn_01x04_Male" H 6250 5175 50  0001 C CNN
F 2 "" H 6400 5450 50  0001 C CNN
F 3 "~" H 6400 5450 50  0001 C CNN
	1    6400 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 5450 6600 5400
Wire Wire Line
	6600 5400 6900 5400
Wire Wire Line
	6600 5350 6600 5200
Wire Wire Line
	6600 5200 6725 5200
Wire Wire Line
	6600 5550 6600 5600
Wire Wire Line
	6600 5600 7075 5600
Wire Wire Line
	6600 5650 6600 5800
Wire Wire Line
	6600 5800 7250 5800
$Comp
L Device:R R?
U 1 1 5D985574
P 7075 6025
F 0 "R?" H 7075 6175 50  0000 L CNN
F 1 "100k" V 7075 5925 50  0000 L CNN
F 2 "" V 7005 6025 50  0001 C CNN
F 3 "~" H 7075 6025 50  0001 C CNN
	1    7075 6025
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D9863CA
P 6900 6025
F 0 "R?" H 6900 6175 50  0000 L CNN
F 1 "100k" V 6900 5925 50  0000 L CNN
F 2 "" V 6830 6025 50  0001 C CNN
F 3 "~" H 6900 6025 50  0001 C CNN
	1    6900 6025
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D986A06
P 6725 6025
F 0 "R?" H 6725 6175 50  0000 L CNN
F 1 "100k" V 6725 5925 50  0000 L CNN
F 2 "" V 6655 6025 50  0001 C CNN
F 3 "~" H 6725 6025 50  0001 C CNN
	1    6725 6025
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D9997EB
P 8350 6025
F 0 "R?" H 8350 6175 50  0000 L CNN
F 1 "100k" V 8350 5925 50  0000 L CNN
F 2 "" V 8280 6025 50  0001 C CNN
F 3 "~" H 8350 6025 50  0001 C CNN
	1    8350 6025
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 5800 8350 5800
Wire Wire Line
	8350 5800 8350 5875
Connection ~ 8500 5800
Wire Wire Line
	7250 6175 7075 6175
Connection ~ 7250 6175
Wire Wire Line
	7075 6175 6900 6175
Connection ~ 7075 6175
Wire Wire Line
	6900 6175 6725 6175
Connection ~ 6900 6175
Wire Wire Line
	7250 5875 7250 5800
Connection ~ 7250 5800
Wire Wire Line
	7250 5800 7300 5800
Wire Wire Line
	7075 5875 7075 5600
Connection ~ 7075 5600
Wire Wire Line
	7075 5600 7300 5600
Wire Wire Line
	6900 5875 6900 5400
Connection ~ 6900 5400
Wire Wire Line
	6900 5400 7300 5400
Wire Wire Line
	6725 5875 6725 5200
Connection ~ 6725 5200
Wire Wire Line
	6725 5200 7300 5200
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5D8F200D
P 9300 5400
F 0 "J?" V 9325 5625 50  0000 R CNN
F 1 "ringmod config" V 9225 5725 50  0000 R CNN
F 2 "" H 9300 5400 50  0001 C CNN
F 3 "~" H 9300 5400 50  0001 C CNN
	1    9300 5400
	0    -1   1    0   
$EndComp
Text GLabel 9300 5600 3    50   Input ~ 0
saw_ctl
Text GLabel 3875 6250 0    50   Input ~ 0
saw_ctl
Wire Wire Line
	3475 6800 5625 6800
Text Notes 7875 5075 0    50   ~ 0
Jumper configurations:\n12 + 34: sawtooth wave with 4x ringmod\n12: triangle wave with 4x ringmod\n    (pin 4 can be used as fifth ringmod)\n23: sawtooth, no ring mod. Choose this\n    when no 74HC86 is installed.
Wire Wire Line
	8350 6175 7775 6175
$Comp
L power:VEE #PWR?
U 1 1 5DA54CDA
P 7950 5950
F 0 "#PWR?" H 7950 5800 50  0001 C CNN
F 1 "VEE" H 7968 6123 50  0000 C CNN
F 2 "" H 7950 5950 50  0001 C CNN
F 3 "" H 7950 5950 50  0001 C CNN
	1    7950 5950
	-1   0    0    1   
$EndComp
Connection ~ 7775 6175
Wire Wire Line
	7775 6175 7250 6175
Text Notes 6450 6425 0    50   ~ 0
Sawtooth generation and digital ring modulation\n(sawtooth is basically a square_ctl ringmodulated triangle)
Wire Wire Line
	7950 5950 7775 5950
Wire Wire Line
	7775 5950 7775 6175
Wire Notes Line
	9550 4525 9550 6475
Wire Notes Line
	9550 6475 6350 6475
Wire Notes Line
	6350 6475 6350 4525
Wire Notes Line
	6350 4525 9550 4525
Text GLabel 9400 3675 0    50   Input ~ 0
pulse
Text GLabel 9400 3775 0    50   Input ~ 0
triangle
Text GLabel 9400 3875 0    50   Input ~ 0
sawtooth
Text GLabel 9400 3975 0    50   Input ~ 0
square_ctl
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J?
U 1 1 5DB23DE4
P 9600 3775
F 0 "J?" H 9550 4125 50  0000 C CNN
F 1 "signal out" V 9650 3725 50  0000 C CNN
F 2 "" H 9600 3775 50  0001 C CNN
F 3 "~" H 9600 3775 50  0001 C CNN
	1    9600 3775
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DB279B1
P 10050 3675
F 0 "C?" V 10000 3575 50  0000 C CNN
F 1 "100n" V 10000 3825 50  0000 C CNN
F 2 "" H 10088 3525 50  0001 C CNN
F 3 "~" H 10050 3675 50  0001 C CNN
	1    10050 3675
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5DB283FD
P 10375 3775
F 0 "C?" V 10325 3675 50  0000 C CNN
F 1 "100n" V 10325 3925 50  0000 C CNN
F 2 "" H 10413 3625 50  0001 C CNN
F 3 "~" H 10375 3775 50  0001 C CNN
	1    10375 3775
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5DB28933
P 10050 3875
F 0 "C?" V 10000 3775 50  0000 C CNN
F 1 "100n" V 10000 4025 50  0000 C CNN
F 2 "" H 10088 3725 50  0001 C CNN
F 3 "~" H 10050 3875 50  0001 C CNN
	1    10050 3875
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5DB28CBB
P 10375 3975
F 0 "C?" V 10325 3875 50  0000 C CNN
F 1 "100n" V 10325 4125 50  0000 C CNN
F 2 "" H 10413 3825 50  0001 C CNN
F 3 "~" H 10375 3975 50  0001 C CNN
	1    10375 3975
	0    1    1    0   
$EndComp
Wire Wire Line
	9900 3775 10225 3775
Wire Wire Line
	9900 3975 10225 3975
Text GLabel 10650 3675 2    50   Input ~ 0
pulse
Text GLabel 10650 3775 2    50   Input ~ 0
triangle
Text GLabel 10650 3875 2    50   Input ~ 0
sawtooth
Text GLabel 10650 3975 2    50   Input ~ 0
square_ctl
Wire Wire Line
	10200 3675 10650 3675
Wire Wire Line
	10525 3775 10650 3775
Wire Wire Line
	10650 3875 10200 3875
Wire Wire Line
	10525 3975 10650 3975
Wire Wire Line
	9400 4075 9400 4175
Wire Wire Line
	9400 4175 9650 4175
Wire Wire Line
	9900 4175 9900 4075
Wire Wire Line
	9400 3575 9400 3475
Wire Wire Line
	9400 3475 9650 3475
Wire Wire Line
	9900 3475 9900 3575
$Comp
L power:GNDREF #PWR?
U 1 1 5DB5E6E3
P 9650 4175
F 0 "#PWR?" H 9650 3925 50  0001 C CNN
F 1 "GNDREF" H 9655 4002 50  0000 C CNN
F 2 "" H 9650 4175 50  0001 C CNN
F 3 "" H 9650 4175 50  0001 C CNN
	1    9650 4175
	1    0    0    -1  
$EndComp
Connection ~ 9650 4175
Wire Wire Line
	9650 4175 9900 4175
$Comp
L power:GNDREF #PWR?
U 1 1 5DB5EE2A
P 9775 3325
F 0 "#PWR?" H 9775 3075 50  0001 C CNN
F 1 "GNDREF" H 10025 3250 50  0001 C CNN
F 2 "" H 9775 3325 50  0001 C CNN
F 3 "" H 9775 3325 50  0001 C CNN
	1    9775 3325
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 3475 9650 3325
Wire Wire Line
	9650 3325 9775 3325
Connection ~ 9650 3475
Wire Wire Line
	9650 3475 9900 3475
$Comp
L Device:C C?
U 1 1 5DB8DA7E
P 2225 6050
F 0 "C?" V 2150 5950 50  0000 C CNN
F 1 "1n" V 2150 6150 50  0000 C CNN
F 2 "" H 2263 5900 50  0001 C CNN
F 3 "~" H 2225 6050 50  0001 C CNN
	1    2225 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	2625 6050 2375 6050
Wire Wire Line
	2625 6050 2625 6400
Wire Wire Line
	2075 6050 1825 6050
Wire Wire Line
	1825 6050 1825 6300
Text GLabel 9400 5600 3    50   Input ~ 0
ctl_override
Text Notes -1500 3275 0    50   ~ 0
todo:\nabblock / pufferkondensatoren\n
Wire Wire Line
	1525 6500 1825 6500
Wire Wire Line
	1625 6550 1625 6300
$Comp
L Device:R R?
U 1 1 5D41CBA4
P 1625 6700
F 0 "R?" H 1725 6700 50  0000 C CNN
F 1 "47k" V 1625 6700 50  0000 C CNN
F 2 "" V 1555 6700 50  0001 C CNN
F 3 "~" H 1625 6700 50  0001 C CNN
	1    1625 6700
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:2N7000 Q?
U 1 1 5D1BA17F
P 1725 7350
F 0 "Q?" H 1931 7396 50  0000 L CNN
F 1 "2N7000" H 1931 7305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1925 7275 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 1725 7350 50  0001 L CNN
	1    1725 7350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1925 7350 1925 7500
Wire Wire Line
	1925 7500 2000 7500
Text GLabel 2000 7450 1    50   Input ~ 0
ctl_override
Wire Wire Line
	2000 7450 2000 7500
Connection ~ 2000 7500
Wire Wire Line
	2000 7500 2075 7500
$Comp
L Device:RTRIM R?
U 1 1 5DC20550
P 1625 7000
F 0 "R?" H 1475 7050 50  0000 L CNN
F 1 "10k" H 1400 6950 50  0000 L CNN
F 2 "" V 1555 7000 50  0001 C CNN
F 3 "~" H 1625 7000 50  0001 C CNN
	1    1625 7000
	1    0    0    -1  
$EndComp
Text Notes 4700 6600 0    50   ~ 0
TODO: configurable voltage
Text Notes 700  7750 0    50   ~ 0
vco core
Wire Notes Line
	675  7775 3450 7775
Wire Notes Line
	3450 7775 3450 5850
Wire Notes Line
	3450 5850 675  5850
Wire Notes Line
	675  5850 675  7775
Text Notes 3550 6700 0    50   ~ 0
waveform generation
Wire Notes Line
	3525 6725 5550 6725
Wire Notes Line
	5550 6725 5550 6625
Wire Notes Line
	5550 6625 6075 6625
Wire Notes Line
	6075 6625 6075 4725
Wire Notes Line
	6075 4725 3525 4725
Wire Notes Line
	3525 4725 3525 6725
$Comp
L Transistor_BJT:BC847BDW1 Q?
U 1 1 5DD7C680
P 5200 2125
F 0 "Q?" H 5125 2275 50  0000 L CNN
F 1 "BCM847" H 5350 2225 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5400 2225 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC846BDW1T1-D.PDF" H 5200 2125 50  0001 C CNN
	1    5200 2125
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC847BDW1 Q?
U 2 1 5DD7EF3D
P 5800 2125
F 0 "Q?" H 5675 2275 50  0000 L CNN
F 1 "1/2 BCM847" H 5575 1850 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 6000 2225 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC846BDW1T1-D.PDF" H 5800 2125 50  0001 C CNN
	2    5800 2125
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 5DD84926
P 10375 5450
F 0 "Q?" H 10325 5600 50  0000 L CNN
F 1 "BC547" H 10200 5300 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10575 5375 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 10375 5450 50  0001 L CNN
	1    10375 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2325 5500 2325
Connection ~ 5500 2325
Wire Wire Line
	5500 2325 5700 2325
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 5DDC612F
P 10775 5450
F 0 "Q?" H 10700 5600 50  0000 L CNN
F 1 "BC547" H 10575 5300 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10975 5375 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 10775 5450 50  0001 L CNN
	1    10775 5450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 2325 5500 2575
Wire Wire Line
	5700 1725 5700 1925
Wire Wire Line
	5700 1725 6400 1725
Wire Wire Line
	5300 1725 5300 1925
Wire Wire Line
	4200 1725 5300 1725
Wire Wire Line
	5300 1675 5300 1725
Connection ~ 5300 1725
Text GLabel 5300 1875 2    50   Input ~ 0
C1
Text GLabel 5700 1875 0    50   Input ~ 0
C2
Wire Wire Line
	6000 2125 6350 2125
Wire Wire Line
	3825 2125 5000 2125
Text GLabel 4950 2125 1    50   Input ~ 0
B1
Text GLabel 6050 2125 1    50   Input ~ 0
B2
Text GLabel 5500 2325 1    50   Input ~ 0
E
Text GLabel 10475 5250 1    50   Input ~ 0
C1
Text GLabel 10675 5250 1    50   Input ~ 0
C2
Text GLabel 10175 5450 0    50   Input ~ 0
B1
Text GLabel 10975 5450 2    50   Input ~ 0
B2
Text GLabel 10575 5650 3    50   Input ~ 0
E
Wire Wire Line
	10475 5650 10675 5650
$Comp
L Connector_Generic:Conn_02x03_Counter_Clockwise J?
U 1 1 5DED6187
P 10525 6050
F 0 "J?" H 10575 6250 50  0000 C CNN
F 1 "BCM847 breakout socket" H 10600 5850 50  0000 C CNN
F 2 "" H 10525 6050 50  0001 C CNN
F 3 "~" H 10525 6050 50  0001 C CNN
	1    10525 6050
	1    0    0    -1  
$EndComp
Text GLabel 10325 5950 0    50   Input ~ 0
E
Text GLabel 10825 6150 2    50   Input ~ 0
E
Text GLabel 10325 6050 0    50   Input ~ 0
B1
Text GLabel 10825 5950 2    50   Input ~ 0
C1
Text GLabel 10325 6150 0    50   Input ~ 0
C2
Text GLabel 10825 6050 2    50   Input ~ 0
B2
Text Notes 10025 6450 0    50   ~ 0
alternative transistors\nonly equip one pair
Wire Notes Line
	10000 6475 11150 6475
Wire Notes Line
	11150 6475 11150 5075
Wire Notes Line
	11150 5075 10000 5075
Wire Notes Line
	10000 5075 10000 6475
Text Notes 2450 6450 3    50   ~ 0
TODO: configurable voltage
Wire Wire Line
	2025 1775 2300 1775
Wire Wire Line
	1500 1775 1500 2025
$Comp
L power:VEE #PWR?
U 1 1 5E0933EE
P 925 3425
F 0 "#PWR?" H 925 3275 50  0001 C CNN
F 1 "VEE" H 942 3598 50  0000 C CNN
F 2 "" H 925 3425 50  0001 C CNN
F 3 "" H 925 3425 50  0001 C CNN
	1    925  3425
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 3425 1000 3325
Wire Wire Line
	1000 3325 925  3325
Wire Wire Line
	925  3325 925  3425
Connection ~ 1000 3325
Wire Wire Line
	1000 3325 1000 3225
$Comp
L Jumper:Jumper_2_Bridged JP?
U 1 1 5E0B9FA6
P 4175 4050
F 0 "JP?" H 4175 4200 50  0000 C CNN
F 1 "Rossum connect" H 4175 4125 50  0000 C CNN
F 2 "" H 4175 4050 50  0001 C CNN
F 3 "~" H 4175 4050 50  0001 C CNN
	1    4175 4050
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP?
U 1 1 5E0BADDE
P 3325 2275
F 0 "JP?" H 3150 2325 50  0000 C CNN
F 1 "Rossum override" H 3325 2400 50  0000 C CNN
F 2 "" H 3325 2275 50  0001 C CNN
F 3 "~" H 3325 2275 50  0001 C CNN
	1    3325 2275
	1    0    0    -1  
$EndComp
Wire Wire Line
	3125 2275 2975 2275
Wire Wire Line
	2975 2275 2975 2425
Connection ~ 2975 2800
Wire Wire Line
	2975 2800 3100 2800
Wire Wire Line
	3525 2275 3650 2275
Wire Wire Line
	3650 2275 3650 2425
Connection ~ 3650 2925
Wire Wire Line
	3650 2925 3825 2925
Wire Wire Line
	3975 4050 3825 4050
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 5E0F0CDF
P 4175 4175
F 0 "JP?" H 4175 4075 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4150 4050 50  0001 C CNN
F 2 "" H 4175 4175 50  0001 C CNN
F 3 "~" H 4175 4175 50  0001 C CNN
	1    4175 4175
	1    0    0    -1  
$EndComp
Wire Wire Line
	3975 4050 3975 4175
Wire Wire Line
	3975 4175 4025 4175
Connection ~ 3975 4050
Wire Wire Line
	4375 4050 4375 4175
Wire Wire Line
	4375 4175 4325 4175
Connection ~ 4375 4050
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 5E106B1B
P 3325 2425
F 0 "JP?" H 3325 2325 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 3300 2300 50  0001 C CNN
F 2 "" H 3325 2425 50  0001 C CNN
F 3 "~" H 3325 2425 50  0001 C CNN
	1    3325 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	3175 2425 2975 2425
Connection ~ 2975 2425
Wire Wire Line
	2975 2425 2975 2800
Wire Wire Line
	3475 2425 3650 2425
Connection ~ 3650 2425
Wire Wire Line
	3650 2425 3650 2925
$Comp
L Diode:1N4148 D?
U 1 1 5E16153A
P 3400 3350
F 0 "D?" H 3400 3250 50  0000 C CNN
F 1 "1N4148" H 3400 3450 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3400 3175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3400 3350 50  0001 C CNN
	1    3400 3350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E17C2C3
P 6500 1575
F 0 "R?" H 6550 1575 50  0000 L CNN
F 1 "1k" V 6500 1525 50  0000 L CNN
F 2 "" V 6430 1575 50  0001 C CNN
F 3 "~" H 6500 1575 50  0001 C CNN
	1    6500 1575
	1    0    0    -1  
$EndComp
Connection ~ 6500 1725
Wire Wire Line
	6500 1725 6750 1725
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5E17EBF6
P 6400 1225
F 0 "J?" V 6400 1375 50  0000 R CNN
F 1 "linear pitch mod" V 6500 1475 50  0000 R CNN
F 2 "" H 6400 1225 50  0001 C CNN
F 3 "~" H 6400 1225 50  0001 C CNN
	1    6400 1225
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E17FED4
P 6400 1575
F 0 "R?" H 6250 1575 50  0000 L CNN
F 1 "1k" V 6400 1525 50  0000 L CNN
F 2 "" V 6330 1575 50  0001 C CNN
F 3 "~" H 6400 1575 50  0001 C CNN
	1    6400 1575
	1    0    0    -1  
$EndComp
Connection ~ 6400 1725
Wire Wire Line
	6400 1725 6500 1725
$EndSCHEMATC
