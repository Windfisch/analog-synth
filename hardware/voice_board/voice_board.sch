EESchema Schematic File Version 4
LIBS:voice_board-cache
EELAYER 30 0
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
Text GLabel 3075 6475 0    50   Input ~ 0
Envelope
Connection ~ 2350 1600
$Comp
L Device:R R10
U 1 1 5D95F81E
P 2350 1450
F 0 "R10" H 2420 1496 50  0000 L CNN
F 1 "10k" V 2350 1375 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2280 1450 50  0001 C CNN
F 3 "~" H 2350 1450 50  0001 C CNN
	1    2350 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	2225 1600 2350 1600
Wire Wire Line
	2350 1600 2475 1600
$Comp
L Transistor_BJT:BC327 Q3
U 1 1 5D96447B
P 2575 1800
F 0 "Q3" H 2450 1950 50  0000 L CNN
F 1 "BC327" H 2766 1755 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2775 1725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC327-D.PDF" H 2575 1800 50  0001 L CNN
	1    2575 1800
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC327 Q1
U 1 1 5D969E4D
P 2125 1800
F 0 "Q1" H 2000 1950 50  0000 L CNN
F 1 "BC327" V 2350 1675 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2325 1725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC327-D.PDF" H 2125 1800 50  0001 L CNN
	1    2125 1800
	1    0    0    1   
$EndComp
$Comp
L power:VEE #PWR07
U 1 1 5D9809F3
P 2475 2650
F 0 "#PWR07" H 2475 2500 50  0001 C CNN
F 1 "VEE" H 2493 2823 50  0000 C CNN
F 2 "" H 2475 2650 50  0001 C CNN
F 3 "" H 2475 2650 50  0001 C CNN
	1    2475 2650
	-1   0    0    1   
$EndComp
$Comp
L power:VEE #PWR06
U 1 1 5D9813BC
P 2225 2650
F 0 "#PWR06" H 2225 2500 50  0001 C CNN
F 1 "VEE" H 2243 2823 50  0000 C CNN
F 2 "" H 2225 2650 50  0001 C CNN
F 3 "" H 2225 2650 50  0001 C CNN
	1    2225 2650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 5DD7C07D
P 2225 2500
F 0 "R9" H 2075 2550 50  0000 L CNN
F 1 "10k" V 2225 2425 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2155 2500 50  0001 C CNN
F 3 "~" H 2225 2500 50  0001 C CNN
	1    2225 2500
	1    0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 5DD7C087
P 2475 2500
F 0 "R11" H 2545 2546 50  0000 L CNN
F 1 "10k" V 2475 2425 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2405 2500 50  0001 C CNN
F 3 "~" H 2475 2500 50  0001 C CNN
	1    2475 2500
	1    0    0    1   
$EndComp
Wire Wire Line
	2800 2075 2475 2075
Wire Wire Line
	2800 2275 2225 2275
Connection ~ 2225 2275
Wire Wire Line
	2225 2350 2225 2275
Wire Wire Line
	2475 2350 2475 2075
Connection ~ 2475 2075
Wire Wire Line
	3250 2275 3175 2275
Wire Wire Line
	3100 2075 3175 2075
$Comp
L Amplifier_Operational:TL074 U1
U 2 1 5DD7C0CD
P 3550 2175
F 0 "U1" H 3575 2350 50  0000 C CNN
F 1 "TL074" H 3525 2175 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3500 2275 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3600 2375 50  0001 C CNN
	2    3550 2175
	1    0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 5DD7C0D7
P 2950 2275
F 0 "R13" V 2850 2250 50  0000 L CNN
F 1 "20k" V 2950 2200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2880 2275 50  0001 C CNN
F 3 "~" H 2950 2275 50  0001 C CNN
	1    2950 2275
	0    1    -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 5DD7C0E1
P 2950 2075
F 0 "R12" V 3050 2050 50  0000 L CNN
F 1 "20k" V 2950 2000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2880 2075 50  0001 C CNN
F 3 "~" H 2950 2075 50  0001 C CNN
	1    2950 2075
	0    1    -1   0   
$EndComp
$Comp
L Device:R R17
U 1 1 5DD7C0EB
P 3525 1850
F 0 "R17" V 3625 1800 50  0000 L CNN
F 1 "100k" V 3525 1750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3455 1850 50  0001 C CNN
F 3 "~" H 3525 1850 50  0001 C CNN
	1    3525 1850
	0    1    -1   0   
$EndComp
Connection ~ 3175 2075
Wire Wire Line
	3175 2075 3250 2075
$Comp
L Device:R R15
U 1 1 5DD7C0FB
P 3175 2525
F 0 "R15" H 3000 2475 50  0000 L CNN
F 1 "100k" V 3175 2425 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3105 2525 50  0001 C CNN
F 3 "~" H 3175 2525 50  0001 C CNN
	1    3175 2525
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3175 2375 3175 2275
Connection ~ 3175 2275
Wire Wire Line
	3175 2275 3100 2275
Text Notes 3400 2575 0    50   ~ 0
differential to\nsingle-ended
Text Notes 2075 1775 2    50   ~ 0
differential pair\n(current controlled\namplification)
Text GLabel 3850 2175 2    50   Input ~ 0
vca_audio_out
Wire Wire Line
	2475 2000 2475 2075
Wire Wire Line
	2225 2000 2225 2275
Text Notes 3100 1550 2    50   ~ 0
current mirror as\nvoltage controlled\ncurrent source
Text Notes 1650 2750 1    50   ~ 0
input preattenuation.\ncontrols distortion
$Comp
L Device:C C1
U 1 1 5D9A8C50
P 1725 1975
F 0 "C1" H 1775 2075 50  0000 C CNN
F 1 "470n" H 1825 1875 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1763 1825 50  0001 C CNN
F 3 "~" H 1725 1975 50  0001 C CNN
	1    1725 1975
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5D9A8C46
P 1725 2575
F 0 "R8" H 1800 2525 50  0000 L CNN
F 1 "1k" V 1725 2525 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1655 2575 50  0001 C CNN
F 3 "~" H 1725 2575 50  0001 C CNN
	1    1725 2575
	1    0    0    1   
$EndComp
$Comp
L Device:R_Variable R7
U 1 1 5D9A8C32
P 1725 2275
F 0 "R7" H 1775 2275 50  0000 L CNN
F 1 "100k" H 1775 2200 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" V 1655 2275 50  0001 C CNN
F 3 "~" H 1725 2275 50  0001 C CNN
	1    1725 2275
	1    0    0    -1  
$EndComp
Text GLabel 1050 2025 0    50   Input ~ 0
vca_audio_in
Wire Wire Line
	1725 2425 1925 2425
Wire Wire Line
	1925 2425 1925 1800
Connection ~ 1725 2425
Wire Wire Line
	3175 1850 3375 1850
Wire Wire Line
	3175 1850 3175 2075
Wire Wire Line
	3675 1850 3850 1850
Wire Wire Line
	3850 1850 3850 2175
Wire Wire Line
	1050 2025 1425 2025
Wire Wire Line
	1425 2025 1425 1825
Text Notes 525  2875 0    50   ~ 0
Voltage controlled amplifier
Text Notes 525  2150 0    50   ~ 0
triangle from VCO mk I
Text Notes 550  4025 0    50   ~ 0
transistor buffer.\nsquare_ctl is very sensitive,\nloading it will affect the\nfrequency and pulse width\nof the oscillator
$Comp
L power:VEE #PWR024
U 1 1 5D8E8D04
P 1675 3900
F 0 "#PWR024" H 1675 3750 50  0001 C CNN
F 1 "VEE" H 1675 4075 50  0000 C CNN
F 2 "" H 1675 3900 50  0001 C CNN
F 3 "" H 1675 3900 50  0001 C CNN
	1    1675 3900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R46
U 1 1 5D8E86DE
P 1675 3750
F 0 "R46" H 1775 3650 50  0000 C CNN
F 1 "1k" V 1675 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1605 3750 50  0001 C CNN
F 3 "~" H 1675 3750 50  0001 C CNN
	1    1675 3750
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR023
U 1 1 5D8E6DCF
P 1675 3200
F 0 "#PWR023" H 1675 3050 50  0001 C CNN
F 1 "VCC" H 1675 3375 50  0000 C CNN
F 2 "" H 1675 3200 50  0001 C CNN
F 3 "" H 1675 3200 50  0001 C CNN
	1    1675 3200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q17
U 1 1 5D8E580C
P 1575 3400
F 0 "Q17" H 1766 3446 50  0000 L CNN
F 1 "BC547" H 1766 3355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1775 3325 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 1575 3400 50  0001 L CNN
	1    1575 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R44
U 1 1 5D88990F
P 1225 3400
F 0 "R44" V 1125 3400 50  0000 C CNN
F 1 "10k" V 1225 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1155 3400 50  0001 C CNN
F 3 "~" H 1225 3400 50  0001 C CNN
	1    1225 3400
	0    1    1    0   
$EndComp
Text GLabel 1075 3400 0    50   Input ~ 0
square_ctl1
$Comp
L power:+3.3V #PWR038
U 1 1 5DC05FDC
P 5100 6500
F 0 "#PWR038" H 5100 6350 50  0001 C CNN
F 1 "+3.3V" H 5115 6673 50  0000 C CNN
F 2 "" H 5100 6500 50  0001 C CNN
F 3 "" H 5100 6500 50  0001 C CNN
	1    5100 6500
	1    0    0    -1  
$EndComp
Text GLabel 4600 6800 0    50   Input ~ 0
PB13
Text GLabel 4600 7000 0    50   Input ~ 0
PB15
Text GLabel 4600 7100 0    50   Input ~ 0
PB12
$Comp
L power:GND #PWR039
U 1 1 5DBFDDAA
P 5100 7400
F 0 "#PWR039" H 5100 7150 50  0001 C CNN
F 1 "GND" H 5105 7227 50  0000 C CNN
F 2 "" H 5100 7400 50  0001 C CNN
F 3 "" H 5100 7400 50  0001 C CNN
	1    5100 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6900 4600 6900
$Comp
L power:GND #PWR034
U 1 1 5DBFDAC8
P 4250 6900
F 0 "#PWR034" H 4250 6650 50  0001 C CNN
F 1 "GND" H 4255 6727 50  0000 C CNN
F 2 "" H 4250 6900 50  0001 C CNN
F 3 "" H 4250 6900 50  0001 C CNN
	1    4250 6900
	1    0    0    -1  
$EndComp
$Comp
L Analog_DAC:MCP4822 U2
U 1 1 5DBF2744
P 5100 6900
F 0 "U2" H 4775 7250 50  0000 C CNN
F 1 "MCP4822" H 5300 7250 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5900 6600 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 5900 6600 50  0001 C CNN
	1    5100 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT R55
U 1 1 5DC6E5D7
P 3225 6625
F 0 "R55" H 3155 6671 50  0000 R CNN
F 1 "1k" V 3225 6675 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 3225 6625 50  0001 C CNN
F 3 "~" H 3225 6625 50  0001 C CNN
	1    3225 6625
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR045
U 1 1 5DC78980
P 3225 6775
F 0 "#PWR045" H 3225 6525 50  0001 C CNN
F 1 "GND" H 3230 6602 50  0000 C CNN
F 2 "" H 3225 6775 50  0001 C CNN
F 3 "" H 3225 6775 50  0001 C CNN
	1    3225 6775
	1    0    0    -1  
