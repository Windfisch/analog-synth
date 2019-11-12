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
Text GLabel 2725 6500 0    50   Input ~ 0
Envelope
Connection ~ 2350 1775
$Comp
L Device:R R?
U 1 1 5D95F81E
P 2350 1625
F 0 "R?" H 2420 1671 50  0000 L CNN
F 1 "10k" V 2350 1550 50  0000 L CNN
F 2 "" V 2280 1625 50  0001 C CNN
F 3 "~" H 2350 1625 50  0001 C CNN
	1    2350 1625
	-1   0    0    1   
$EndComp
Wire Wire Line
	2225 1775 2350 1775
Wire Wire Line
	2350 1775 2475 1775
$Comp
L power:GNDREF #PWR?
U 1 1 5D95F82A
P 2775 1975
F 0 "#PWR?" H 2775 1725 50  0001 C CNN
F 1 "GNDREF" H 2780 1802 50  0001 C CNN
F 2 "" H 2775 1975 50  0001 C CNN
F 3 "" H 2775 1975 50  0001 C CNN
	1    2775 1975
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC327 Q?
U 1 1 5D96447B
P 2575 1975
F 0 "Q?" H 2450 2125 50  0000 L CNN
F 1 "BC327" H 2766 1930 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2775 1900 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC327-D.PDF" H 2575 1975 50  0001 L CNN
	1    2575 1975
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC327 Q?
U 1 1 5D969E4D
P 2125 1975
F 0 "Q?" H 2000 2125 50  0000 L CNN
F 1 "BC327" V 2350 1850 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2325 1900 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC327-D.PDF" H 2125 1975 50  0001 L CNN
	1    2125 1975
	1    0    0    1   
$EndComp
$Comp
L power:VEE #PWR?
U 1 1 5D9809F3
P 2475 2825
F 0 "#PWR?" H 2475 2675 50  0001 C CNN
F 1 "VEE" H 2493 2998 50  0000 C CNN
F 2 "" H 2475 2825 50  0001 C CNN
F 3 "" H 2475 2825 50  0001 C CNN
	1    2475 2825
	-1   0    0    1   
$EndComp
$Comp
L power:VEE #PWR?
U 1 1 5D9813BC
P 2225 2825
F 0 "#PWR?" H 2225 2675 50  0001 C CNN
F 1 "VEE" H 2243 2998 50  0000 C CNN
F 2 "" H 2225 2825 50  0001 C CNN
F 3 "" H 2225 2825 50  0001 C CNN
	1    2225 2825
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7C07D
P 2225 2675
F 0 "R?" H 2075 2725 50  0000 L CNN
F 1 "10k" V 2225 2600 50  0000 L CNN
F 2 "" V 2155 2675 50  0001 C CNN
F 3 "~" H 2225 2675 50  0001 C CNN
	1    2225 2675
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7C087
P 2475 2675
F 0 "R?" H 2545 2721 50  0000 L CNN
F 1 "10k" V 2475 2600 50  0000 L CNN
F 2 "" V 2405 2675 50  0001 C CNN
F 3 "~" H 2475 2675 50  0001 C CNN
	1    2475 2675
	1    0    0    1   
$EndComp
Wire Wire Line
	2800 2250 2475 2250
Wire Wire Line
	2800 2450 2225 2450
Connection ~ 2225 2450
Wire Wire Line
	2225 2525 2225 2450
Wire Wire Line
	2475 2525 2475 2250
Connection ~ 2475 2250
Wire Wire Line
	3250 2450 3175 2450
Wire Wire Line
	3100 2250 3175 2250
$Comp
L Amplifier_Operational:TL074 U?
U 2 1 5DD7C0CD
P 3550 2350
F 0 "U?" H 3575 2525 50  0000 C CNN
F 1 "TL074" H 3525 2350 50  0000 C CNN
F 2 "" H 3500 2450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3600 2550 50  0001 C CNN
	2    3550 2350
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7C0D7
P 2950 2450
F 0 "R?" V 2850 2425 50  0000 L CNN
F 1 "20k" V 2950 2375 50  0000 L CNN
F 2 "" V 2880 2450 50  0001 C CNN
F 3 "~" H 2950 2450 50  0001 C CNN
	1    2950 2450
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7C0E1
P 2950 2250
F 0 "R?" V 3050 2225 50  0000 L CNN
F 1 "20k" V 2950 2175 50  0000 L CNN
F 2 "" V 2880 2250 50  0001 C CNN
F 3 "~" H 2950 2250 50  0001 C CNN
	1    2950 2250
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7C0EB
P 3525 2025
F 0 "R?" V 3625 1975 50  0000 L CNN
F 1 "100k" V 3525 1925 50  0000 L CNN
F 2 "" V 3455 2025 50  0001 C CNN
F 3 "~" H 3525 2025 50  0001 C CNN
	1    3525 2025
	0    1    -1   0   
$EndComp
Connection ~ 3175 2250
Wire Wire Line
	3175 2250 3250 2250
$Comp
L Device:R R?
U 1 1 5DD7C0FB
P 3175 2700
F 0 "R?" H 3000 2650 50  0000 L CNN
F 1 "100k" V 3175 2600 50  0000 L CNN
F 2 "" V 3105 2700 50  0001 C CNN
F 3 "~" H 3175 2700 50  0001 C CNN
	1    3175 2700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3175 2550 3175 2450
Connection ~ 3175 2450
Wire Wire Line
	3175 2450 3100 2450
Text Notes 3400 2750 0    50   ~ 0
differential to\nsingle-ended
Text Notes 2075 1950 2    50   ~ 0
differential pair\n(current controlled\namplification)
Text GLabel 3850 2350 2    50   Input ~ 0
vca_audio_out
Wire Wire Line
	2475 2175 2475 2250
Wire Wire Line
	2225 2175 2225 2450
Text Notes 3100 1725 2    50   ~ 0
current mirror as\nvoltage controlled\ncurrent source
$Comp
L power:GNDREF #PWR?
U 1 1 5D9C7217
P 1725 2900
F 0 "#PWR?" H 1725 2650 50  0001 C CNN
F 1 "GNDREF" H 1730 2727 50  0001 C CNN
F 2 "" H 1725 2900 50  0001 C CNN
F 3 "" H 1725 2900 50  0001 C CNN
	1    1725 2900
	1    0    0    -1  
$EndComp
Text Notes 1650 2925 1    50   ~ 0
input preattenuation.\ncontrols distortion
$Comp
L Device:C C?
U 1 1 5D9A8C50
P 1725 2150
F 0 "C?" H 1775 2250 50  0000 C CNN
F 1 "470n" H 1825 2050 50  0000 C CNN
F 2 "" H 1763 2000 50  0001 C CNN
F 3 "~" H 1725 2150 50  0001 C CNN
	1    1725 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D9A8C46
P 1725 2750
F 0 "R?" H 1800 2700 50  0000 L CNN
F 1 "1k" V 1725 2700 50  0000 L CNN
F 2 "" V 1655 2750 50  0001 C CNN
F 3 "~" H 1725 2750 50  0001 C CNN
	1    1725 2750
	1    0    0    1   
$EndComp
$Comp
L Device:R_Variable R?
U 1 1 5D9A8C32
P 1725 2450
F 0 "R?" H 1775 2450 50  0000 L CNN
F 1 "100k" H 1775 2375 50  0000 L CNN
F 2 "" V 1655 2450 50  0001 C CNN
F 3 "~" H 1725 2450 50  0001 C CNN
	1    1725 2450
	1    0    0    -1  
$EndComp
Text GLabel 1050 2200 0    50   Input ~ 0
vca_audio_in
Wire Wire Line
	1725 2600 1925 2600
Wire Wire Line
	1925 2600 1925 1975
Connection ~ 1725 2600
Wire Wire Line
	3175 2025 3375 2025
Wire Wire Line
	3175 2025 3175 2250
Wire Wire Line
	3675 2025 3850 2025
Wire Wire Line
	3850 2025 3850 2350
Wire Wire Line
	1050 2200 1425 2200
Wire Wire Line
	1425 2200 1425 2000
Text Notes 525  3050 0    50   ~ 0
Voltage controlled amplifier
Text Notes 525  2325 0    50   ~ 0
triangle from VCO mk I
Text Notes 675  4225 0    50   ~ 0
transistor buffer.\nsquare_ctl is very sensitive,\nloading it will affect the\nfrequency and pulse width\nof the oscillator
$Comp
L power:VEE #PWR?
U 1 1 5D8E8D04
P 1800 4100
F 0 "#PWR?" H 1800 3950 50  0001 C CNN
F 1 "VEE" H 1800 4275 50  0000 C CNN
F 2 "" H 1800 4100 50  0001 C CNN
F 3 "" H 1800 4100 50  0001 C CNN
	1    1800 4100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8E86DE