$EndComp
$Comp
L Device:R R56
U 1 1 5DC7A310
P 3525 6625
F 0 "R56" V 3425 6600 50  0000 L CNN
F 1 "10k" V 3525 6550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3455 6625 50  0001 C CNN
F 3 "~" H 3525 6625 50  0001 C CNN
	1    3525 6625
	0    -1   1    0   
$EndComp
$Comp
L Device:C C12
U 1 1 5DC7AF18
P 3675 6775
F 0 "C12" H 3790 6821 50  0000 L CNN
F 1 "100n" H 3790 6730 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3713 6625 50  0001 C CNN
F 3 "~" H 3675 6775 50  0001 C CNN
	1    3675 6775
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR046
U 1 1 5DC7B326
P 3675 6925
F 0 "#PWR046" H 3675 6675 50  0001 C CNN
F 1 "GND" H 3680 6752 50  0000 C CNN
F 2 "" H 3675 6925 50  0001 C CNN
F 3 "" H 3675 6925 50  0001 C CNN
	1    3675 6925
	1    0    0    -1  
$EndComp
Text Notes 3025 7650 0    50   ~ 0
Low-pass filter for fast\nattacking envelopes.\nTime constant T =\n10kOhm * 100nF = \n1ms. This removes\npops, but is still ballsy.
Wire Wire Line
	3075 6475 3225 6475
Text GLabel 2025 7100 0    50   Input ~ 0
LFO
$Comp
L Device:R_POT R52
U 1 1 5DC95C10
P 2125 7250
F 0 "R52" H 2055 7296 50  0000 R CNN
F 1 "1k" V 2125 7300 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 2125 7250 50  0001 C CNN
F 3 "~" H 2125 7250 50  0001 C CNN
	1    2125 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2125 7100 2025 7100
$Comp
L power:GND #PWR041
U 1 1 5DC985D7
P 2125 7400
F 0 "#PWR041" H 2125 7150 50  0001 C CNN
F 1 "GND" H 2130 7227 50  0000 C CNN
F 2 "" H 2125 7400 50  0001 C CNN
F 3 "" H 2125 7400 50  0001 C CNN
	1    2125 7400
	1    0    0    -1  
$EndComp
Text GLabel 2275 7250 2    50   Input ~ 0
PWM
Text GLabel 3775 6625 2    50   Input ~ 0
VCA_ctl
Wire Wire Line
	3775 6625 3675 6625
Connection ~ 3675 6625
Wire Wire Line
	1725 1825 1425 1825
Text Notes 7675 2975 1    50   ~ 0
input preattenuation.\ncontrols distortion
$Comp
L Device:R R22
U 1 1 5DC870D7
P 7800 2275
F 0 "R22" H 7875 2225 50  0000 L CNN
F 1 "1k" V 7800 2225 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7730 2275 50  0001 C CNN
F 3 "~" H 7800 2275 50  0001 C CNN
	1    7800 2275
	1    0    0    1   
$EndComp
$Comp
L Device:R_Variable R21
U 1 1 5DC870E1
P 7650 2125
F 0 "R21" V 7825 2100 50  0000 L CNN
F 1 "1Meg" V 7750 1975 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" V 7580 2125 50  0001 C CNN
F 3 "~" H 7650 2125 50  0001 C CNN
	1    7650 2125
	0    1    -1   0   
$EndComp
Text GLabel 7500 2125 0    50   Input ~ 0
vcf_audio_in
Connection ~ 7800 2125
Text Notes 7500 2350 2    50   ~ 0
sawtooth from\nVCO mk I
$Comp
L Device:CP C2
U 1 1 5DC91769
P 8325 2125
F 0 "C2" V 8250 2000 50  0000 C CNN
F 1 "470u" V 8400 1975 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_8x5.4" H 8363 1975 50  0001 C CNN
F 3 "~" H 8325 2125 50  0001 C CNN
	1    8325 2125
	0    1    -1   0   
$EndComp
Wire Wire Line
	9075 3900 9075 3825
Connection ~ 9075 3825
Wire Wire Line
	9075 3825 9075 3675
Wire Wire Line
	8775 3900 8775 3825
Connection ~ 8775 3825
Wire Wire Line
	8775 3825 8775 3675
Wire Wire Line
	9375 3475 9375 3700
Wire Wire Line
	9375 3700 8475 3700
Wire Wire Line
	9075 3275 9075 3200
Connection ~ 9075 3200
Wire Wire Line
	9075 3200 9075 3050
Wire Wire Line
	8775 3275 8775 3200
Connection ~ 8775 3200
Wire Wire Line
	8775 3200 8775 3050
Wire Wire Line
	9375 2850 9375 3075
Wire Wire Line
	9375 3075 8475 3075
Wire Wire Line
	9375 4100 9375 4325
Wire Wire Line
	9375 4325 8475 4325
Wire Wire Line
	9075 2650 9075 2575
Connection ~ 9075 2575
Wire Wire Line
	9075 2575 9075 2425
Wire Wire Line
	8775 2650 8775 2575
Connection ~ 8775 2575
Wire Wire Line
	8775 2575 8775 2425
$Comp
L Device:R R30
U 1 1 5DD85AF5
P 8475 3900
F 0 "R30" H 8275 3975 50  0000 L CNN
F 1 "150" V 8475 3825 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8405 3900 50  0001 C CNN
F 3 "~" H 8475 3900 50  0001 C CNN
	1    8475 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R29
U 1 1 5DD86019
P 8475 3275
F 0 "R29" H 8275 3350 50  0000 L CNN
F 1 "150" V 8475 3200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8405 3275 50  0001 C CNN
F 3 "~" H 8475 3275 50  0001 C CNN
	1    8475 3275
	1    0    0    -1  
$EndComp
$Comp
L Device:R R28
U 1 1 5DD87B46
P 8475 2650
F 0 "R28" H 8275 2725 50  0000 L CNN
F 1 "150" V 8475 2575 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8405 2650 50  0001 C CNN
F 3 "~" H 8475 2650 50  0001 C CNN
	1    8475 2650
	1    0    0    -1  
$EndComp
Connection ~ 8475 4325
Wire Wire Line
	8475 3750 8475 3700
Connection ~ 8475 3700
Wire Wire Line
	8475 3125 8475 3075
Connection ~ 8475 3075
$Comp
L Device:R R27
U 1 1 5DDF220D
P 8325 2325
F 0 "R27" V 8325 2050 50  0000 L CNN
F 1 "470" V 8325 2250 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8255 2325 50  0001 C CNN
F 3 "~" H 8325 2325 50  0001 C CNN
	1    8325 2325
	0    1    -1   0   
$EndComp
$Comp
L Device:R R35
U 1 1 5DDF90E1
P 9525 2325
F 0 "R35" V 9425 2250 50  0000 L CNN
F 1 "470" V 9525 2250 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9455 2325 50  0001 C CNN
F 3 "~" H 9525 2325 50  0001 C CNN
	1    9525 2325
	0    1    -1   0   
$EndComp
Wire Wire Line
	9675 2325 9675 2450
Wire Wire Line
	9675 2450 8475 2450
Wire Wire Line
	8175 2450 8175 2325
Wire Wire Line
	8775 2025 8925 2025
Wire Wire Line
	8475 2500 8475 2450
Connection ~ 8475 2450
Wire Wire Line
	8475 2450 8175 2450
$Comp
L Device:R R26
U 1 1 5DE2652F
P 8175 2650
F 0 "R26" H 7975 2575 50  0000 L CNN
F 1 "180" V 8175 2575 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8105 2650 50  0001 C CNN
F 3 "~" H 8175 2650 50  0001 C CNN
	1    8175 2650
	1    0    0    1   
$EndComp
Wire Wire Line
	8175 2500 8175 2450
Connection ~ 8175 2450
$Comp
L power:GND #PWR017
U 1 1 5DE2D342
P 8175 2800
F 0 "#PWR017" H 8175 2550 50  0001 C CNN
F 1 "GND" H 8180 2627 50  0001 C CNN
F 2 "" H 8175 2800 50  0001 C CNN
F 3 "" H 8175 2800 50  0001 C CNN
	1    8175 2800
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5DD09867
P 8925 2575
F 0 "C3" V 8875 2800 50  0000 C CNN
F 1 "47n" V 8950 2825 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8963 2425 50  0001 C CNN
F 3 "~" H 8925 2575 50  0001 C CNN
	1    8925 2575
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5DCDA152
P 8925 3200
F 0 "C4" V 8875 3425 50  0000 C CNN
F 1 "47n" V 8950 3450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8963 3050 50  0001 C CNN
F 3 "~" H 8925 3200 50  0001 C CNN
	1    8925 3200
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 5DC993CD
P 8925 3825
F 0 "C5" V 8875 4050 50  0000 C CNN
F 1 "47n" V 8950 4075 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8963 3675 50  0001 C CNN
F 3 "~" H 8925 3825 50  0001 C CNN
	1    8925 3825
	0    1    1    0   
$EndComp
Wire Wire Line
	8475 4425 8475 4325
Connection ~ 8925 5200
Wire Wire Line
	9075 5200 9075 5025
Wire Wire Line
	8925 5200 9075 5200
Wire Wire Line
	8775 5200 8775 5025
Wire Wire Line
	8925 5200 8775 5200
Wire Wire Line
	8925 5350 8925 5200
Wire Wire Line
	8475 5350 8925 5350
Connection ~ 8475 5050
Wire Wire Line
	9375 5050 8475 5050
Wire Wire Line
	9375 4825 9375 5050
$Comp
L Device:R R41
U 1 1 5DF86F1C
P 9900 2575
F 0 "R41" H 9975 2550 50  0000 L CNN
F 1 "10k" V 9900 2500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9830 2575 50  0001 C CNN
F 3 "~" H 9900 2575 50  0001 C CNN
	1    9900 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 3825 9900 2725
Wire Wire Line
	9900 2125 9675 2125
$Comp
L power:GND #PWR010
U 1 1 5DFC806B
P 3175 2675
F 0 "#PWR010" H 3175 2425 50  0001 C CNN
F 1 "GND" H 3175 2525 50  0001 C CNN
F 2 "" H 3175 2675 50  0001 C CNN
F 3 "" H 3175 2675 50  0001 C CNN
	1    3175 2675
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R34
U 1 1 5E00D028
P 8925 1875
F 0 "R34" H 8725 1925 50  0000 L CNN
F 1 "680" V 8925 1800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8855 1875 50  0001 C CNN
F 3 "~" H 8925 1875 50  0001 C CNN
	1    8925 1875
	1    0    0    1   
$EndComp
Connection ~ 8925 2025
Wire Wire Line
	8925 2025 9075 2025
Text Notes 8250 2975 3    50   ~ 0
bias network to keep the transistor bases\n>= 1 diode drop away from each other
$Comp
L Device:CP C7
U 1 1 5E098487
P 9525 2125
F 0 "C7" V 9450 2300 50  0000 C CNN
F 1 "470u" V 9600 2275 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_8x5.4" H 9563 1975 50  0001 C CNN
F 3 "~" H 9525 2125 50  0001 C CNN
	1    9525 2125
	0    1    -1   0   
$EndComp
Wire Wire Line
	7800 2125 8175 2125
$Comp
L power:VEE #PWR019
U 1 1 5E2CC03C
P 8925 5350
F 0 "#PWR019" H 8925 5200 50  0001 C CNN
F 1 "VEE" H 8942 5523 50  0000 C CNN
F 2 "" H 8925 5350 50  0001 C CNN
F 3 "" H 8925 5350 50  0001 C CNN
	1    8925 5350
	1    0    0    1   
$EndComp
Connection ~ 8925 5350
$Comp
L Transistor_BJT:BC557 Q16
U 1 1 5E2E2D38
P 9425 1525
F 0 "Q16" H 9350 1675 50  0000 L CNN
F 1 "BC557" H 9100 1400 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9625 1450 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 9425 1525 50  0001 L CNN
	1    9425 1525
	1    0    0    1   
$EndComp
Wire Wire Line
	8475 5050 8475 4825
Wire Wire Line
	8475 4325 8475 4100
Wire Wire Line
	8475 3700 8475 3475
Wire Wire Line
	8475 3075 8475 2850
Wire Wire Line
	9375 2325 9375 2225
Wire Wire Line
	8475 2325 8475 2225
$Comp
L Transistor_BJT:BC557 Q8
U 1 1 5E300F3C
P 8675 4100
F 0 "Q8" H 8525 4225 50  0000 L CNN
F 1 "BC557" V 8925 4000 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8875 4025 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 8675 4100 50  0001 L CNN
	1    8675 4100
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q14
U 1 1 5E36DFB0
P 9175 4100
F 0 "Q14" H 9000 4225 50  0000 L CNN
F 1 "BC557" H 9366 4055 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9375 4025 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 9175 4100 50  0001 L CNN
	1    9175 4100
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q9
U 1 1 5E37A000
P 8675 4825
F 0 "Q9" H 8525 4950 50  0000 L CNN
F 1 "BC557" V 8925 4725 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8875 4750 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 8675 4825 50  0001 L CNN
	1    8675 4825
	1    0    0    1   
$EndComp
Connection ~ 8475 4100
Wire Wire Line
	8475 4100 8475 4050
$Comp
L Transistor_BJT:BC557 Q7
U 1 1 5E3A0AED
P 8675 3475
F 0 "Q7" H 8525 3600 50  0000 L CNN
F 1 "BC557" V 8925 3375 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8875 3400 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 8675 3475 50  0001 L CNN
	1    8675 3475
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q13
U 1 1 5E3A0AF3
P 9175 3475
F 0 "Q13" H 9000 3600 50  0000 L CNN
F 1 "BC557" H 9366 3430 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9375 3400 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 9175 3475 50  0001 L CNN
	1    9175 3475
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q6
U 1 1 5E3A8C63
P 8675 2850
F 0 "Q6" H 8525 2975 50  0000 L CNN
F 1 "BC557" V 8925 2750 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8875 2775 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 8675 2850 50  0001 L CNN
	1    8675 2850
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q12
U 1 1 5E3A8C69
P 9175 2850
F 0 "Q12" H 9000 2975 50  0000 L CNN
F 1 "BC557" H 9366 2805 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9375 2775 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 9175 2850 50  0001 L CNN
	1    9175 2850
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q5
U 1 1 5E3B0CCD
P 8675 2225
F 0 "Q5" H 8525 2350 50  0000 L CNN
F 1 "BC557" V 8925 2125 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8875 2150 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 8675 2225 50  0001 L CNN
	1    8675 2225
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q11
U 1 1 5E3B0CD3
P 9175 2225
F 0 "Q11" H 9000 2350 50  0000 L CNN
F 1 "BC557" H 9366 2180 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9375 2150 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 9175 2225 50  0001 L CNN
	1    9175 2225
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q10
U 1 1 5E3BC860
P 9025 1525
F 0 "Q10" H 8925 1675 50  0000 L CNN
F 1 "BC557" H 8700 1400 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9225 1450 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 9025 1525 50  0001 L CNN
	1    9025 1525
	-1   0    0    1   
$EndComp
Connection ~ 8475 2225
Wire Wire Line
	8475 2225 8475 2125
Connection ~ 8475 2850
Wire Wire Line
	8475 2850 8475 2800
Connection ~ 8475 3475
Wire Wire Line
	8475 3475 8475 3425
Connection ~ 8475 4825
Wire Wire Line
	8475 4825 8475 4725
Connection ~ 9375 2225
Wire Wire Line
	9375 2225 9375 2125
$Comp
L Device:R_Variable R40
U 1 1 5DF87DEF
P 9900 2275
F 0 "R40" H 10028 2321 50  0000 L CNN
F 1 "100k" H 9975 2225 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" V 9830 2275 50  0001 C CNN
F 3 "~" H 9900 2275 50  0001 C CNN
	1    9900 2275
	1    0    0    -1  
$EndComp
Text Notes 9925 3800 0    50   ~ 0
feedback
$Comp
L Device:R R31
U 1 1 5DD589A2
P 8475 4575
F 0 "R31" H 8275 4650 50  0000 L CNN
F 1 "150" V 8475 4500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8405 4575 50  0001 C CNN
F 3 "~" H 8475 4575 50  0001 C CNN
	1    8475 4575
	1    0    0    -1  
$EndComp
$Comp
L Device:R R32
U 1 1 5DDB9323
P 8475 5200
F 0 "R32" H 8275 5275 50  0000 L CNN
F 1 "220" V 8475 5125 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8405 5200 50  0001 C CNN
F 3 "~" H 8475 5200 50  0001 C CNN
	1    8475 5200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC557 Q15
U 1 1 5E37A006
P 9175 4825
F 0 "Q15" H 9000 4950 50  0000 L CNN
F 1 "BC557" H 9366 4780 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9375 4750 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 9175 4825 50  0001 L CNN
	1    9175 4825
	-1   0    0    1   
$EndComp
Wire Wire Line
	9975 4575 9900 4575
Wire Wire Line
	9825 4375 9900 4375
$Comp
L Amplifier_Operational:TL074 U1
U 3 1 5DF27280
P 10275 4475
F 0 "U1" H 10300 4650 50  0000 C CNN
F 1 "TL074" H 10250 4475 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10225 4575 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 10325 4675 50  0001 C CNN
	3    10275 4475
	1    0    0    1   
$EndComp
$Comp
L Device:R R37
U 1 1 5DF2728A
P 9675 4575
F 0 "R37" V 9575 4550 50  0000 L CNN
F 1 "10k" V 9675 4500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9605 4575 50  0001 C CNN
F 3 "~" H 9675 4575 50  0001 C CNN
	1    9675 4575
	0    1    -1   0   
$EndComp
$Comp
L Device:R R36
U 1 1 5DF27294
P 9675 4375
F 0 "R36" V 9775 4350 50  0000 L CNN
F 1 "10k" V 9675 4300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9605 4375 50  0001 C CNN
F 3 "~" H 9675 4375 50  0001 C CNN
	1    9675 4375
	0    1    -1   0   
$EndComp
$Comp
L Device:R R43
U 1 1 5DF2729E
P 10250 4150
F 0 "R43" V 10350 4075 50  0000 L CNN
F 1 "1Meg" V 10250 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10180 4150 50  0001 C CNN
F 3 "~" H 10250 4150 50  0001 C CNN
	1    10250 4150
	0    1    -1   0   
$EndComp
Connection ~ 9900 4375
Wire Wire Line
	9900 4375 9975 4375
$Comp
L Device:R R42
U 1 1 5DF272AA
P 9900 4825
F 0 "R42" H 9975 4800 50  0000 L CNN
F 1 "1Meg" V 9900 4725 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9830 4825 50  0001 C CNN
F 3 "~" H 9900 4825 50  0001 C CNN
	1    9900 4825
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9900 4675 9900 4575
Connection ~ 9900 4575
Wire Wire Line
	9900 4575 9825 4575
Text Notes 10000 4875 0    50   ~ 0
differential to\nsingle-ended
Wire Wire Line
	9900 4150 10100 4150
Wire Wire Line
	9900 4150 9900 4375
Wire Wire Line
	10400 4150 10575 4150
Wire Wire Line
	10575 4150 10575 4475
$Comp
L power:GND #PWR022
U 1 1 5DFCD5D9
P 9900 4975
F 0 "#PWR022" H 9900 4725 50  0001 C CNN
F 1 "GND" H 9900 4825 50  0001 C CNN
F 2 "" H 9900 4975 50  0001 C CNN
F 3 "" H 9900 4975 50  0001 C CNN
	1    9900 4975
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5DCE35D7
P 8925 4575
F 0 "C6" V 8875 4350 50  0000 C CNN
F 1 "47n" V 8975 4325 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8963 4425 50  0001 C CNN
F 3 "~" H 8925 4575 50  0001 C CNN
	1    8925 4575
	0    -1   1    0   
$EndComp
Connection ~ 8775 4575
Wire Wire Line
	8775 4575 8775 4625
Connection ~ 9075 4575
Wire Wire Line
	9075 4575 9075 4300
Wire Wire Line
	9075 4625 9075 4575
Wire Wire Line
	9075 4575 9525 4575
Wire Wire Line
	8775 4300 8775 4425
Wire Wire Line
	9375 4425 8775 4425
Connection ~ 8775 4425
Wire Wire Line
	8775 4425 8775 4575
Wire Wire Line
	9375 4425 9375 4375
Wire Wire Line
	9375 4375 9525 4375
Wire Wire Line
	10575 4150 10575 3825
Wire Wire Line
	10575 3825 9900 3825
Connection ~ 10575 4150
$Comp
L Jumper:Jumper_2_Bridged JP1
U 1 1 5DD3CFE2
P 2600 3600
F 0 "JP1" H 2600 3703 50  0000 C CNN
F 1 "Jumper_2_Bridged" H 2600 3704 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2600 3600 50  0001 C CNN
F 3 "~" H 2600 3600 50  0001 C CNN
	1    2600 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5DD3E1B6
P 2950 3600
F 0 "C8" V 2800 3600 50  0000 C CNN
F 1 "1n" V 3100 3600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2988 3450 50  0001 C CNN
F 3 "~" H 2950 3600 50  0001 C CNN
	1    2950 3600
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q19
U 1 1 5DD407CF
P 3450 3600
F 0 "Q19" H 3656 3646 50  0000 L CNN
F 1 "2N7000" H 3656 3555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3650 3525 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 3450 3600 50  0001 L CNN
	1    3450 3600
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR031
U 1 1 5DD54441
P 3550 3900
F 0 "#PWR031" H 3550 3750 50  0001 C CNN
F 1 "VEE" H 3568 4073 50  0000 C CNN
F 2 "" H 3550 3900 50  0001 C CNN
F 3 "" H 3550 3900 50  0001 C CNN
	1    3550 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 3900 3550 3800
$Comp
L power:VEE #PWR029
U 1 1 5DD3FBCD
P 3100 3900
F 0 "#PWR029" H 3100 3750 50  0001 C CNN
F 1 "VEE" H 3118 4073 50  0000 C CNN
F 2 "" H 3100 3900 50  0001 C CNN
F 3 "" H 3100 3900 50  0001 C CNN
	1    3100 3900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R50
U 1 1 5DD3F133
P 3100 3750
F 0 "R50" H 3000 3800 50  0000 C CNN
F 1 "1k" V 3100 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3030 3750 50  0001 C CNN
F 3 "~" H 3100 3750 50  0001 C CNN
	1    3100 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 3600 3250 3600