P 1800 3950
F 0 "R?" H 1900 3850 50  0000 C CNN
F 1 "1k" V 1800 3950 50  0000 C CNN
F 2 "" V 1730 3950 50  0001 C CNN
F 3 "~" H 1800 3950 50  0001 C CNN
	1    1800 3950
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D8E6DCF
P 1800 3400
F 0 "#PWR?" H 1800 3250 50  0001 C CNN
F 1 "VCC" H 1800 3575 50  0000 C CNN
F 2 "" H 1800 3400 50  0001 C CNN
F 3 "" H 1800 3400 50  0001 C CNN
	1    1800 3400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 5D8E580C
P 1700 3600
F 0 "Q?" H 1891 3646 50  0000 L CNN
F 1 "BC547" H 1891 3555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1900 3525 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 1700 3600 50  0001 L CNN
	1    1700 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D88990F
P 1350 3600
F 0 "R?" V 1250 3600 50  0000 C CNN
F 1 "10k" V 1350 3600 50  0000 C CNN
F 2 "" V 1280 3600 50  0001 C CNN
F 3 "~" H 1350 3600 50  0001 C CNN
	1    1350 3600
	0    1    1    0   
$EndComp
Text GLabel 1200 3600 0    50   Input ~ 0
square_ctl1
$Comp
L power:+3.3V #PWR?
U 1 1 5DC05FDC
P 5000 6600
F 0 "#PWR?" H 5000 6450 50  0001 C CNN
F 1 "+3.3V" H 5015 6773 50  0000 C CNN
F 2 "" H 5000 6600 50  0001 C CNN
F 3 "" H 5000 6600 50  0001 C CNN
	1    5000 6600
	1    0    0    -1  
$EndComp
Text GLabel 4500 6900 0    50   Input ~ 0
PB13
Text GLabel 4500 7100 0    50   Input ~ 0
PB15
Text GLabel 4500 7200 0    50   Input ~ 0
PB12
$Comp
L power:GND #PWR?
U 1 1 5DBFDDAA
P 5000 7500
F 0 "#PWR?" H 5000 7250 50  0001 C CNN
F 1 "GND" H 5005 7327 50  0000 C CNN
F 2 "" H 5000 7500 50  0001 C CNN
F 3 "" H 5000 7500 50  0001 C CNN
	1    5000 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 7000 4500 7000
$Comp
L power:GND #PWR?
U 1 1 5DBFDAC8
P 4150 7000
F 0 "#PWR?" H 4150 6750 50  0001 C CNN
F 1 "GND" H 4155 6827 50  0000 C CNN
F 2 "" H 4150 7000 50  0001 C CNN
F 3 "" H 4150 7000 50  0001 C CNN
	1    4150 7000
	1    0    0    -1  
$EndComp
$Comp
L Analog_DAC:MCP4822 U?
U 1 1 5DBF2744
P 5000 7000
F 0 "U?" H 4675 7350 50  0000 C CNN
F 1 "MCP4822" H 5200 7350 50  0000 C CNN
F 2 "" H 5800 6700 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 5800 6700 50  0001 C CNN
	1    5000 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5DC6E5D7
P 2875 6650
F 0 "RV?" H 2805 6696 50  0000 R CNN
F 1 "1k" V 2875 6700 50  0000 R CNN
F 2 "" H 2875 6650 50  0001 C CNN
F 3 "~" H 2875 6650 50  0001 C CNN
	1    2875 6650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC78980
P 2875 6800
F 0 "#PWR?" H 2875 6550 50  0001 C CNN
F 1 "GND" H 2880 6627 50  0000 C CNN
F 2 "" H 2875 6800 50  0001 C CNN
F 3 "" H 2875 6800 50  0001 C CNN
	1    2875 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DC7A310
P 3175 6650
F 0 "R?" V 3075 6625 50  0000 L CNN
F 1 "10k" V 3175 6575 50  0000 L CNN
F 2 "" V 3105 6650 50  0001 C CNN
F 3 "~" H 3175 6650 50  0001 C CNN
	1    3175 6650
	0    -1   1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5DC7AF18
P 3325 6800
F 0 "C?" H 3440 6846 50  0000 L CNN
F 1 "100n" H 3440 6755 50  0000 L CNN
F 2 "" H 3363 6650 50  0001 C CNN
F 3 "~" H 3325 6800 50  0001 C CNN
	1    3325 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC7B326
P 3325 6950
F 0 "#PWR?" H 3325 6700 50  0001 C CNN
F 1 "GND" H 3330 6777 50  0000 C CNN
F 2 "" H 3325 6950 50  0001 C CNN
F 3 "" H 3325 6950 50  0001 C CNN
	1    3325 6950
	1    0    0    -1  
$EndComp
Text Notes 2675 7675 0    50   ~ 0
Low-pass filter for fast\nattacking envelopes.\nTime constant T =\n10kOhm * 100nF = \n1ms. This removes\npops, but is still ballsy.
Wire Wire Line
	2725 6500 2875 6500
Text GLabel 2025 7200 0    50   Input ~ 0
LFO
$Comp
L Device:R_POT RV?
U 1 1 5DC95C10
P 2125 7350
F 0 "RV?" H 2055 7396 50  0000 R CNN
F 1 "1k" V 2125 7400 50  0000 R CNN
F 2 "" H 2125 7350 50  0001 C CNN
F 3 "~" H 2125 7350 50  0001 C CNN
	1    2125 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2125 7200 2025 7200
$Comp
L power:GND #PWR?
U 1 1 5DC985D7
P 2125 7500
F 0 "#PWR?" H 2125 7250 50  0001 C CNN
F 1 "GND" H 2130 7327 50  0000 C CNN
F 2 "" H 2125 7500 50  0001 C CNN
F 3 "" H 2125 7500 50  0001 C CNN
	1    2125 7500
	1    0    0    -1  
$EndComp
Text GLabel 2275 7350 2    50   Input ~ 0
PWM
Text GLabel 3425 6650 2    50   Input ~ 0
VCA_ctl
Wire Wire Line
	3425 6650 3325 6650
Connection ~ 3325 6650
Wire Wire Line
	1725 2000 1425 2000
$Comp
L power:GNDREF #PWR?
U 1 1 5DC870C2
P 7750 2675
F 0 "#PWR?" H 7750 2425 50  0001 C CNN
F 1 "GNDREF" H 7755 2502 50  0001 C CNN
F 2 "" H 7750 2675 50  0001 C CNN
F 3 "" H 7750 2675 50  0001 C CNN
	1    7750 2675
	1    0    0    -1  
$EndComp
Text Notes 7625 3225 1    50   ~ 0
input preattenuation.\ncontrols distortion
$Comp
L Device:R R?
U 1 1 5DC870D7
P 7750 2525
F 0 "R?" H 7825 2475 50  0000 L CNN
F 1 "1k" V 7750 2475 50  0000 L CNN
F 2 "" V 7680 2525 50  0001 C CNN
F 3 "~" H 7750 2525 50  0001 C CNN
	1    7750 2525
	1    0    0    1   
$EndComp
$Comp
L Device:R_Variable R?
U 1 1 5DC870E1
P 7600 2375
F 0 "R?" V 7775 2350 50  0000 L CNN
F 1 "1Meg" V 7700 2225 50  0000 L CNN
F 2 "" V 7530 2375 50  0001 C CNN
F 3 "~" H 7600 2375 50  0001 C CNN
	1    7600 2375
	0    1    -1   0   
$EndComp
Text GLabel 7450 2375 0    50   Input ~ 0
vcf_audio_in
Connection ~ 7750 2375
Text Notes 7450 2600 2    50   ~ 0
sawtooth from\nVCO mk I
$Comp
L Device:CP C?
U 1 1 5DC91769
P 8275 2375
F 0 "C?" V 8200 2250 50  0000 C CNN
F 1 "470u" V 8350 2225 50  0000 C CNN
F 2 "" H 8313 2225 50  0001 C CNN
F 3 "~" H 8275 2375 50  0001 C CNN
	1    8275 2375
	0    1    -1   0   
$EndComp
Wire Wire Line
	9025 4150 9025 4075
Connection ~ 9025 4075
Wire Wire Line
	9025 4075 9025 3925
Wire Wire Line
	8725 4150 8725 4075
Connection ~ 8725 4075
Wire Wire Line
	8725 4075 8725 3925
Wire Wire Line
	9325 3725 9325 3950
Wire Wire Line
	9325 3950 8425 3950
Wire Wire Line
	9025 3525 9025 3450
Connection ~ 9025 3450
Wire Wire Line
	9025 3450 9025 3300
Wire Wire Line
	8725 3525 8725 3450
Connection ~ 8725 3450
Wire Wire Line
	8725 3450 8725 3300
Wire Wire Line
	9325 3100 9325 3325
Wire Wire Line
	9325 3325 8425 3325
Wire Wire Line
	9325 4350 9325 4575
Wire Wire Line
	9325 4575 8425 4575
Wire Wire Line
	9025 2900 9025 2825
Connection ~ 9025 2825
Wire Wire Line
	9025 2825 9025 2675
Wire Wire Line
	8725 2900 8725 2825
Connection ~ 8725 2825
Wire Wire Line
	8725 2825 8725 2675
$Comp
L Device:R R?
U 1 1 5DD85AF5
P 8425 4150
F 0 "R?" H 8250 4225 50  0000 L CNN
F 1 "150" V 8425 4075 50  0000 L CNN
F 2 "" V 8355 4150 50  0001 C CNN
F 3 "~" H 8425 4150 50  0001 C CNN
	1    8425 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD86019
P 8425 3525
F 0 "R?" H 8250 3600 50  0000 L CNN
F 1 "150" V 8425 3450 50  0000 L CNN
F 2 "" V 8355 3525 50  0001 C CNN
F 3 "~" H 8425 3525 50  0001 C CNN
	1    8425 3525
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD87B46
P 8425 2900
F 0 "R?" H 8250 2975 50  0000 L CNN
F 1 "150" V 8425 2825 50  0000 L CNN
F 2 "" V 8355 2900 50  0001 C CNN
F 3 "~" H 8425 2900 50  0001 C CNN
	1    8425 2900
	1    0    0    -1  
$EndComp
Connection ~ 8425 4575
Wire Wire Line
	8425 4000 8425 3950
Connection ~ 8425 3950
Wire Wire Line
	8425 3375 8425 3325
Connection ~ 8425 3325
$Comp
L Device:R R?
U 1 1 5DDF220D
P 8275 2575
F 0 "R?" V 8275 2300 50  0000 L CNN
F 1 "470" V 8275 2500 50  0000 L CNN
F 2 "" V 8205 2575 50  0001 C CNN
F 3 "~" H 8275 2575 50  0001 C CNN
	1    8275 2575
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DDF90E1
P 9475 2575
F 0 "R?" V 9400 2375 50  0000 L CNN
F 1 "470" V 9475 2500 50  0000 L CNN
F 2 "" V 9405 2575 50  0001 C CNN
F 3 "~" H 9475 2575 50  0001 C CNN
	1    9475 2575
	0    1    -1   0   
$EndComp
Wire Wire Line
	9625 2575 9625 2700
Wire Wire Line
	9625 2700 8425 2700
Wire Wire Line
	8125 2700 8125 2575
Wire Wire Line
	8725 2275 8875 2275
Wire Wire Line
	8425 2750 8425 2700
Connection ~ 8425 2700
Wire Wire Line
	8425 2700 8125 2700
$Comp
L Device:R R?
U 1 1 5DE2652F
P 8125 2900
F 0 "R?" H 7975 2825 50  0000 L CNN
F 1 "180" V 8125 2825 50  0000 L CNN
F 2 "" V 8055 2900 50  0001 C CNN
F 3 "~" H 8125 2900 50  0001 C CNN
	1    8125 2900
	1    0    0    1   
$EndComp
Wire Wire Line
	8125 2750 8125 2700
Connection ~ 8125 2700
$Comp
L power:GND #PWR?
U 1 1 5DE2D342
P 8125 3050
F 0 "#PWR?" H 8125 2800 50  0001 C CNN
F 1 "GND" H 8130 2877 50  0001 C CNN
F 2 "" H 8125 3050 50  0001 C CNN
F 3 "" H 8125 3050 50  0001 C CNN
	1    8125 3050
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DD09867
P 8875 2825
F 0 "C?" V 8825 3050 50  0000 C CNN
F 1 "47n" V 8900 3075 50  0000 C CNN
F 2 "" H 8913 2675 50  0001 C CNN
F 3 "~" H 8875 2825 50  0001 C CNN
	1    8875 2825
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5DCDA152
P 8875 3450
F 0 "C?" V 8825 3675 50  0000 C CNN
F 1 "47n" V 8900 3700 50  0000 C CNN
F 2 "" H 8913 3300 50  0001 C CNN
F 3 "~" H 8875 3450 50  0001 C CNN
	1    8875 3450
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5DC993CD
P 8875 4075
F 0 "C?" V 8825 4300 50  0000 C CNN
F 1 "47n" V 8900 4325 50  0000 C CNN
F 2 "" H 8913 3925 50  0001 C CNN
F 3 "~" H 8875 4075 50  0001 C CNN
	1    8875 4075
	0    1    1    0   
$EndComp
Wire Wire Line
	8425 4675 8425 4575
Connection ~ 8875 5450
Wire Wire Line
	9025 5450 9025 5275
Wire Wire Line
	8875 5450 9025 5450
Wire Wire Line
	8725 5450 8725 5275
Wire Wire Line
	8875 5450 8725 5450
Wire Wire Line
	8875 5600 8875 5450
Wire Wire Line
	8425 5600 8875 5600
Connection ~ 8425 5300
Wire Wire Line
	9325 5300 8425 5300
Wire Wire Line
	9325 5075 9325 5300
$Comp
L Device:R R?
U 1 1 5DF86F1C
P 9850 2825
F 0 "R?" V 9950 2800 50  0000 L CNN
F 1 "10k" V 9850 2750 50  0000 L CNN
F 2 "" V 9780 2825 50  0001 C CNN
F 3 "~" H 9850 2825 50  0001 C CNN
	1    9850 2825
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 4075 9850 2975
Wire Wire Line
	9850 2375 9625 2375
$Comp
L power:GND #PWR?
U 1 1 5DFC806B
P 3175 2850
F 0 "#PWR?" H 3175 2600 50  0001 C CNN
F 1 "GND" H 3175 2700 50  0001 C CNN
F 2 "" H 3175 2850 50  0001 C CNN
F 3 "" H 3175 2850 50  0001 C CNN
	1    3175 2850
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E00D028
P 8875 2125
F 0 "R?" H 8700 2200 50  0000 L CNN
F 1 "680" V 8875 2050 50  0000 L CNN
F 2 "" V 8805 2125 50  0001 C CNN
F 3 "~" H 8875 2125 50  0001 C CNN
	1    8875 2125
	1    0    0    1   
$EndComp
Connection ~ 8875 2275
Wire Wire Line
	8875 2275 9025 2275
Text Notes 8200 3225 3    50   ~ 0
bias network to keep the transistor bases\n>= 1 diode drop away from each other
$Comp
L Device:CP C?
U 1 1 5E098487
P 9475 2375
F 0 "C?" V 9400 2550 50  0000 C CNN
F 1 "470u" V 9550 2525 50  0000 C CNN
F 2 "" H 9513 2225 50  0001 C CNN
F 3 "~" H 9475 2375 50  0001 C CNN
	1    9475 2375
	0    1    -1   0   
$EndComp
Wire Wire Line
	7750 2375 8125 2375
$Comp
L power:VEE #PWR?
U 1 1 5E2CC03C
P 8875 5600
F 0 "#PWR?" H 8875 5450 50  0001 C CNN
F 1 "VEE" H 8892 5773 50  0000 C CNN
F 2 "" H 8875 5600 50  0001 C CNN
F 3 "" H 8875 5600 50  0001 C CNN
	1    8875 5600
	1    0    0    1   
$EndComp
Connection ~ 8875 5600
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E2E2D38
P 9375 1775
F 0 "Q?" H 9300 1925 50  0000 L CNN
F 1 "BC557" H 9050 1650 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9575 1700 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 9375 1775 50  0001 L CNN
	1    9375 1775
	1    0    0    1   
$EndComp
Wire Wire Line
	8425 5300 8425 5075
Wire Wire Line
	8425 4575 8425 4350
Wire Wire Line
	8425 3950 8425 3725
Wire Wire Line
	8425 3325 8425 3100
Wire Wire Line
	9325 2575 9325 2475
Wire Wire Line
	8425 2575 8425 2475
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E300F3C
P 8625 4350
F 0 "Q?" H 8450 4450 50  0000 L CNN
F 1 "BC557" V 8875 4250 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8825 4275 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 8625 4350 50  0001 L CNN
	1    8625 4350
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E36DFB0
P 9125 4350
F 0 "Q?" H 8975 4450 50  0000 L CNN
F 1 "BC557" H 9316 4305 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9325 4275 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 9125 4350 50  0001 L CNN
	1    9125 4350
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E37A000
P 8625 5075
F 0 "Q?" H 8450 5175 50  0000 L CNN
F 1 "BC557" V 8875 4975 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8825 5000 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 8625 5075 50  0001 L CNN
	1    8625 5075
	1    0    0    1   