Connection ~ 3100 3600
Text GLabel 3600 3350 2    50   Input ~ 0
sync_out1
Wire Wire Line
	3600 3350 3550 3350
Wire Wire Line
	3550 3350 3550 3400
Text Notes 3050 3475 0    50   ~ 0
sync pulse\ngeneration
Connection ~ 1675 3600
Text GLabel 1900 3600 3    50   Input ~ 0
square_ctl_buf1
Text Notes 9900 1975 2    50   ~ 0
current mirror as\nvoltage controlled\ncurrent source
Text Notes 9525 4075 1    50   ~ 0
transistor ladder VCF
Text GLabel 10575 4475 2    50   Input ~ 0
vcf_audio_out
Text GLabel 4800 3700 0    50   Input ~ 0
vco1_in
$Comp
L Device:R_POT R57
U 1 1 5DEF116D
P 4850 3900
F 0 "R57" V 4735 3900 50  0000 C CNN
F 1 "10k" V 4850 3900 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 4850 3900 50  0001 C CNN
F 3 "~" H 4850 3900 50  0001 C CNN
	1    4850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3700 4850 3700
Wire Wire Line
	4850 3700 4850 3750
$Comp
L power:GND #PWR047
U 1 1 5DEFCD9E
P 4850 4050
F 0 "#PWR047" H 4850 3800 50  0001 C CNN
F 1 "GND" H 4855 3877 50  0000 C CNN
F 2 "" H 4850 4050 50  0001 C CNN
F 3 "" H 4850 4050 50  0001 C CNN
	1    4850 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R60
U 1 1 5DEFD971
P 5150 3900
F 0 "R60" V 5250 3925 50  0000 L CNN
F 1 "10k" V 5150 3825 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5080 3900 50  0001 C CNN
F 3 "~" H 5150 3900 50  0001 C CNN
	1    5150 3900
	0    -1   1    0   
$EndComp
Text GLabel 4800 4400 0    50   Input ~ 0
vco2_in
$Comp
L Device:R_POT R58
U 1 1 5DEFFDC3
P 4850 4600
F 0 "R58" V 4735 4600 50  0000 C CNN
F 1 "10k" V 4850 4600 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 4850 4600 50  0001 C CNN
F 3 "~" H 4850 4600 50  0001 C CNN
	1    4850 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4400 4850 4400
Wire Wire Line
	4850 4400 4850 4450
$Comp
L power:GND #PWR048
U 1 1 5DEFFDCF
P 4850 4750
F 0 "#PWR048" H 4850 4500 50  0001 C CNN
F 1 "GND" H 4855 4577 50  0000 C CNN
F 2 "" H 4850 4750 50  0001 C CNN
F 3 "" H 4850 4750 50  0001 C CNN
	1    4850 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R61
U 1 1 5DEFFDD9
P 5150 4600
F 0 "R61" V 5250 4625 50  0000 L CNN
F 1 "10k" V 5150 4525 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5080 4600 50  0001 C CNN
F 3 "~" H 5150 4600 50  0001 C CNN
	1    5150 4600
	0    -1   1    0   
$EndComp
Text Notes 4475 4100 0    50   ~ 0
mixer
Text GLabel 5300 4600 2    50   Input ~ 0
mixer_out
$Comp
L Jumper:Jumper_3_Bridged12 JP3
U 1 1 5DF29DFE
P 1075 6450
F 0 "JP3" H 1075 6563 50  0000 C CNN
F 1 "Jumper_3_Bridged12" H 1075 6563 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1075 6450 50  0001 C CNN
F 3 "~" H 1075 6450 50  0001 C CNN
	1    1075 6450
	1    0    0    -1  
$EndComp
Text GLabel 1375 6500 3    50   Input ~ 0
vca_audio_in
Text GLabel 1075 6600 3    50   Input ~ 0
mixer_out
Text GLabel 775  6500 3    50   Input ~ 0
vcf_audio_in
Wire Wire Line
	825  6450 775  6450
Wire Wire Line
	775  6450 775  6500
Wire Wire Line
	5300 3900 5300 4600
Wire Wire Line
	1375 6500 1375 6450
Wire Wire Line
	1375 6450 1325 6450
Text GLabel 1175 5575 0    50   Input ~ 0
square_ctl1
Text GLabel 1175 5675 0    50   Input ~ 0
square_ctl_buf1
Text GLabel 1175 6075 0    50   Input ~ 0
sync_out1
Text GLabel 1675 6075 2    50   Input ~ 0
sync_out2
Text GLabel 1675 5675 2    50   Input ~ 0
square_ctl_buf2
Text GLabel 1675 5575 2    50   Input ~ 0
square_ctl2
$Comp
L power:GND #PWR037
U 1 1 5E051F30
P 2375 6675
F 0 "#PWR037" H 2375 6425 50  0001 C CNN
F 1 "GND" H 2380 6502 50  0000 C CNN
F 2 "" H 2375 6675 50  0001 C CNN
F 3 "" H 2375 6675 50  0001 C CNN
	1    2375 6675
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR036
U 1 1 5E05362F
P 1875 6675
F 0 "#PWR036" H 1875 6525 50  0001 C CNN
F 1 "VEE" H 1893 6848 50  0000 C CNN
F 2 "" H 1875 6675 50  0001 C CNN
F 3 "" H 1875 6675 50  0001 C CNN
	1    1875 6675
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR035
U 1 1 5E054C84
P 1875 6575
F 0 "#PWR035" H 1875 6425 50  0001 C CNN
F 1 "VCC" H 1892 6748 50  0000 C CNN
F 2 "" H 1875 6575 50  0001 C CNN
F 3 "" H 1875 6575 50  0001 C CNN
	1    1875 6575
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J3
U 1 1 5E056F10
P 2075 6575
F 0 "J3" H 2125 6700 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 2125 6701 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 2075 6575 50  0001 C CNN
F 3 "~" H 2075 6575 50  0001 C CNN
	1    2075 6575
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5E0FF54D
P 5675 7325
F 0 "C10" H 5550 7425 50  0000 L CNN
F 1 "1u" H 5550 7225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5713 7175 50  0001 C CNN
F 3 "~" H 5675 7325 50  0001 C CNN
	1    5675 7325
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5E10C783
P 5900 7325
F 0 "C11" H 5775 7425 50  0000 L CNN
F 1 "1u" H 5775 7225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5938 7175 50  0001 C CNN
F 3 "~" H 5900 7325 50  0001 C CNN
	1    5900 7325
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 5E10CB1F
P 5675 7475
F 0 "#PWR040" H 5675 7225 50  0001 C CNN
F 1 "GND" H 5680 7302 50  0000 C CNN
F 2 "" H 5675 7475 50  0001 C CNN
F 3 "" H 5675 7475 50  0001 C CNN
	1    5675 7475
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 5E10D2B0
P 5900 7475
F 0 "#PWR042" H 5900 7225 50  0001 C CNN
F 1 "GND" H 5905 7302 50  0000 C CNN
F 2 "" H 5900 7475 50  0001 C CNN
F 3 "" H 5900 7475 50  0001 C CNN
	1    5900 7475
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 7100 5675 7100
Wire Wire Line
	5675 7100 5675 7175
Wire Wire Line
	5600 6800 5900 6800
Wire Wire Line
	5900 6800 5900 7175
$Comp
L Device:R_POT R53
U 1 1 5E12A7CE
P 6200 7250
F 0 "R53" H 6131 7296 50  0000 R CNN
F 1 "1k" V 6200 7300 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 6200 7250 50  0001 C CNN
F 3 "~" H 6200 7250 50  0001 C CNN
	1    6200 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT R54
U 1 1 5E1317B6
P 6475 6950
F 0 "R54" H 6406 6996 50  0000 R CNN
F 1 "1k" V 6475 7000 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 6475 6950 50  0001 C CNN
F 3 "~" H 6475 6950 50  0001 C CNN
	1    6475 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5675 7100 6200 7100
Connection ~ 5675 7100
Wire Wire Line
	5900 6800 6475 6800
Connection ~ 5900 6800
Wire Wire Line
	6475 7100 6475 7400
$Comp
L power:GND #PWR043
U 1 1 5E14B5EA
P 6200 7400
F 0 "#PWR043" H 6200 7150 50  0001 C CNN
F 1 "GND" H 6205 7227 50  0000 C CNN
F 2 "" H 6200 7400 50  0001 C CNN
F 3 "" H 6200 7400 50  0001 C CNN
	1    6200 7400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR044
U 1 1 5E14B87F
P 6475 7400
F 0 "#PWR044" H 6475 7150 50  0001 C CNN
F 1 "GND" H 6480 7227 50  0000 C CNN
F 2 "" H 6475 7400 50  0001 C CNN
F 3 "" H 6475 7400 50  0001 C CNN
	1    6475 7400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5E1550B9
P 6725 6750
F 0 "J4" V 6833 6562 50  0000 R CNN
F 1 "Conn_01x02_Male" V 6878 6794 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6725 6750 50  0001 C CNN
F 3 "~" H 6725 6750 50  0001 C CNN
	1    6725 6750
	0    -1   1    0   
$EndComp
Wire Wire Line
	6625 6950 6725 6950
Wire Wire Line
	6825 7250 6825 6950
Wire Wire Line
	6350 7250 6825 7250
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J2
U 1 1 5E187B3E
P 1000 7525
F 0 "J2" H 1050 7650 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 1050 7651 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 1000 7525 50  0001 C CNN
F 3 "~" H 1000 7525 50  0001 C CNN
	1    1000 7525
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR033
U 1 1 5E189477
P 800 7525
F 0 "#PWR033" H 800 7375 50  0001 C CNN
F 1 "+3.3V" H 815 7698 50  0000 C CNN
F 2 "" H 800 7525 50  0001 C CNN
F 3 "" H 800 7525 50  0001 C CNN
	1    800  7525
	1    0    0    -1  
$EndComp
Text GLabel 1300 7525 2    50   Input ~ 0
PB12
Text GLabel 1300 7625 2    50   Input ~ 0
PB13
Text GLabel 800  7625 0    50   Input ~ 0
PB15
NoConn ~ 2375 6575
Wire Notes Line
	4450 550  4450 2900
$Comp
L Device:R R38
U 1 1 5E3EFEBB
P 9700 1525
F 0 "R38" H 9550 1725 50  0000 L CNN
F 1 "10k" V 9700 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9630 1525 50  0001 C CNN
F 3 "~" H 9700 1525 50  0001 C CNN
	1    9700 1525
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R39
U 1 1 5E3EFEC5
P 9875 1525
F 0 "R39" H 9925 1525 50  0000 L CNN
F 1 "10k" H 9925 1450 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" V 9805 1525 50  0001 C CNN
F 3 "~" H 9875 1525 50  0001 C CNN
	1    9875 1525
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR021
U 1 1 5E3EFECF
P 9875 1375
F 0 "#PWR021" H 9875 1225 50  0001 C CNN
F 1 "VCC" H 9975 1475 50  0000 C CNN
F 2 "" H 9875 1375 50  0001 C CNN
F 3 "" H 9875 1375 50  0001 C CNN
	1    9875 1375
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR020
U 1 1 5E3EFEF7
P 9225 1325
F 0 "#PWR020" H 9225 1175 50  0001 C CNN
F 1 "VCC" H 9125 1400 50  0000 C CNN
F 2 "" H 9225 1325 50  0001 C CNN
F 3 "" H 9225 1325 50  0001 C CNN
	1    9225 1325
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8925 1325 9225 1325
Connection ~ 9225 1325
Wire Wire Line
	9225 1325 9525 1325