$EndComp
Connection ~ 8425 4350
Wire Wire Line
	8425 4350 8425 4300
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E3A0AED
P 8625 3725
F 0 "Q?" H 8450 3825 50  0000 L CNN
F 1 "BC557" V 8875 3625 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8825 3650 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 8625 3725 50  0001 L CNN
	1    8625 3725
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E3A0AF3
P 9125 3725
F 0 "Q?" H 8975 3825 50  0000 L CNN
F 1 "BC557" H 9316 3680 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9325 3650 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 9125 3725 50  0001 L CNN
	1    9125 3725
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E3A8C63
P 8625 3100
F 0 "Q?" H 8450 3200 50  0000 L CNN
F 1 "BC557" V 8875 3000 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8825 3025 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 8625 3100 50  0001 L CNN
	1    8625 3100
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E3A8C69
P 9125 3100
F 0 "Q?" H 8975 3200 50  0000 L CNN
F 1 "BC557" H 9316 3055 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9325 3025 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 9125 3100 50  0001 L CNN
	1    9125 3100
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E3B0CCD
P 8625 2475
F 0 "Q?" H 8450 2575 50  0000 L CNN
F 1 "BC557" V 8875 2375 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8825 2400 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 8625 2475 50  0001 L CNN
	1    8625 2475
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E3B0CD3
P 9125 2475
F 0 "Q?" H 8975 2575 50  0000 L CNN
F 1 "BC557" H 9316 2430 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9325 2400 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 9125 2475 50  0001 L CNN
	1    9125 2475
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E3BC860
P 8975 1775
F 0 "Q?" H 8875 1925 50  0000 L CNN
F 1 "BC557" H 8650 1650 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9175 1700 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 8975 1775 50  0001 L CNN
	1    8975 1775
	-1   0    0    1   
$EndComp
Connection ~ 8425 2475
Wire Wire Line
	8425 2475 8425 2375
Connection ~ 8425 3100
Wire Wire Line
	8425 3100 8425 3050
Connection ~ 8425 3725
Wire Wire Line
	8425 3725 8425 3675
Connection ~ 8425 5075
Wire Wire Line
	8425 5075 8425 4975
Connection ~ 9325 2475
Wire Wire Line
	9325 2475 9325 2375
$Comp
L Device:R_Variable R?
U 1 1 5DF87DEF
P 9850 2525
F 0 "R?" H 9978 2571 50  0000 L CNN
F 1 "100k" H 9925 2475 50  0000 L CNN
F 2 "" V 9780 2525 50  0001 C CNN
F 3 "~" H 9850 2525 50  0001 C CNN
	1    9850 2525
	1    0    0    -1  
$EndComp
Text Notes 9875 4050 0    50   ~ 0
feedback
$Comp
L Device:R R?
U 1 1 5DD589A2
P 8425 4825
F 0 "R?" H 8250 4900 50  0000 L CNN
F 1 "150" V 8425 4750 50  0000 L CNN
F 2 "" V 8355 4825 50  0001 C CNN
F 3 "~" H 8425 4825 50  0001 C CNN
	1    8425 4825
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DDB9323
P 8425 5450
F 0 "R?" H 8250 5525 50  0000 L CNN
F 1 "220" V 8425 5375 50  0000 L CNN
F 2 "" V 8355 5450 50  0001 C CNN
F 3 "~" H 8425 5450 50  0001 C CNN
	1    8425 5450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E37A006
P 9125 5075
F 0 "Q?" H 8975 5175 50  0000 L CNN
F 1 "BC557" H 9316 5030 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9325 5000 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 9125 5075 50  0001 L CNN
	1    9125 5075
	-1   0    0    1   
$EndComp
Wire Wire Line
	9925 4825 9850 4825
Wire Wire Line
	9775 4625 9850 4625
$Comp
L Amplifier_Operational:TL074 U?
U 3 1 5DF27280
P 10225 4725
F 0 "U?" H 10250 4900 50  0000 C CNN
F 1 "TL074" H 10200 4725 50  0000 C CNN
F 2 "" H 10175 4825 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 10275 4925 50  0001 C CNN
	3    10225 4725
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF2728A
P 9625 4825
F 0 "R?" V 9525 4800 50  0000 L CNN
F 1 "10k" V 9625 4750 50  0000 L CNN
F 2 "" V 9555 4825 50  0001 C CNN
F 3 "~" H 9625 4825 50  0001 C CNN
	1    9625 4825
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF27294
P 9625 4625
F 0 "R?" V 9725 4600 50  0000 L CNN
F 1 "10k" V 9625 4550 50  0000 L CNN
F 2 "" V 9555 4625 50  0001 C CNN
F 3 "~" H 9625 4625 50  0001 C CNN
	1    9625 4625
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF2729E
P 10200 4400
F 0 "R?" V 10300 4350 50  0000 L CNN
F 1 "1Meg" V 10200 4300 50  0000 L CNN
F 2 "" V 10130 4400 50  0001 C CNN
F 3 "~" H 10200 4400 50  0001 C CNN
	1    10200 4400
	0    1    -1   0   
$EndComp
Connection ~ 9850 4625
Wire Wire Line
	9850 4625 9925 4625
$Comp
L Device:R R?
U 1 1 5DF272AA
P 9850 5075
F 0 "R?" H 9950 5050 50  0000 L CNN
F 1 "1Meg" V 9850 4975 50  0000 L CNN
F 2 "" V 9780 5075 50  0001 C CNN
F 3 "~" H 9850 5075 50  0001 C CNN
	1    9850 5075
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9850 4925 9850 4825
Connection ~ 9850 4825
Wire Wire Line
	9850 4825 9775 4825
Text Notes 9950 5125 0    50   ~ 0
differential to\nsingle-ended
Wire Wire Line
	9850 4400 10050 4400
Wire Wire Line
	9850 4400 9850 4625
Wire Wire Line
	10350 4400 10525 4400
Wire Wire Line
	10525 4400 10525 4725
$Comp
L power:GND #PWR?
U 1 1 5DFCD5D9
P 9850 5225
F 0 "#PWR?" H 9850 4975 50  0001 C CNN
F 1 "GND" H 9850 5075 50  0001 C CNN
F 2 "" H 9850 5225 50  0001 C CNN
F 3 "" H 9850 5225 50  0001 C CNN
	1    9850 5225
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DCE35D7
P 8875 4825
F 0 "C?" V 8825 4600 50  0000 C CNN
F 1 "47n" V 8925 4575 50  0000 C CNN
F 2 "" H 8913 4675 50  0001 C CNN
F 3 "~" H 8875 4825 50  0001 C CNN
	1    8875 4825
	0    -1   1    0   
$EndComp
Connection ~ 8725 4825
Wire Wire Line
	8725 4825 8725 4875
Connection ~ 9025 4825
Wire Wire Line
	9025 4825 9025 4550
Wire Wire Line
	9025 4875 9025 4825
Wire Wire Line
	9025 4825 9475 4825
Wire Wire Line
	8725 4550 8725 4675
Wire Wire Line
	9325 4675 8725 4675
Connection ~ 8725 4675
Wire Wire Line
	8725 4675 8725 4825
Wire Wire Line
	9325 4675 9325 4625
Wire Wire Line
	9325 4625 9475 4625
Wire Wire Line
	10525 4400 10525 4075
Wire Wire Line
	10525 4075 9850 4075
Connection ~ 10525 4400
$Comp
L Jumper:Jumper_2_Bridged JP?
U 1 1 5DD3CFE2
P 2325 3800
F 0 "JP?" H 2325 3903 50  0000 C CNN
F 1 "Jumper_2_Bridged" H 2325 3904 50  0001 C CNN
F 2 "" H 2325 3800 50  0001 C CNN
F 3 "~" H 2325 3800 50  0001 C CNN
	1    2325 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DD3E1B6
P 2675 3800
F 0 "C?" V 2525 3800 50  0000 C CNN
F 1 "1n" V 2825 3800 50  0000 C CNN
F 2 "" H 2713 3650 50  0001 C CNN
F 3 "~" H 2675 3800 50  0001 C CNN
	1    2675 3800
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q?
U 1 1 5DD407CF
P 3175 3800
F 0 "Q?" H 3381 3846 50  0000 L CNN
F 1 "2N7000" H 3381 3755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3375 3725 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 3175 3800 50  0001 L CNN
	1    3175 3800
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR?
U 1 1 5DD54441
P 3275 4100
F 0 "#PWR?" H 3275 3950 50  0001 C CNN
F 1 "VEE" H 3293 4273 50  0000 C CNN
F 2 "" H 3275 4100 50  0001 C CNN
F 3 "" H 3275 4100 50  0001 C CNN
	1    3275 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3275 4100 3275 4000
$Comp
L power:VEE #PWR?
U 1 1 5DD3FBCD
P 2825 4100
F 0 "#PWR?" H 2825 3950 50  0001 C CNN
F 1 "VEE" H 2843 4273 50  0000 C CNN
F 2 "" H 2825 4100 50  0001 C CNN
F 3 "" H 2825 4100 50  0001 C CNN
	1    2825 4100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD3F133
P 2825 3950
F 0 "R?" H 2725 4000 50  0000 C CNN
F 1 "1k" V 2825 3950 50  0000 C CNN
F 2 "" V 2755 3950 50  0001 C CNN
F 3 "~" H 2825 3950 50  0001 C CNN
	1    2825 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2825 3800 2975 3800
Connection ~ 2825 3800
Text GLabel 3325 3550 2    50   Input ~ 0
sync_out1
Wire Wire Line
	3325 3550 3275 3550
Wire Wire Line
	3275 3550 3275 3600
Text Notes 2775 3675 0    50   ~ 0
sync pulse\ngeneration
Wire Wire Line
	2125 3800 1800 3800
Connection ~ 1800 3800
Text GLabel 2025 3800 3    50   Input ~ 0
square_ctl_buf1
Text Notes 675  5375 0    50   ~ 0
transistor buffer.\nsquare_ctl is very sensitive,\nloading it will affect the\nfrequency and pulse width\nof the oscillator
$Comp
L power:VEE #PWR?
U 1 1 5DDBC120
P 1800 5250
F 0 "#PWR?" H 1800 5100 50  0001 C CNN
F 1 "VEE" H 1800 5425 50  0000 C CNN
F 2 "" H 1800 5250 50  0001 C CNN
F 3 "" H 1800 5250 50  0001 C CNN
	1    1800 5250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DDBC12A
P 1800 5100
F 0 "R?" H 1900 5000 50  0000 C CNN
F 1 "1k" V 1800 5100 50  0000 C CNN
F 2 "" V 1730 5100 50  0001 C CNN
F 3 "~" H 1800 5100 50  0001 C CNN
	1    1800 5100
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DDBC134
P 1800 4550
F 0 "#PWR?" H 1800 4400 50  0001 C CNN
F 1 "VCC" H 1800 4725 50  0000 C CNN
F 2 "" H 1800 4550 50  0001 C CNN
F 3 "" H 1800 4550 50  0001 C CNN
	1    1800 4550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 5DDBC13E
P 1700 4750
F 0 "Q?" H 1891 4796 50  0000 L CNN
F 1 "BC547" H 1891 4705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1900 4675 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 1700 4750 50  0001 L CNN
	1    1700 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DDBC148
P 1350 4750
F 0 "R?" V 1250 4750 50  0000 C CNN
F 1 "10k" V 1350 4750 50  0000 C CNN
F 2 "" V 1280 4750 50  0001 C CNN
F 3 "~" H 1350 4750 50  0001 C CNN
	1    1350 4750
	0    1    1    0   
$EndComp
Text GLabel 1200 4750 0    50   Input ~ 0
square_ctl2
$Comp
L Jumper:Jumper_2_Bridged JP?
U 1 1 5DDBC153
P 2325 4950
F 0 "JP?" H 2325 5053 50  0000 C CNN
F 1 "Jumper_2_Bridged" H 2325 5054 50  0001 C CNN
F 2 "" H 2325 4950 50  0001 C CNN
F 3 "~" H 2325 4950 50  0001 C CNN
	1    2325 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DDBC15D
P 2675 4950
F 0 "C?" V 2525 4950 50  0000 C CNN
F 1 "1n" V 2825 4950 50  0000 C CNN
F 2 "" H 2713 4800 50  0001 C CNN
F 3 "~" H 2675 4950 50  0001 C CNN
	1    2675 4950
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q?
U 1 1 5DDBC167
P 3175 4950
F 0 "Q?" H 3381 4996 50  0000 L CNN
F 1 "2N7000" H 3381 4905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3375 4875 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 3175 4950 50  0001 L CNN
	1    3175 4950
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR?
U 1 1 5DDBC171
P 3275 5250
F 0 "#PWR?" H 3275 5100 50  0001 C CNN
F 1 "VEE" H 3293 5423 50  0000 C CNN
F 2 "" H 3275 5250 50  0001 C CNN
F 3 "" H 3275 5250 50  0001 C CNN
	1    3275 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3275 5250 3275 5150
$Comp
L power:VEE #PWR?
U 1 1 5DDBC17C
P 2825 5250
F 0 "#PWR?" H 2825 5100 50  0001 C CNN
F 1 "VEE" H 2843 5423 50  0000 C CNN
F 2 "" H 2825 5250 50  0001 C CNN
F 3 "" H 2825 5250 50  0001 C CNN
	1    2825 5250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DDBC186
P 2825 5100
F 0 "R?" H 2725 5150 50  0000 C CNN
F 1 "1k" V 2825 5100 50  0000 C CNN
F 2 "" V 2755 5100 50  0001 C CNN
F 3 "~" H 2825 5100 50  0001 C CNN
	1    2825 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2825 4950 2975 4950
Connection ~ 2825 4950
Text GLabel 3325 4700 2    50   Input ~ 0
sync_out2
Wire Wire Line
	3325 4700 3275 4700
Wire Wire Line
	3275 4700 3275 4750
Text Notes 2775 4825 0    50   ~ 0
sync pulse\ngeneration
Wire Wire Line
	2125 4950 1800 4950
Connection ~ 1800 4950
Text GLabel 2025 4950 3    50   Input ~ 0
square_ctl_buf2
Text Notes 9850 2225 2    50   ~ 0
current mirror as\nvoltage controlled\ncurrent source
Text Notes 9475 4325 1    50   ~ 0
transistor ladder VCF
Text GLabel 10525 4725 2    50   Input ~ 0
vcf_audio_out
Text GLabel 5300 2625 0    50   Input ~ 0
vco1_in
$Comp
L Device:R_POT RV?
U 1 1 5DEF116D
P 5350 2825
F 0 "RV?" V 5235 2825 50  0000 C CNN
F 1 "10k" V 5350 2825 50  0000 C CNN
F 2 "" H 5350 2825 50  0001 C CNN
F 3 "~" H 5350 2825 50  0001 C CNN
	1    5350 2825
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2625 5350 2625
Wire Wire Line
	5350 2625 5350 2675
$Comp
L power:GND #PWR?
U 1 1 5DEFCD9E
P 5350 2975
F 0 "#PWR?" H 5350 2725 50  0001 C CNN
F 1 "GND" H 5355 2802 50  0000 C CNN
F 2 "" H 5350 2975 50  0001 C CNN
F 3 "" H 5350 2975 50  0001 C CNN
	1    5350 2975
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DEFD971
P 5650 2825
F 0 "R?" V 5750 2850 50  0000 L CNN
F 1 "10k" V 5650 2750 50  0000 L CNN
F 2 "" V 5580 2825 50  0001 C CNN
F 3 "~" H 5650 2825 50  0001 C CNN
	1    5650 2825
	0    -1   1    0   
$EndComp
Text GLabel 5300 3325 0    50   Input ~ 0
vco2_in
$Comp
L Device:R_POT RV?
U 1 1 5DEFFDC3
P 5350 3525
F 0 "RV?" V 5235 3525 50  0000 C CNN
F 1 "10k" V 5350 3525 50  0000 C CNN
F 2 "" H 5350 3525 50  0001 C CNN
F 3 "~" H 5350 3525 50  0001 C CNN
	1    5350 3525
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3325 5350 3325
Wire Wire Line
	5350 3325 5350 3375
$Comp
L power:GND #PWR?
U 1 1 5DEFFDCF
P 5350 3675
F 0 "#PWR?" H 5350 3425 50  0001 C CNN
F 1 "GND" H 5355 3502 50  0000 C CNN
F 2 "" H 5350 3675 50  0001 C CNN
F 3 "" H 5350 3675 50  0001 C CNN
	1    5350 3675
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DEFFDD9
P 5650 3525
F 0 "R?" V 5750 3550 50  0000 L CNN
F 1 "10k" V 5650 3450 50  0000 L CNN
F 2 "" V 5580 3525 50  0001 C CNN
F 3 "~" H 5650 3525 50  0001 C CNN
	1    5650 3525
	0    -1   1    0   
$EndComp
Text Notes 5450 3775 0    50   ~ 0
TODO: raw in
Text Notes 4975 3025 0    50   ~ 0
mixer
Text GLabel 5800 3175 2    50   Input ~ 0
mixer_out
$Comp
L Jumper:Jumper_3_Bridged12 JP?
U 1 1 5DF29DFE
P 5350 4175
F 0 "JP?" H 5350 4288 50  0000 C CNN
F 1 "Jumper_3_Bridged12" H 5350 4288 50  0001 C CNN
F 2 "" H 5350 4175 50  0001 C CNN
F 3 "~" H 5350 4175 50  0001 C CNN
	1    5350 4175
	1    0    0    -1  