Wire Wire Line
	9225 1525 9225 1725
Wire Wire Line
	9700 1725 9700 1675
Wire Wire Line
	9875 1725 9875 1675
Wire Wire Line
	9700 1375 9700 1175
Connection ~ 9700 1725
Wire Wire Line
	9700 1725 9875 1725
Wire Wire Line
	9225 1725 9525 1725
Connection ~ 9525 1725
Wire Wire Line
	9525 1725 9700 1725
Connection ~ 9225 1525
Text Notes 10775 2850 1    50   ~ 0
offset compensation: the OpAmp would\nneed to output exactly Vcc - 0.7V (i.e., the voltage\nat the transistor's base) in order to fully close the\nVCF. However, the OpAmp is limited to approx. Vcc-1.5V,\nso we inject some current through this trimming poti.\nWhen the OpAmp is at its Vmax, tune this poti such that\nthe VCF is just fully closed.\n
Connection ~ 8800 1175
Wire Wire Line
	9700 1175 8800 1175
$Comp
L power:VEE #PWR015
U 1 1 5E3C6C3C
P 7550 1400
F 0 "#PWR015" H 7550 1250 50  0001 C CNN
F 1 "VEE" H 7675 1500 50  0000 C CNN
F 2 "" H 7550 1400 50  0001 C CNN
F 3 "" H 7550 1400 50  0001 C CNN
	1    7550 1400
	-1   0    0    1   
$EndComp
Connection ~ 8200 750 
$Comp
L power:GND #PWR018
U 1 1 5E371B63
P 8200 1275
F 0 "#PWR018" H 8200 1025 50  0001 C CNN
F 1 "GND" H 8200 1125 50  0000 C CNN
F 2 "" H 8200 1275 50  0001 C CNN
F 3 "" H 8200 1275 50  0001 C CNN
	1    8200 1275
	1    0    0    -1  
$EndComp
Text Notes 6475 850  0    50   ~ 0
should be 2x 47k maybe
Wire Wire Line
	8200 750  8200 875 
Wire Wire Line
	8200 875  8200 1075
Connection ~ 8200 875 
Wire Wire Line
	7825 750  7900 750 
Text GLabel 7825 750  0    50   Input ~ 0
vcf_ctl1
$Comp
L Device:R R23
U 1 1 5E371BB5
P 8050 750
F 0 "R23" V 8100 850 50  0000 L CNN
F 1 "100k" V 8050 650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7980 750 50  0001 C CNN
F 3 "~" H 8050 750 50  0001 C CNN
	1    8050 750 
	0    -1   1    0   
$EndComp
Wire Wire Line
	7825 875  7900 875 
$Comp
L Amplifier_Operational:TL074 U1
U 4 1 5E371BA8
P 8500 1175
F 0 "U1" H 8525 1350 50  0000 C CNN
F 1 "TL074" H 8475 1175 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8450 1275 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8550 1375 50  0001 C CNN
	4    8500 1175
	1    0    0    1   
$EndComp
Text GLabel 7825 875  0    50   Input ~ 0
vcf_ctl2
$Comp
L Device:R R24
U 1 1 5E371B7C
P 8050 875
F 0 "R24" V 8100 975 50  0000 L CNN
F 1 "100k" V 8050 775 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7980 875 50  0001 C CNN
F 3 "~" H 8050 875 50  0001 C CNN
	1    8050 875 
	0    -1   1    0   
$EndComp
Wire Wire Line
	8375 750  8200 750 
Wire Wire Line
	8800 750  8675 750 
Wire Wire Line
	8800 1175 8800 750 
$Comp
L Device:R R33
U 1 1 5E371B6F
P 8525 750
F 0 "R33" V 8425 700 50  0000 L CNN
F 1 "100k" V 8525 650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8455 750 50  0001 C CNN
F 3 "~" H 8525 750 50  0001 C CNN
	1    8525 750 
	0    -1   1    0   
$EndComp
Wire Wire Line
	7950 625  8200 625 
Wire Wire Line
	8200 625  8200 750 
Text GLabel 7950 625  0    50   Input ~ 0
vcf_ctl_raw
Text Notes 10150 1725 1    50   ~ 0
set to 7.26k
Wire Notes Line
	9825 2075 10200 2075
Wire Notes Line
	10200 2075 10200 2875
$Comp
L Transistor_BJT:BC557 Q4
U 1 1 5E667B2B
P 2850 1100
F 0 "Q4" H 2775 1250 50  0000 L CNN
F 1 "BC557" H 2525 975 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3050 1025 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 2850 1100 50  0001 L CNN
	1    2850 1100
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q2
U 1 1 5E667B35
P 2450 1100
F 0 "Q2" H 2350 1250 50  0000 L CNN
F 1 "BC557" H 2125 975 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2650 1025 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 2450 1100 50  0001 L CNN
	1    2450 1100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R14
U 1 1 5E667B40
P 3125 1100
F 0 "R14" H 3025 1250 50  0000 L CNN
F 1 "100k" V 3125 1000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3055 1100 50  0001 C CNN
F 3 "~" H 3125 1100 50  0001 C CNN
	1    3125 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R16
U 1 1 5E667B4A
P 3300 1100
F 0 "R16" H 3350 1100 50  0000 L CNN
F 1 "100k" H 3350 1025 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" V 3230 1100 50  0001 C CNN
F 3 "~" H 3300 1100 50  0001 C CNN
	1    3300 1100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR011
U 1 1 5E667B54
P 3300 950
F 0 "#PWR011" H 3300 800 50  0001 C CNN
F 1 "VCC" H 3400 1050 50  0000 C CNN
F 2 "" H 3300 950 50  0001 C CNN
F 3 "" H 3300 950 50  0001 C CNN
	1    3300 950 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR08
U 1 1 5E667B5E
P 2650 900
F 0 "#PWR08" H 2650 750 50  0001 C CNN
F 1 "VCC" H 2550 975 50  0000 C CNN
F 2 "" H 2650 900 50  0001 C CNN
F 3 "" H 2650 900 50  0001 C CNN
	1    2650 900 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2350 900  2650 900 
Connection ~ 2650 900 
Wire Wire Line
	2650 900  2950 900 
Wire Wire Line
	2650 1100 2650 1300
Wire Wire Line
	3125 1300 3125 1250
Wire Wire Line
	3300 1300 3300 1250
Wire Wire Line
	3125 950  3125 750 
Connection ~ 3125 1300
Wire Wire Line
	3125 1300 3300 1300
Wire Wire Line
	2650 1300 2950 1300
Connection ~ 2950 1300
Wire Wire Line
	2950 1300 3125 1300
Connection ~ 2650 1100
Text Notes 3625 850  3    50   ~ 0
set to ~~47k
Text GLabel 1175 625  0    50   Input ~ 0
vca_ctl_raw
Wire Wire Line
	1425 625  1425 750 
Wire Wire Line
	1175 625  1425 625 
$Comp
L Device:R R6
U 1 1 5E667BC6
P 1750 750
F 0 "R6" V 1650 700 50  0000 L CNN
F 1 "100k" V 1750 650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1680 750 50  0001 C CNN
F 3 "~" H 1750 750 50  0001 C CNN
	1    1750 750 
	0    -1   1    0   
$EndComp
Wire Wire Line
	2025 1175 2025 750 
Wire Wire Line
	2025 750  1900 750 
Wire Wire Line
	1600 750  1425 750 
$Comp
L Device:R R4
U 1 1 5E667BB9
P 1275 875
F 0 "R4" V 1325 975 50  0000 L CNN
F 1 "100k" V 1275 775 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1205 875 50  0001 C CNN
F 3 "~" H 1275 875 50  0001 C CNN
	1    1275 875 
	0    -1   1    0   
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 1 1 5E667BAE
P 1725 1175
F 0 "U1" H 1750 1350 50  0000 C CNN
F 1 "TL074" H 1700 1175 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1675 1275 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1775 1375 50  0001 C CNN
	1    1725 1175
	1    0    0    1   
$EndComp
Wire Wire Line
	1050 875  1125 875 
$Comp
L Device:R R3
U 1 1 5E667BA3
P 1275 750
F 0 "R3" V 1325 850 50  0000 L CNN
F 1 "100k" V 1275 650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1205 750 50  0001 C CNN
F 3 "~" H 1275 750 50  0001 C CNN
	1    1275 750 
	0    -1   1    0   
$EndComp
Text GLabel 1050 750  0    50   Input ~ 0
vca_ctl1
Wire Wire Line
	1050 750  1125 750 
Connection ~ 1425 875 
Wire Wire Line
	1425 875  1425 1075
Wire Wire Line
	1425 750  1425 875 
Text Notes 700  550  0    50   ~ 0
should be 2x 47k maybe
$Comp
L power:GND #PWR04
U 1 1 5E667B93
P 1425 1275
F 0 "#PWR04" H 1425 1025 50  0001 C CNN
F 1 "GND" H 1425 1125 50  0000 C CNN
F 2 "" H 1425 1275 50  0001 C CNN
F 3 "" H 1425 1275 50  0001 C CNN
	1    1425 1275
	1    0    0    -1  
$EndComp
Connection ~ 1425 750 
Text Notes 600  1125 0    50   ~ 0
set to 100k
$Comp
L power:VEE #PWR03
U 1 1 5E667B87
P 1075 1125
F 0 "#PWR03" H 1075 975 50  0001 C CNN
F 1 "VEE" H 1093 1298 50  0000 C CNN
F 2 "" H 1075 1125 50  0001 C CNN
F 3 "" H 1075 1125 50  0001 C CNN
	1    1075 1125
	-1   0    0    1   
$EndComp
Wire Wire Line
	1075 1125 1075 1075
Wire Wire Line
	1075 1075 1125 1075
$Comp
L Device:RTRIM R5
U 1 1 5E667B7B
P 1275 1075
F 0 "R5" V 1175 950 50  0000 C CNN
F 1 "200k" V 1175 1125 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" V 1205 1075 50  0001 C CNN
F 3 "~" H 1275 1075 50  0001 C CNN
	1    1275 1075
	0    1    -1   0   
$EndComp
Connection ~ 1425 1075
Text Notes 525  1850 0    50   ~ 0
set such, that with\nzero control input,\nthe output of the op\namp is just at maxi-\nmum (i.e., Vcc minus\nlike 1 V or so)
Wire Wire Line
	2025 750  3125 750 
Connection ~ 2025 750 
$Comp
L power:GND #PWR050
U 1 1 5E7AF844
P 6775 5250
F 0 "#PWR050" H 6775 5000 50  0001 C CNN
F 1 "GND" H 6780 5077 50  0000 C CNN
F 2 "" H 6775 5250 50  0001 C CNN
F 3 "" H 6775 5250 50  0001 C CNN
	1    6775 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5E7B061B
P 6775 5100
F 0 "C13" H 6625 5000 50  0000 L CNN
F 1 "any" H 6890 5055 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6813 4950 50  0001 C CNN
F 3 "~" H 6775 5100 50  0001 C CNN
	1    6775 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R65
U 1 1 5E7BA9B6
P 6625 4875
F 0 "R65" V 6675 5050 50  0000 C CNN
F 1 "any" V 6500 4800 50  0001 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" V 6555 4875 50  0001 C CNN
F 3 "~" H 6625 4875 50  0001 C CNN
	1    6625 4875
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR051
U 1 1 5E7D5649
P 7075 5250
F 0 "#PWR051" H 7075 5000 50  0001 C CNN
F 1 "GND" H 7080 5077 50  0000 C CNN
F 2 "" H 7075 5250 50  0001 C CNN
F 3 "" H 7075 5250 50  0001 C CNN
	1    7075 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R64
U 1 1 5E7D565D
P 6625 4700
F 0 "R64" V 6675 4875 50  0000 C CNN
F 1 "any" V 6500 4625 50  0001 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" V 6555 4700 50  0001 C CNN
F 3 "~" H 6625 4700 50  0001 C CNN
	1    6625 4700
	0    1    -1   0   
$EndComp
Wire Wire Line
	6775 4700 7075 4700
Wire Wire Line
	7075 4700 7075 4950
$Comp
L Device:C C14
U 1 1 5E7EABA3
P 7075 5100
F 0 "C14" H 6925 5000 50  0000 L CNN
F 1 "any" H 7190 5055 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7113 4950 50  0001 C CNN
F 3 "~" H 7075 5100 50  0001 C CNN
	1    7075 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR052
U 1 1 5E7EABAD
P 7375 5250
F 0 "#PWR052" H 7375 5000 50  0001 C CNN
F 1 "GND" H 7380 5077 50  0000 C CNN
F 2 "" H 7375 5250 50  0001 C CNN
F 3 "" H 7375 5250 50  0001 C CNN
	1    7375 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5E7EABB7
P 7375 5100
F 0 "C15" H 7225 5000 50  0000 L CNN
F 1 "any" H 7490 5055 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7413 4950 50  0001 C CNN
F 3 "~" H 7375 5100 50  0001 C CNN
	1    7375 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R63
U 1 1 5E7F515B
P 6625 4525
F 0 "R63" V 6675 4700 50  0000 C CNN
F 1 "any" V 6500 4450 50  0001 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" V 6555 4525 50  0001 C CNN
F 3 "~" H 6625 4525 50  0001 C CNN
	1    6625 4525
	0    1    -1   0   
$EndComp
Wire Wire Line
	6775 4525 7375 4525
Wire Wire Line
	7375 4525 7375 4950
Wire Wire Line
	6775 4875 6775 4950
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J5
U 1 1 5E82F989
P 6975 4200
F 0 "J5" H 7025 3975 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 7025 4426 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 6975 4200 50  0001 C CNN
F 3 "~" H 6975 4200 50  0001 C CNN
	1    6975 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6775 4300 6475 4300
Wire Wire Line
	6475 4300 6475 4525
Wire Wire Line
	6775 4200 6400 4200
Wire Wire Line
	6400 4200 6400 4700
Wire Wire Line
	6400 4700 6475 4700
Wire Wire Line
	6775 4100 6325 4100
Wire Wire Line
	6325 4100 6325 4875
Wire Wire Line
	6325 4875 6475 4875
Wire Wire Line
	7375 4525 7375 4300
Wire Wire Line
	7375 4300 7275 4300
Connection ~ 7375 4525
Wire Wire Line
	7075 4700 7450 4700
Wire Wire Line
	7450 4700 7450 4200
Wire Wire Line
	7450 4200 7275 4200
Connection ~ 7075 4700
Wire Wire Line
	6775 4875 7525 4875
Wire Wire Line
	7525 4875 7525 4100
Wire Wire Line
	7525 4100 7275 4100
Connection ~ 6775 4875
Text Notes 6300 5475 0    50   ~ 0
general\npurpose\nlow pass\nfilters
Wire Notes Line
	6275 4000 7575 4000
Wire Notes Line
	7575 4000 7575 5500
Wire Notes Line
	7575 5500 6275 5500
Wire Notes Line
	6275 4000 6275 5500
Text Notes 450  300  0    50   ~ 0
TODO\n- connectors\n- some potis
Text Notes 7400 1700 0    50   ~ 0
or connect (-) with ~~100k to VEE\n(like the VCA)
$Comp
L Device:R_POT R20
U 1 1 5DCFDA87
P 7550 1250
F 0 "R20" H 7675 1375 50  0000 C CNN
F 1 "100k" V 7550 1250 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 7550 1250 50  0001 C CNN
F 3 "~" H 7550 1250 50  0001 C CNN
	1    7550 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R25
U 1 1 5DD3D8B2
P 8050 1075
F 0 "R25" V 8000 1175 50  0000 L CNN
F 1 "47k" V 8050 1000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7980 1075 50  0001 C CNN
F 3 "~" H 8050 1075 50  0001 C CNN
	1    8050 1075
	0    -1   1    0   
$EndComp
Connection ~ 8200 1075
$Comp
L power:VCC #PWR014
U 1 1 5DD4583C
P 7550 1100
F 0 "#PWR014" H 7550 950 50  0001 C CNN
F 1 "VCC" H 7425 1175 50  0000 C CNN
F 2 "" H 7550 1100 50  0001 C CNN
F 3 "" H 7550 1100 50  0001 C CNN
	1    7550 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1075 7825 1075
Wire Wire Line
	7825 1075 7825 1250
Wire Wire Line
	7825 1250 7700 1250
Text GLabel 6100 950  2    50   Input ~ 0
vcf_ctl2
$Comp
L Device:R_POT R19
U 1 1 5DDA947B
P 6100 1100
F 0 "R19" V 6000 1125 50  0000 C CNN
F 1 "10k" V 6100 1100 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 6100 1100 50  0001 C CNN
F 3 "~" H 6100 1100 50  0001 C CNN
	1    6100 1100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5DDF0531
P 6250 1100
F 0 "#PWR013" H 6250 850 50  0001 C CNN
F 1 "GND" H 6255 927 50  0001 C CNN
F 2 "" H 6250 1100 50  0001 C CNN
F 3 "" H 6250 1100 50  0001 C CNN
	1    6250 1100
	1    0    0    -1  
$EndComp
Text GLabel 6100 600  2    50   Input ~ 0
vcf_ctl1
$Comp
L Device:R_POT R18
U 1 1 5DDF0D1B
P 6100 750
F 0 "R18" V 6000 775 50  0000 C CNN
F 1 "10k" V 6100 750 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 6100 750 50  0001 C CNN
F 3 "~" H 6100 750 50  0001 C CNN
	1    6100 750 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5DDF0D25
P 6250 750
F 0 "#PWR012" H 6250 500 50  0001 C CNN
F 1 "GND" H 6255 577 50  0001 C CNN
F 2 "" H 6250 750 50  0001 C CNN
F 3 "" H 6250 750 50  0001 C CNN
	1    6250 750 
	1    0    0    -1  
$EndComp
Text GLabel 6100 1675 2    50   Input ~ 0
vca_ctl2
$Comp
L Device:R_POT R2
U 1 1 5DE0C3D1
P 6100 1825
F 0 "R2" V 6000 1850 50  0000 C CNN
F 1 "10k" V 6100 1825 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 6100 1825 50  0001 C CNN
F 3 "~" H 6100 1825 50  0001 C CNN
	1    6100 1825
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5DE0C3D7
P 6250 1825
F 0 "#PWR02" H 6250 1575 50  0001 C CNN
F 1 "GND" H 6255 1652 50  0001 C CNN
F 2 "" H 6250 1825 50  0001 C CNN
F 3 "" H 6250 1825 50  0001 C CNN
	1    6250 1825
	1    0    0    -1  
$EndComp
Text GLabel 6100 1325 2    50   Input ~ 0
vca_ctl1
$Comp
L Device:R_POT R1
U 1 1 5DE0C3DE
P 6100 1475
F 0 "R1" V 6000 1500 50  0000 C CNN
F 1 "10k" V 6100 1475 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 6100 1475 50  0001 C CNN
F 3 "~" H 6100 1475 50  0001 C CNN
	1    6100 1475
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5DE0C3E4
P 6250 1475
F 0 "#PWR01" H 6250 1225 50  0001 C CNN
F 1 "GND" H 6255 1302 50  0001 C CNN
F 2 "" H 6250 1475 50  0001 C CNN
F 3 "" H 6250 1475 50  0001 C CNN
	1    6250 1475
	1    0    0    -1  
$EndComp
Text GLabel 1050 875  0    50   Input ~ 0
vca_ctl2
$Comp
L Device:R R48
U 1 1 5DEBC798
P 2300 3750
F 0 "R48" H 2400 3650 50  0000 C CNN
F 1 "10k" V 2300 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2230 3750 50  0001 C CNN
F 3 "~" H 2300 3750 50  0001 C CNN
	1    2300 3750
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Zener D1
U 1 1 5DEBD121
P 2225 4050
F 0 "D1" V 2175 3875 50  0000 L CNN
F 1 "3V3" V 2275 3825 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2225 4050 50  0001 C CNN
F 3 "~" H 2225 4050 50  0001 C CNN
	1    2225 4050
	0    1    1    0   
$EndComp
$Comp
L Diode:1N5817 D3
U 1 1 5DEBDEB7
P 2375 4050
F 0 "D3" V 2329 4129 50  0000 L CNN
F 1 "1N5817" V 2420 4129 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2375 3875 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 2375 4050 50  0001 C CNN
	1    2375 4050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5DEC1769
P 2300 4200
F 0 "#PWR027" H 2300 3950 50  0001 C CNN
F 1 "GND" H 2305 4027 50  0001 C CNN
F 2 "" H 2300 4200 50  0001 C CNN
F 3 "" H 2300 4200 50  0001 C CNN
	1    2300 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2225 4200 2300 4200
Connection ~ 2300 4200
Wire Wire Line
	2300 4200 2375 4200
Wire Wire Line
	2225 3900 2300 3900
Connection ~ 2300 3900
Wire Wire Line
	2300 3900 2375 3900
Wire Wire Line
	1675 3600 2300 3600
Connection ~ 2300 3600
Wire Wire Line
	2300 3600 2400 3600
Text GLabel 2375 3900 2    50   Input ~ 0
clamped1
Text GLabel 1175 5775 0    50   Input ~ 0
square_ctl_buf1
Text GLabel 1175 5875 0    50   Input ~ 0
square_ctl_buf1
Text GLabel 1175 5975 0    50   Input ~ 0
clamped1
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J1
U 1 1 5DF1903C
P 1375 5775
F 0 "J1" H 1425 6100 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 1425 6101 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 1375 5775 50  0001 C CNN
F 3 "~" H 1375 5775 50  0001 C CNN
	1    1375 5775
	1    0    0    -1  
$EndComp
Text GLabel 1675 5775 2    50   Input ~ 0
square_ctl_buf2
Text GLabel 1675 5875 2    50   Input ~ 0
square_ctl_buf2
Text GLabel 1675 5975 2    50   Input ~ 0
clamped2
$Comp
L power:VEE #PWR026
U 1 1 5DF1DC09
P 1675 5050
F 0 "#PWR026" H 1675 4900 50  0001 C CNN
F 1 "VEE" H 1675 5225 50  0000 C CNN
F 2 "" H 1675 5050 50  0001 C CNN
F 3 "" H 1675 5050 50  0001 C CNN
	1    1675 5050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R47
U 1 1 5DF1DC13
P 1675 4900
F 0 "R47" H 1775 4800 50  0000 C CNN
F 1 "1k" V 1675 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1605 4900 50  0001 C CNN
F 3 "~" H 1675 4900 50  0001 C CNN
	1    1675 4900
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR025
U 1 1 5DF1DC1D
P 1675 4350
F 0 "#PWR025" H 1675 4200 50  0001 C CNN
F 1 "VCC" H 1675 4525 50  0000 C CNN
F 2 "" H 1675 4350 50  0001 C CNN
F 3 "" H 1675 4350 50  0001 C CNN
	1    1675 4350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q18
U 1 1 5DF1DC27
P 1575 4550
F 0 "Q18" H 1766 4596 50  0000 L CNN
F 1 "BC547" H 1766 4505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1775 4475 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 1575 4550 50  0001 L CNN
	1    1575 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R45
U 1 1 5DF1DC31
P 1225 4550
F 0 "R45" V 1125 4550 50  0000 C CNN
F 1 "10k" V 1225 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1155 4550 50  0001 C CNN
F 3 "~" H 1225 4550 50  0001 C CNN
	1    1225 4550
	0    1    1    0   
$EndComp
Text GLabel 1075 4550 0    50   Input ~ 0
square_ctl2
$Comp
L Jumper:Jumper_2_Bridged JP2
U 1 1 5DF1DC3C
P 2600 4750
F 0 "JP2" H 2600 4853 50  0000 C CNN
F 1 "Jumper_2_Bridged" H 2600 4854 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2600 4750 50  0001 C CNN
F 3 "~" H 2600 4750 50  0001 C CNN
	1    2600 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5DF1DC46
P 2950 4750
F 0 "C9" V 2800 4750 50  0000 C CNN
F 1 "1n" V 3100 4750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2988 4600 50  0001 C CNN
F 3 "~" H 2950 4750 50  0001 C CNN
	1    2950 4750
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q20
U 1 1 5DF1DC50
P 3450 4750
F 0 "Q20" H 3656 4796 50  0000 L CNN
F 1 "2N7000" H 3656 4705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3650 4675 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 3450 4750 50  0001 L CNN
	1    3450 4750
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR032
U 1 1 5DF1DC5A
P 3550 5050
F 0 "#PWR032" H 3550 4900 50  0001 C CNN
F 1 "VEE" H 3568 5223 50  0000 C CNN
F 2 "" H 3550 5050 50  0001 C CNN
F 3 "" H 3550 5050 50  0001 C CNN
	1    3550 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 5050 3550 4950
$Comp
L power:VEE #PWR030
U 1 1 5DF1DC65
P 3100 5050
F 0 "#PWR030" H 3100 4900 50  0001 C CNN
F 1 "VEE" H 3118 5223 50  0000 C CNN
F 2 "" H 3100 5050 50  0001 C CNN
F 3 "" H 3100 5050 50  0001 C CNN
	1    3100 5050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R51
U 1 1 5DF1DC6F
P 3100 4900
F 0 "R51" H 3000 4950 50  0000 C CNN
F 1 "1k" V 3100 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3030 4900 50  0001 C CNN
F 3 "~" H 3100 4900 50  0001 C CNN
	1    3100 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 4750 3250 4750
Connection ~ 3100 4750
Text GLabel 3600 4500 2    50   Input ~ 0
sync_out2
Wire Wire Line
	3600 4500 3550 4500
Wire Wire Line
	3550 4500 3550 4550
Text Notes 3050 4625 0    50   ~ 0
sync pulse\ngeneration
Connection ~ 1675 4750
Text GLabel 1875 4750 3    50   Input ~ 0
square_ctl_buf2
$Comp
L Device:R R49
U 1 1 5DF1DC81
P 2300 4900
F 0 "R49" H 2400 4800 50  0000 C CNN
F 1 "10k" V 2300 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2230 4900 50  0001 C CNN
F 3 "~" H 2300 4900 50  0001 C CNN
	1    2300 4900
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Zener D2
U 1 1 5DF1DC8B
P 2225 5200
F 0 "D2" V 2175 5025 50  0000 L CNN
F 1 "3V3" V 2275 4975 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2225 5200 50  0001 C CNN
F 3 "~" H 2225 5200 50  0001 C CNN
	1    2225 5200
	0    1    1    0   
$EndComp
$Comp
L Diode:1N5817 D4
U 1 1 5DF1DC95
P 2375 5200
F 0 "D4" V 2329 5279 50  0000 L CNN
F 1 "1N5817" V 2420 5279 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2375 5025 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 2375 5200 50  0001 C CNN
	1    2375 5200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5DF1DC9F
P 2300 5350
F 0 "#PWR028" H 2300 5100 50  0001 C CNN
F 1 "GND" H 2305 5177 50  0001 C CNN
F 2 "" H 2300 5350 50  0001 C CNN
F 3 "" H 2300 5350 50  0001 C CNN
	1    2300 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2225 5350 2300 5350
Connection ~ 2300 5350
Wire Wire Line
	2300 5350 2375 5350
Wire Wire Line
	2225 5050 2300 5050
Connection ~ 2300 5050
Wire Wire Line
	2300 5050 2375 5050
Wire Wire Line
	1675 4750 2300 4750
Connection ~ 2300 4750
Wire Wire Line
	2300 4750 2400 4750
Text GLabel 2375 5050 2    50   Input ~ 0
clamped2
Text Notes 2150 3550 0    50   ~ 0
clamp\nfor the\nSTM32\nmeasure-\nment pin
Wire Notes Line
	500  6200 500  2950
Wire Notes Line
	500  2950 4075 2950
Wire Notes Line
	4075 2950 4075 6200
Wire Notes Line
	4075 6200 500  6200
Text Notes 2350 6175 0    39   ~ 0
square_ctl swings between Vee and Vcc - 1.5V (circa).\nGNDREF is at (Vcc+Vee)/2, i.e. PE7 sees at least 3V for\nVcc-Vee = 9V.\nThe diodes protect the MCU pin from overvoltage (D1)\nand undervoltage (D2): The schottky diode D2 clamps\naway negative voltages (to approx. -200mV), while the\nzener diode D1 limits the voltage to 3.3V. That's within\nthe MCU specs.
Wire Notes Line
	4450 550  500  550 
Wire Notes Line
	500  550  500  2900
Wire Notes Line
	500  2900 4450 2900
Text GLabel 4800 5075 0    50   Input ~ 0
vco3_in
$Comp
L Device:R_POT R59
U 1 1 5E11C1A9
P 4850 5275
F 0 "R59" V 4735 5275 50  0000 C CNN
F 1 "10k" V 4850 5275 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 4850 5275 50  0001 C CNN
F 3 "~" H 4850 5275 50  0001 C CNN
	1    4850 5275
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5075 4850 5075
Wire Wire Line
	4850 5075 4850 5125
$Comp
L power:GND #PWR049
U 1 1 5E11C1B5
P 4850 5425
F 0 "#PWR049" H 4850 5175 50  0001 C CNN
F 1 "GND" H 4855 5252 50  0000 C CNN
F 2 "" H 4850 5425 50  0001 C CNN
F 3 "" H 4850 5425 50  0001 C CNN
	1    4850 5425
	1    0    0    -1  
$EndComp
$Comp
L Device:R R62
U 1 1 5E11C1BF
P 5150 5275
F 0 "R62" V 5250 5300 50  0000 L CNN
F 1 "10k" V 5150 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5080 5275 50  0001 C CNN
F 3 "~" H 5150 5275 50  0001 C CNN
	1    5150 5275
	0    -1   1    0   
$EndComp
Wire Wire Line
	5300 5275 5300 4600
Connection ~ 5300 4600
Wire Notes Line
	11175 525  6925 525 
Wire Notes Line
	6925 525  6925 2400
Wire Notes Line
	6925 2400 8050 3525
Wire Notes Line
	8050 3525 8050 5575
Wire Notes Line
	8050 5575 11175 5575
Wire Notes Line
	11175 525  11175 5575
Text Notes 10225 5550 0    50   ~ 0
voltage controlled filter
$Comp
L power:GND #PWR0101
U 1 1 5DEAC77F
P 2775 1800
F 0 "#PWR0101" H 2775 1550 50  0001 C CNN
F 1 "GND" H 2775 1650 50  0001 C CNN
F 2 "" H 2775 1800 50  0001 C CNN
F 3 "" H 2775 1800 50  0001 C CNN
	1    2775 1800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5DEDEEFF
P 1725 2725
F 0 "#PWR0102" H 1725 2475 50  0001 C CNN
F 1 "GND" H 1725 2575 50  0001 C CNN
F 2 "" H 1725 2725 50  0001 C CNN
F 3 "" H 1725 2725 50  0001 C CNN
	1    1725 2725
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5DFD1A89
P 7800 2425
F 0 "#PWR05" H 7800 2175 50  0001 C CNN
F 1 "GND" H 7805 2252 50  0001 C CNN
F 2 "" H 7800 2425 50  0001 C CNN
F 3 "" H 7800 2425 50  0001 C CNN
	1    7800 2425
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J6
U 1 1 5DD854EC
P 4775 5850
F 0 "J6" H 4825 5975 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 4825 5976 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 4775 5850 50  0001 C CNN
F 3 "~" H 4775 5850 50  0001 C CNN
	1    4775 5850
	1    0    0    -1  
$EndComp
Text GLabel 4575 5850 0    50   Input ~ 0
vco1_in
Text GLabel 4575 5950 0    50   Input ~ 0
vco2_in
Text GLabel 5075 5850 2    50   Input ~ 0
vco3_in
Text GLabel 5075 5950 2    50   Input ~ 0
mixer_out
$Comp
L power:+3.3V #PWR0103
U 1 1 5DE3FBDB
P 5875 6100
F 0 "#PWR0103" H 5875 5950 50  0001 C CNN
F 1 "+3.3V" H 5890 6273 50  0000 C CNN
F 2 "" H 5875 6100 50  0001 C CNN
F 3 "" H 5875 6100 50  0001 C CNN
	1    5875 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 5DE405B3
P 5875 6250
F 0 "C16" H 5750 6350 50  0000 L CNN
F 1 "10n" H 5750 6150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5913 6100 50  0001 C CNN
F 3 "~" H 5875 6250 50  0001 C CNN
	1    5875 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5DE4F55F
P 5875 6400
F 0 "#PWR0104" H 5875 6150 50  0001 C CNN
F 1 "GND" H 5880 6227 50  0000 C CNN
F 2 "" H 5875 6400 50  0001 C CNN
F 3 "" H 5875 6400 50  0001 C CNN
	1    5875 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0105
U 1 1 5DE5265D
P 6150 6100
F 0 "#PWR0105" H 6150 5950 50  0001 C CNN
F 1 "+3.3V" H 6165 6273 50  0000 C CNN
F 2 "" H 6150 6100 50  0001 C CNN
F 3 "" H 6150 6100 50  0001 C CNN
	1    6150 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 5DE52667
P 6150 6250
F 0 "C17" H 6025 6350 50  0000 L CNN
F 1 "1u" H 6025 6150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6188 6100 50  0001 C CNN
F 3 "~" H 6150 6250 50  0001 C CNN
	1    6150 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5DE52671
P 6150 6400
F 0 "#PWR0106" H 6150 6150 50  0001 C CNN
F 1 "GND" H 6155 6227 50  0000 C CNN
F 2 "" H 6150 6400 50  0001 C CNN
F 3 "" H 6150 6400 50  0001 C CNN
	1    6150 6400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 5 1 5DD2A120
P 1525 1175
F 0 "U1" H 1550 1350 50  0001 C CNN
F 1 "TL074" H 1500 1175 50  0001 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1475 1275 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1575 1375 50  0001 C CNN
	5    1525 1175
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 5DD9046C
P 1625 875
F 0 "#PWR0107" H 1625 725 50  0001 C CNN
F 1 "VCC" H 1642 1048 50  0000 C CNN
F 2 "" H 1625 875 50  0001 C CNN
F 3 "" H 1625 875 50  0001 C CNN
	1    1625 875 
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR0108
U 1 1 5DD917F4
P 1625 1475
F 0 "#PWR0108" H 1625 1325 50  0001 C CNN
F 1 "VEE" H 1643 1648 50  0000 C CNN
F 2 "" H 1625 1475 50  0001 C CNN
F 3 "" H 1625 1475 50  0001 C CNN
	1    1625 1475
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U3
U 4 1 5DE2AE72
P 4150 -1500
F 0 "U3" H 4225 -1325 50  0000 C CNN
F 1 "LM324" H 4125 -1500 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4100 -1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 4200 -1300 50  0001 C CNN
	4    4150 -1500
	1    0    0    1   
$EndComp
$Comp
L Device:R R69
U 1 1 5DE2B845
P 3600 -1600
F 0 "R69" V 3650 -1500 50  0000 L CNN
F 1 "1Meg" V 3600 -1700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3530 -1600 50  0001 C CNN
F 3 "~" H 3600 -1600 50  0001 C CNN
	1    3600 -1600
	0    -1   1    0   
$EndComp
Wire Wire Line
	3750 -1600 3800 -1600
$Comp
L power:VCC #PWR056
U 1 1 5DE49D6E
P 3450 -1600
F 0 "#PWR056" H 3450 -1750 50  0001 C CNN
F 1 "VCC" H 3467 -1427 50  0000 C CNN
F 2 "" H 3450 -1600 50  0001 C CNN
F 3 "" H 3450 -1600 50  0001 C CNN
	1    3450 -1600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q22
U 1 1 5DE4BFE5
P 4875 -2000
F 0 "Q22" H 4725 -1850 50  0000 L CNN
F 1 "BC547" H 5050 -2050 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5075 -2075 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4875 -2000 50  0001 L CNN
	1    4875 -2000
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q21
U 1 1 5DE4B810
P 4275 -2000
F 0 "Q21" H 4100 -1850 50  0000 L CNN
F 1 "BC547" H 4466 -2045 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4475 -2075 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4275 -2000 50  0001 L CNN
	1    4275 -2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4775 -1800 4575 -1800
$Comp
L Device:R R70
U 1 1 5DE87C76
P 4575 -1650
F 0 "R70" H 4375 -1600 50  0000 L CNN
F 1 "1k" V 4575 -1700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4505 -1650 50  0001 C CNN
F 3 "~" H 4575 -1650 50  0001 C CNN
	1    4575 -1650
	-1   0    0    -1  
$EndComp
Connection ~ 4575 -1800
Wire Wire Line
	4575 -1800 4375 -1800
Wire Wire Line
	4575 -1500 4450 -1500
Wire Wire Line
	3800 -1600 3800 -2200
Wire Wire Line
	3800 -2200 4375 -2200
Connection ~ 3800 -1600
Wire Wire Line
	3800 -1600 3850 -1600
$Comp
L power:GND #PWR058
U 1 1 5DEFA4E1
P 5075 -2000
F 0 "#PWR058" H 5075 -2250 50  0001 C CNN
F 1 "GND" H 5080 -2173 50  0000 C CNN
F 2 "" H 5075 -2000 50  0001 C CNN
F 3 "" H 5075 -2000 50  0001 C CNN
	1    5075 -2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR057
U 1 1 5DEFB852
P 3850 -1400
F 0 "#PWR057" H 3850 -1650 50  0001 C CNN
F 1 "GND" H 3855 -1573 50  0000 C CNN
F 2 "" H 3850 -1400 50  0001 C CNN
F 3 "" H 3850 -1400 50  0001 C CNN
	1    3850 -1400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U3
U 3 1 5DEFBCC5
P 5750 -2100
F 0 "U3" H 5825 -1925 50  0000 C CNN
F 1 "LM324" H 5725 -2100 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5700 -2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 5800 -1900 50  0001 C CNN
	3    5750 -2100
	1    0    0    1   
$EndComp
Wire Wire Line
	4775 -2200 5375 -2200
$Comp
L power:GND #PWR059
U 1 1 5DF17395
P 5450 -2000
F 0 "#PWR059" H 5450 -2250 50  0001 C CNN
F 1 "GND" H 5455 -2173 50  0000 C CNN
F 2 "" H 5450 -2000 50  0001 C CNN
F 3 "" H 5450 -2000 50  0001 C CNN
	1    5450 -2000
	1    0    0    -1  
$EndComp
$Comp
L Device:RTRIM R71
U 1 1 5DF198D4
P 5800 -2450
F 0 "R71" V 5900 -2475 50  0000 C CNN
F 1 "10k" V 5700 -2450 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" V 5730 -2450 50  0001 C CNN
F 3 "~" H 5800 -2450 50  0001 C CNN
	1    5800 -2450
	0    1    -1   0   
$EndComp
Text Notes 5575 -2600 0    50   ~ 0
set to 2.18k
Wire Wire Line
	5650 -2450 5375 -2450
Wire Wire Line
	5375 -2450 5375 -2200
Connection ~ 5375 -2200
Wire Wire Line
	5375 -2200 5450 -2200
Wire Wire Line
	5950 -2450 6050 -2450
Wire Wire Line
	6050 -2450 6050 -2100
Text GLabel 6050 -2100 2    50   Input ~ 0
expo_out
$Comp
L Amplifier_Operational:LM324 U3
U 1 1 5DDB1C06
P 3175 -2000
F 0 "U3" H 3250 -1825 50  0000 C CNN
F 1 "LM324" H 3150 -2000 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3125 -1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 3225 -1800 50  0001 C CNN
	1    3175 -2000
	1    0    0    1   
$EndComp
$Comp
L Device:R R68
U 1 1 5DDE34A9
P 3225 -2500
F 0 "R68" V 3175 -2400 50  0000 L CNN
F 1 "2.5k" V 3225 -2575 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3155 -2500 50  0001 C CNN
F 3 "~" H 3225 -2500 50  0001 C CNN
	1    3225 -2500
	0    -1   1    0   
$EndComp
$Comp
L power:VCC #PWR054
U 1 1 5DE04C76
P 3075 -2300
F 0 "#PWR054" H 3075 -2450 50  0001 C CNN
F 1 "VCC" H 3200 -2225 50  0000 C CNN
F 2 "" H 3075 -2300 50  0001 C CNN
F 3 "" H 3075 -2300 50  0001 C CNN
	1    3075 -2300
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR055
U 1 1 5DE05514
P 3075 -1700
F 0 "#PWR055" H 3075 -1850 50  0001 C CNN
F 1 "VEE" H 2950 -1625 50  0000 C CNN
F 2 "" H 3075 -1700 50  0001 C CNN
F 3 "" H 3075 -1700 50  0001 C CNN
	1    3075 -1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3475 -2000 3475 -2500
Wire Wire Line
	3475 -2500 3375 -2500
Wire Wire Line
	3075 -2500 2875 -2500
$Comp
L power:GND #PWR053
U 1 1 5DE28EC7
P 2875 -1900
F 0 "#PWR053" H 2875 -2150 50  0001 C CNN
F 1 "GND" H 2880 -2073 50  0000 C CNN
F 2 "" H 2875 -1900 50  0001 C CNN
F 3 "" H 2875 -1900 50  0001 C CNN
	1    2875 -1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3475 -2000 4075 -2000
Connection ~ 3475 -2000
Wire Wire Line
	2875 -2500 2875 -2100
$Comp
L Device:RTRIM R67
U 1 1 5DF55135
P 2725 -2100
F 0 "R67" V 2825 -2125 50  0000 C CNN
F 1 "200k" V 2625 -2100 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" V 2655 -2100 50  0001 C CNN
F 3 "~" H 2725 -2100 50  0001 C CNN
	1    2725 -2100
	0    1    -1   0   
$EndComp
Connection ~ 2875 -2100
Text GLabel 2575 -2100 0    50   Input ~ 0
expo_in
$Comp
L power:VEE #PWR016
U 1 1 5E0952C6
P 2425 -2350
F 0 "#PWR016" H 2425 -2500 50  0001 C CNN
F 1 "VEE" H 2300 -2275 50  0000 C CNN
F 2 "" H 2425 -2350 50  0001 C CNN
F 3 "" H 2425 -2350 50  0001 C CNN
	1    2425 -2350
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 5E096167
P 2425 -2650
F 0 "#PWR09" H 2425 -2800 50  0001 C CNN
F 1 "VCC" H 2550 -2575 50  0000 C CNN
F 2 "" H 2425 -2650 50  0001 C CNN
F 3 "" H 2425 -2650 50  0001 C CNN
	1    2425 -2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R66
U 1 1 5E097563
P 2725 -2500
F 0 "R66" V 2625 -2550 50  0000 L CNN
F 1 "100k" V 2725 -2600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2655 -2500 50  0001 C CNN
F 3 "~" H 2725 -2500 50  0001 C CNN
	1    2725 -2500
	0    -1   1    0   
$EndComp
Connection ~ 2875 -2500
Text GLabel 2575 -1950 0    50   Input ~ 0
expo_raw
Wire Wire Line
	2575 -1950 2875 -1950
Wire Wire Line
	2875 -1950 2875 -2100
Text GLabel 4175 -2375 0    50   Input ~ 0
expo_in
Text GLabel 4175 -2475 0    50   Input ~ 0
expo_raw
Text GLabel 4675 -2475 2    50   Input ~ 0
expo_out
Text GLabel 4675 -2375 2    50   Input ~ 0
expo_out
$Comp
L Amplifier_Operational:LM324 U3
U 5 1 5DDE56F6
P 3175 -2000
F 0 "U3" H 3250 -1825 50  0001 C CNN
F 1 "LM324" H 3150 -2000 50  0001 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3125 -1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 3225 -1800 50  0001 C CNN
	5    3175 -2000
	1    0    0    1   
$EndComp
Text Notes 3150 -2200 0    50   ~ 0
TODO wrong
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J7
U 1 1 5E0D1463
P 4375 -2475
F 0 "J7" H 4425 -2350 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 4425 -2349 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 4375 -2475 50  0001 C CNN
F 3 "~" H 4375 -2475 50  0001 C CNN
	1    4375 -2475
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT R72
U 1 1 5E094049
P 2425 -2500
F 0 "R72" H 2356 -2546 50  0000 R CNN
F 1 "10k" H 2356 -2455 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 2425 -2500 50  0001 C CNN
F 3 "~" H 2425 -2500 50  0001 C CNN
	1    2425 -2500
	1    0    0    1   
$EndComp
$EndSCHEMATC