$EndComp
Text GLabel 5650 4225 3    50   Input ~ 0
vca_audio_in
Text GLabel 5350 4325 3    50   Input ~ 0
mixer_out
Text GLabel 5050 4225 3    50   Input ~ 0
vcf_audio_in
Wire Wire Line
	5100 4175 5050 4175
Wire Wire Line
	5050 4175 5050 4225
Wire Wire Line
	5800 2825 5800 3525
Wire Wire Line
	5650 4225 5650 4175
Wire Wire Line
	5650 4175 5600 4175
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 5DFAB719
P 1500 5900
F 0 "J?" H 1550 6125 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 1550 6126 50  0001 C CNN
F 2 "" H 1500 5900 50  0001 C CNN
F 3 "~" H 1500 5900 50  0001 C CNN
	1    1500 5900
	1    0    0    -1  
$EndComp
Text GLabel 1300 5800 0    50   Input ~ 0
square_ctl1
Text GLabel 1300 5900 0    50   Input ~ 0
square_ctl_buf1
Text GLabel 1300 6000 0    50   Input ~ 0
sync_out1
Text GLabel 1800 6000 2    50   Input ~ 0
sync_out2
Text GLabel 1800 5900 2    50   Input ~ 0
square_ctl_buf2
Text GLabel 1800 5800 2    50   Input ~ 0
square_ctl2
$Comp
L power:GND #PWR?
U 1 1 5E051F30
P 1275 7425
F 0 "#PWR?" H 1275 7175 50  0001 C CNN
F 1 "GND" H 1280 7252 50  0000 C CNN
F 2 "" H 1275 7425 50  0001 C CNN
F 3 "" H 1275 7425 50  0001 C CNN
	1    1275 7425
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR?
U 1 1 5E05362F
P 775 7425
F 0 "#PWR?" H 775 7275 50  0001 C CNN
F 1 "VEE" H 793 7598 50  0000 C CNN
F 2 "" H 775 7425 50  0001 C CNN
F 3 "" H 775 7425 50  0001 C CNN
	1    775  7425
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E054C84
P 775 7325
F 0 "#PWR?" H 775 7175 50  0001 C CNN
F 1 "VCC" H 792 7498 50  0000 C CNN
F 2 "" H 775 7325 50  0001 C CNN
F 3 "" H 775 7325 50  0001 C CNN
	1    775  7325
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5E056F10
P 975 7325
F 0 "J?" H 1025 7450 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 1025 7451 50  0001 C CNN
F 2 "" H 975 7325 50  0001 C CNN
F 3 "~" H 975 7325 50  0001 C CNN
	1    975  7325
	1    0    0    -1  
$EndComp
Text Notes 4625 2525 0    50   ~ 0
TODO: vca_ctl and vcf_ctl connectors,\n       mixer, vca, vcf inputs and outputs
Wire Notes Line
	625  6100 625  3150
Wire Notes Line
	625  3150 3800 3150
Wire Notes Line
	3800 3150 3800 6100
Wire Notes Line
	3800 6100 625  6100
$Comp
L Device:C C?
U 1 1 5E0FF54D
P 5575 7425
F 0 "C?" H 5450 7525 50  0000 L CNN
F 1 "1u" H 5450 7325 50  0000 L CNN
F 2 "" H 5613 7275 50  0001 C CNN
F 3 "~" H 5575 7425 50  0001 C CNN
	1    5575 7425
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E10C783
P 5800 7425
F 0 "C?" H 5675 7525 50  0000 L CNN
F 1 "1u" H 5675 7325 50  0000 L CNN
F 2 "" H 5838 7275 50  0001 C CNN
F 3 "~" H 5800 7425 50  0001 C CNN
	1    5800 7425
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E10CB1F
P 5575 7575
F 0 "#PWR?" H 5575 7325 50  0001 C CNN
F 1 "GND" H 5580 7402 50  0000 C CNN
F 2 "" H 5575 7575 50  0001 C CNN
F 3 "" H 5575 7575 50  0001 C CNN
	1    5575 7575
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E10D2B0
P 5800 7575
F 0 "#PWR?" H 5800 7325 50  0001 C CNN
F 1 "GND" H 5805 7402 50  0000 C CNN
F 2 "" H 5800 7575 50  0001 C CNN
F 3 "" H 5800 7575 50  0001 C CNN
	1    5800 7575
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 7200 5575 7200
Wire Wire Line
	5575 7200 5575 7275
Wire Wire Line
	5500 6900 5800 6900
Wire Wire Line
	5800 6900 5800 7275
$Comp
L Device:R_POT RV?
U 1 1 5E12A7CE
P 6100 7350
F 0 "RV?" H 6031 7396 50  0000 R CNN
F 1 "1k" V 6100 7400 50  0000 R CNN
F 2 "" H 6100 7350 50  0001 C CNN
F 3 "~" H 6100 7350 50  0001 C CNN
	1    6100 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5E1317B6
P 6375 7050
F 0 "RV?" H 6306 7096 50  0000 R CNN
F 1 "1k" V 6375 7100 50  0000 R CNN
F 2 "" H 6375 7050 50  0001 C CNN
F 3 "~" H 6375 7050 50  0001 C CNN
	1    6375 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5575 7200 6100 7200
Connection ~ 5575 7200
Wire Wire Line
	5800 6900 6375 6900
Connection ~ 5800 6900
Wire Wire Line
	6375 7200 6375 7500
$Comp
L power:GND #PWR?
U 1 1 5E14B5EA
P 6100 7500
F 0 "#PWR?" H 6100 7250 50  0001 C CNN
F 1 "GND" H 6105 7327 50  0000 C CNN
F 2 "" H 6100 7500 50  0001 C CNN
F 3 "" H 6100 7500 50  0001 C CNN
	1    6100 7500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E14B87F
P 6375 7500
F 0 "#PWR?" H 6375 7250 50  0001 C CNN
F 1 "GND" H 6380 7327 50  0000 C CNN
F 2 "" H 6375 7500 50  0001 C CNN
F 3 "" H 6375 7500 50  0001 C CNN
	1    6375 7500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5E1550B9
P 6625 6850
F 0 "J?" V 6733 6662 50  0000 R CNN
F 1 "Conn_01x02_Male" V 6778 6894 50  0001 L CNN
F 2 "" H 6625 6850 50  0001 C CNN
F 3 "~" H 6625 6850 50  0001 C CNN
	1    6625 6850
	0    -1   1    0   
$EndComp
Wire Wire Line
	6525 7050 6625 7050
Wire Wire Line
	6725 7350 6725 7050
Wire Wire Line
	6250 7350 6725 7350
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5E187B3E
P 6200 6600
F 0 "J?" H 6250 6725 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 6250 6726 50  0001 C CNN
F 2 "" H 6200 6600 50  0001 C CNN
F 3 "~" H 6200 6600 50  0001 C CNN
	1    6200 6600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E189477
P 6000 6600
F 0 "#PWR?" H 6000 6450 50  0001 C CNN
F 1 "+3.3V" H 6015 6773 50  0000 C CNN
F 2 "" H 6000 6600 50  0001 C CNN
F 3 "" H 6000 6600 50  0001 C CNN
	1    6000 6600
	1    0    0    -1  
$EndComp
Text GLabel 6500 6600 2    50   Input ~ 0
PB12
Text GLabel 6500 6700 2    50   Input ~ 0
PB13
Text GLabel 6000 6700 0    50   Input ~ 0
PB15
NoConn ~ 1275 7325
Wire Notes Line
	4450 725  4450 3075
Wire Notes Line
	450  725  450  3075
Wire Notes Line
	450  3075 4450 3075
Wire Notes Line
	450  725  4450 725 
Text Notes 500  675  0    50   ~ 0
TODO: replace that 50k poti\nwith input adjusts at  vca_ctl
$Comp
L Device:R R?
U 1 1 5E3EFEBB
P 9650 1775
F 0 "R?" H 9550 1925 50  0000 L CNN
F 1 "10k" V 9650 1700 50  0000 L CNN
F 2 "" V 9580 1775 50  0001 C CNN
F 3 "~" H 9650 1775 50  0001 C CNN
	1    9650 1775
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R?
U 1 1 5E3EFEC5
P 9825 1775
F 0 "R?" H 9875 1775 50  0000 L CNN
F 1 "10k" H 9875 1700 50  0000 L CNN
F 2 "" V 9755 1775 50  0001 C CNN
F 3 "~" H 9825 1775 50  0001 C CNN
	1    9825 1775
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E3EFECF
P 9825 1625
F 0 "#PWR?" H 9825 1475 50  0001 C CNN
F 1 "VCC" H 9925 1725 50  0000 C CNN
F 2 "" H 9825 1625 50  0001 C CNN
F 3 "" H 9825 1625 50  0001 C CNN
	1    9825 1625
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E3EFEF7
P 9175 1575
F 0 "#PWR?" H 9175 1425 50  0001 C CNN
F 1 "VCC" H 9075 1650 50  0000 C CNN
F 2 "" H 9175 1575 50  0001 C CNN
F 3 "" H 9175 1575 50  0001 C CNN
	1    9175 1575
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8875 1575 9175 1575
Connection ~ 9175 1575
Wire Wire Line
	9175 1575 9475 1575
Wire Wire Line
	9175 1775 9175 1975
Wire Wire Line
	9650 1975 9650 1925
Wire Wire Line
	9825 1975 9825 1925
Wire Wire Line
	9650 1625 9650 1425
Connection ~ 9650 1975
Wire Wire Line
	9650 1975 9825 1975
Wire Wire Line
	9175 1975 9475 1975
Connection ~ 9475 1975
Wire Wire Line
	9475 1975 9650 1975
Connection ~ 9175 1775
Text Notes 10725 3100 1    50   ~ 0
offset compensation: the OpAmp would\nneed to output exactly Vcc - 0.7V (i.e., the voltage\nat the transistor's base) in order to fully close the\nVCF. However, the OpAmp is limited to approx. Vcc-1.5V,\nso we inject some current through this trimming poti.\nWhen the OpAmp is at its Vmax, tune this poti such that\nthe VCF is just fully closed.\n
Connection ~ 8750 1425
Wire Wire Line
	9650 1425 8750 1425
Text Notes 6425 700  0    50   ~ 0
TODO: expo converter for the VCF input
Text Notes 6425 1825 0    50   ~ 0
set such, that with zero control input, the\noutput of the op amp is just at maximum\n(i.e., Vcc minus like 1 V or so)
Connection ~ 8150 1325
$Comp
L Device:RTRIM R?
U 1 1 5E3D0F12
P 8000 1325
F 0 "R?" V 7900 1200 50  0000 C CNN
F 1 "200k" V 7900 1375 50  0000 C CNN
F 2 "" V 7930 1325 50  0001 C CNN
F 3 "~" H 8000 1325 50  0001 C CNN
	1    8000 1325
	0    1    -1   0   
$EndComp
Wire Wire Line
	7800 1325 7850 1325
Wire Wire Line
	7800 1375 7800 1325
$Comp
L power:VEE #PWR?
U 1 1 5E3C6C3C
P 7800 1375
F 0 "#PWR?" H 7800 1225 50  0001 C CNN
F 1 "VEE" H 7818 1548 50  0000 C CNN
F 2 "" H 7800 1375 50  0001 C CNN
F 3 "" H 7800 1375 50  0001 C CNN
	1    7800 1375
	-1   0    0    1   
$EndComp
Text Notes 7325 1375 0    50   ~ 0
set to 100k
Connection ~ 8150 1000
$Comp
L power:GND #PWR?
U 1 1 5E371B63
P 8150 1525
F 0 "#PWR?" H 8150 1275 50  0001 C CNN
F 1 "GND" H 8150 1375 50  0000 C CNN
F 2 "" H 8150 1525 50  0001 C CNN
F 3 "" H 8150 1525 50  0001 C CNN
	1    8150 1525
	1    0    0    -1  
$EndComp
Text Notes 6425 1100 0    50   ~ 0
should be 2x 47k maybe
Wire Wire Line
	8150 1000 8150 1125
Wire Wire Line
	8150 1125 8150 1325
Connection ~ 8150 1125
Wire Wire Line
	7775 1000 7850 1000
Text GLabel 7775 1000 0    50   Input ~ 0
vcf_ctl1
$Comp
L Device:R R?
U 1 1 5E371BB5
P 8000 1000
F 0 "R?" V 8050 1100 50  0000 L CNN
F 1 "100k" V 8000 900 50  0000 L CNN
F 2 "" V 7930 1000 50  0001 C CNN
F 3 "~" H 8000 1000 50  0001 C CNN
	1    8000 1000
	0    -1   1    0   
$EndComp
Wire Wire Line
	7775 1125 7850 1125
$Comp
L Amplifier_Operational:TL074 U?
U 1 1 5E371BA8
P 8450 1425
F 0 "U?" H 8475 1600 50  0000 C CNN
F 1 "TL074" H 8425 1425 50  0000 C CNN
F 2 "" H 8400 1525 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8500 1625 50  0001 C CNN
	1    8450 1425
	1    0    0    1   
$EndComp
Text GLabel 7775 1125 0    50   Input ~ 0
vcf_ctl2
$Comp
L Device:R R?
U 1 1 5E371B7C
P 8000 1125
F 0 "R?" V 8050 1225 50  0000 L CNN
F 1 "100k" V 8000 1025 50  0000 L CNN
F 2 "" V 7930 1125 50  0001 C CNN
F 3 "~" H 8000 1125 50  0001 C CNN
	1    8000 1125
	0    -1   1    0   
$EndComp
Wire Wire Line
	8325 1000 8150 1000
Wire Wire Line
	8750 1000 8625 1000
Wire Wire Line
	8750 1425 8750 1000
$Comp
L Device:R R?
U 1 1 5E371B6F
P 8475 1000
F 0 "R?" V 8375 950 50  0000 L CNN
F 1 "100k" V 8475 900 50  0000 L CNN
F 2 "" V 8405 1000 50  0001 C CNN
F 3 "~" H 8475 1000 50  0001 C CNN
	1    8475 1000
	0    -1   1    0   
$EndComp
Wire Wire Line
	7900 875  8150 875 
Wire Wire Line
	8150 875  8150 1000
Text GLabel 7900 875  0    50   Input ~ 0
vcf_ctl_raw
Text Notes 10100 1975 1    50   ~ 0
set to 7.26k
Wire Notes Line
	9775 2325 10150 2325
Wire Notes Line
	10150 2325 10150 3125
Text Notes 2350 5825 0    50   ~ 0
TODO: more square_ctl_buf outputs.\nor add the clamping circuitry here
Text Notes 6225 1525 0    50   ~ 0
TODO: or just put a resistor here\nor a proper poti for opening the filter.
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E667B2B
P 2850 1275
F 0 "Q?" H 2775 1425 50  0000 L CNN
F 1 "BC557" H 2525 1150 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3050 1200 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 2850 1275 50  0001 L CNN
	1    2850 1275
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E667B35
P 2450 1275
F 0 "Q?" H 2350 1425 50  0000 L CNN
F 1 "BC557" H 2125 1150 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2650 1200 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 2450 1275 50  0001 L CNN
	1    2450 1275
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E667B40
P 3125 1275
F 0 "R?" H 3025 1425 50  0000 L CNN
F 1 "100k" V 3125 1175 50  0000 L CNN
F 2 "" V 3055 1275 50  0001 C CNN
F 3 "~" H 3125 1275 50  0001 C CNN
	1    3125 1275
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R?
U 1 1 5E667B4A
P 3300 1275
F 0 "R?" H 3350 1275 50  0000 L CNN
F 1 "100k" H 3350 1200 50  0000 L CNN
F 2 "" V 3230 1275 50  0001 C CNN
F 3 "~" H 3300 1275 50  0001 C CNN
	1    3300 1275
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E667B54
P 3300 1125
F 0 "#PWR?" H 3300 975 50  0001 C CNN
F 1 "VCC" H 3400 1225 50  0000 C CNN
F 2 "" H 3300 1125 50  0001 C CNN
F 3 "" H 3300 1125 50  0001 C CNN
	1    3300 1125
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E667B5E
P 2650 1075
F 0 "#PWR?" H 2650 925 50  0001 C CNN
F 1 "VCC" H 2550 1150 50  0000 C CNN
F 2 "" H 2650 1075 50  0001 C CNN
F 3 "" H 2650 1075 50  0001 C CNN
	1    2650 1075
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2350 1075 2650 1075
Connection ~ 2650 1075
Wire Wire Line
	2650 1075 2950 1075
Wire Wire Line
	2650 1275 2650 1475
Wire Wire Line
	3125 1475 3125 1425
Wire Wire Line
	3300 1475 3300 1425
Wire Wire Line
	3125 1125 3125 925 
Connection ~ 3125 1475
Wire Wire Line
	3125 1475 3300 1475
Wire Wire Line
	2650 1475 2950 1475
Connection ~ 2950 1475
Wire Wire Line
	2950 1475 3125 1475
Connection ~ 2650 1275
Text Notes 3625 1025 3    50   ~ 0
set to ~~47k
Text Notes -500 1450 0    50   ~ 0
TODO: or just put a resistor here\nor a proper poti for opening the filter.
Text GLabel 1175 800  0    50   Input ~ 0
vca_ctl_raw
Wire Wire Line
	1425 800  1425 925 
Wire Wire Line
	1175 800  1425 800 
$Comp
L Device:R R?
U 1 1 5E667BC6
P 1750 925
F 0 "R?" V 1650 875 50  0000 L CNN
F 1 "100k" V 1750 825 50  0000 L CNN
F 2 "" V 1680 925 50  0001 C CNN
F 3 "~" H 1750 925 50  0001 C CNN
	1    1750 925 
	0    -1   1    0   
$EndComp
Wire Wire Line
	2025 1350 2025 925 
Wire Wire Line
	2025 925  1900 925 
Wire Wire Line
	1600 925  1425 925 
$Comp
L Device:R R?
U 1 1 5E667BB9
P 1275 1050
F 0 "R?" V 1325 1150 50  0000 L CNN
F 1 "100k" V 1275 950 50  0000 L CNN
F 2 "" V 1205 1050 50  0001 C CNN
F 3 "~" H 1275 1050 50  0001 C CNN
	1    1275 1050
	0    -1   1    0   
$EndComp
Text GLabel 1050 1050 0    50   Input ~ 0
vca_ctl2
$Comp
L Amplifier_Operational:TL074 U?
U 1 1 5E667BAE
P 1725 1350
F 0 "U?" H 1750 1525 50  0000 C CNN
F 1 "TL074" H 1700 1350 50  0000 C CNN
F 2 "" H 1675 1450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1775 1550 50  0001 C CNN
	1    1725 1350
	1    0    0    1   
$EndComp
Wire Wire Line
	1050 1050 1125 1050
$Comp
L Device:R R?
U 1 1 5E667BA3
P 1275 925
F 0 "R?" V 1325 1025 50  0000 L CNN
F 1 "100k" V 1275 825 50  0000 L CNN
F 2 "" V 1205 925 50  0001 C CNN
F 3 "~" H 1275 925 50  0001 C CNN
	1    1275 925 
	0    -1   1    0   
$EndComp
Text GLabel 1050 925  0    50   Input ~ 0
vca_ctl1
Wire Wire Line
	1050 925  1125 925 
Connection ~ 1425 1050
Wire Wire Line
	1425 1050 1425 1250
Wire Wire Line
	1425 925  1425 1050
Text Notes -300 1025 0    50   ~ 0
should be 2x 47k maybe
$Comp
L power:GND #PWR?
U 1 1 5E667B93
P 1425 1450
F 0 "#PWR?" H 1425 1200 50  0001 C CNN
F 1 "GND" H 1425 1300 50  0000 C CNN
F 2 "" H 1425 1450 50  0001 C CNN
F 3 "" H 1425 1450 50  0001 C CNN
	1    1425 1450
	1    0    0    -1  
$EndComp
Connection ~ 1425 925 
Text Notes 600  1300 0    50   ~ 0
set to 100k
$Comp
L power:VEE #PWR?
U 1 1 5E667B87
P 1075 1300
F 0 "#PWR?" H 1075 1150 50  0001 C CNN
F 1 "VEE" H 1093 1473 50  0000 C CNN
F 2 "" H 1075 1300 50  0001 C CNN
F 3 "" H 1075 1300 50  0001 C CNN
	1    1075 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	1075 1300 1075 1250
Wire Wire Line
	1075 1250 1125 1250
$Comp
L Device:RTRIM R?
U 1 1 5E667B7B
P 1275 1250
F 0 "R?" V 1175 1125 50  0000 C CNN
F 1 "200k" V 1175 1300 50  0000 C CNN
F 2 "" V 1205 1250 50  0001 C CNN
F 3 "~" H 1275 1250 50  0001 C CNN
	1    1275 1250
	0    1    -1   0   
$EndComp
Connection ~ 1425 1250
Text Notes -300 1750 0    50   ~ 0
set such, that with zero control input, the\noutput of the op amp is just at maximum\n(i.e., Vcc minus like 1 V or so)
Wire Wire Line
	2025 925  3125 925 
Connection ~ 2025 925 
$Comp
L power:GND #PWR?
U 1 1 5E7AF844
P 6825 5900
F 0 "#PWR?" H 6825 5650 50  0001 C CNN
F 1 "GND" H 6830 5727 50  0000 C CNN
F 2 "" H 6825 5900 50  0001 C CNN
F 3 "" H 6825 5900 50  0001 C CNN
	1    6825 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E7B061B
P 6825 5750
F 0 "C?" H 6700 5650 50  0000 L CNN
F 1 "any" H 6940 5705 50  0001 L CNN
F 2 "" H 6863 5600 50  0001 C CNN
F 3 "~" H 6825 5750 50  0001 C CNN
	1    6825 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R?
U 1 1 5E7BA9B6
P 6675 5525
F 0 "R?" V 6725 5700 50  0000 C CNN
F 1 "any" V 6550 5450 50  0001 C CNN
F 2 "" V 6605 5525 50  0001 C CNN
F 3 "~" H 6675 5525 50  0001 C CNN
	1    6675 5525
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E7D5649
P 7125 5900
F 0 "#PWR?" H 7125 5650 50  0001 C CNN
F 1 "GND" H 7130 5727 50  0000 C CNN
F 2 "" H 7125 5900 50  0001 C CNN
F 3 "" H 7125 5900 50  0001 C CNN
	1    7125 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R?
U 1 1 5E7D565D
P 6675 5350
F 0 "R?" V 6725 5525 50  0000 C CNN
F 1 "any" V 6550 5275 50  0001 C CNN
F 2 "" V 6605 5350 50  0001 C CNN
F 3 "~" H 6675 5350 50  0001 C CNN
	1    6675 5350
	0    1    -1   0   
$EndComp
Wire Wire Line
	6825 5350 7125 5350
Wire Wire Line
	7125 5350 7125 5600
$Comp
L Device:C C?
U 1 1 5E7EABA3
P 7125 5750
F 0 "C?" H 7000 5650 50  0000 L CNN
F 1 "any" H 7240 5705 50  0001 L CNN
F 2 "" H 7163 5600 50  0001 C CNN
F 3 "~" H 7125 5750 50  0001 C CNN
	1    7125 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E7EABAD
P 7425 5900
F 0 "#PWR?" H 7425 5650 50  0001 C CNN
F 1 "GND" H 7430 5727 50  0000 C CNN
F 2 "" H 7425 5900 50  0001 C CNN
F 3 "" H 7425 5900 50  0001 C CNN
	1    7425 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E7EABB7
P 7425 5750
F 0 "C?" H 7300 5650 50  0000 L CNN
F 1 "any" H 7540 5705 50  0001 L CNN
F 2 "" H 7463 5600 50  0001 C CNN
F 3 "~" H 7425 5750 50  0001 C CNN
	1    7425 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R?
U 1 1 5E7F515B
P 6675 5175
F 0 "R?" V 6725 5350 50  0000 C CNN
F 1 "any" V 6550 5100 50  0001 C CNN
F 2 "" V 6605 5175 50  0001 C CNN
F 3 "~" H 6675 5175 50  0001 C CNN
	1    6675 5175
	0    1    -1   0   
$EndComp
Wire Wire Line
	6825 5175 7425 5175
Wire Wire Line
	7425 5175 7425 5600
Wire Wire Line
	6825 5525 6825 5600
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 5E82F989
P 7025 4850
F 0 "J?" H 7075 4625 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 7075 5076 50  0001 C CNN
F 2 "" H 7025 4850 50  0001 C CNN
F 3 "~" H 7025 4850 50  0001 C CNN
	1    7025 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6825 4950 6525 4950
Wire Wire Line
	6525 4950 6525 5175
Wire Wire Line
	6825 4850 6450 4850
Wire Wire Line
	6450 4850 6450 5350
Wire Wire Line
	6450 5350 6525 5350
Wire Wire Line
	6825 4750 6375 4750
Wire Wire Line
	6375 4750 6375 5525
Wire Wire Line
	6375 5525 6525 5525
Wire Wire Line
	7425 5175 7425 4950
Wire Wire Line
	7425 4950 7325 4950
Connection ~ 7425 5175
Wire Wire Line
	7125 5350 7500 5350
Wire Wire Line
	7500 5350 7500 4850
Wire Wire Line
	7500 4850 7325 4850
Connection ~ 7125 5350
Wire Wire Line
	6825 5525 7575 5525
Wire Wire Line
	7575 5525 7575 4750
Wire Wire Line
	7575 4750 7325 4750
Connection ~ 6825 5525
Text Notes 6350 6125 0    50   ~ 0
general\npurpose\nlow pass\nfilters
Wire Notes Line
	6325 4650 7625 4650
Wire Notes Line
	7625 4650 7625 6150
Wire Notes Line
	7625 6150 6325 6150
Wire Notes Line
	6325 4650 6325 6150
$EndSCHEMATC
