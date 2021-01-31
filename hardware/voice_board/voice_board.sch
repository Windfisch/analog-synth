EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "voice board"
Date ""
Rev "02_patch3"
Comp "Windfisch"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 2350 1550
$Comp
L Device:R R10
U 1 1 5D95F81E
P 2350 1400
F 0 "R10" H 2420 1446 50  0000 L CNN
F 1 "10k" V 2350 1325 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2280 1400 50  0001 C CNN
F 3 "~" H 2350 1400 50  0001 C CNN
	1    2350 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	2225 1550 2350 1550
Wire Wire Line
	2350 1550 2475 1550
$Comp
L Transistor_BJT:BC327 Q3
U 1 1 5D96447B
P 2575 1750
F 0 "Q3" H 2450 1900 50  0000 L CNN
F 1 "BC327" H 2766 1705 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2775 1675 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC327-D.PDF" H 2575 1750 50  0001 L CNN
	1    2575 1750
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC327 Q1
U 1 1 5D969E4D
P 2125 1750
F 0 "Q1" H 2000 1900 50  0000 L CNN
F 1 "BC327" V 2350 1625 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2325 1675 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC327-D.PDF" H 2125 1750 50  0001 L CNN
	1    2125 1750
	1    0    0    1   
$EndComp
$Comp
L power:VEE #PWR07
U 1 1 5D9809F3
P 2475 2600
F 0 "#PWR07" H 2475 2450 50  0001 C CNN
F 1 "VEE" H 2493 2773 50  0000 C CNN
F 2 "" H 2475 2600 50  0001 C CNN
F 3 "" H 2475 2600 50  0001 C CNN
	1    2475 2600
	-1   0    0    1   
$EndComp
$Comp
L power:VEE #PWR06
U 1 1 5D9813BC
P 2225 2600
F 0 "#PWR06" H 2225 2450 50  0001 C CNN
F 1 "VEE" H 2243 2773 50  0000 C CNN
F 2 "" H 2225 2600 50  0001 C CNN
F 3 "" H 2225 2600 50  0001 C CNN
	1    2225 2600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 5DD7C07D
P 2225 2450
F 0 "R9" H 2075 2500 50  0000 L CNN
F 1 "10k" V 2225 2375 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2155 2450 50  0001 C CNN
F 3 "~" H 2225 2450 50  0001 C CNN
	1    2225 2450
	1    0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 5DD7C087
P 2475 2450
F 0 "R11" H 2545 2496 50  0000 L CNN
F 1 "10k" V 2475 2375 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2405 2450 50  0001 C CNN
F 3 "~" H 2475 2450 50  0001 C CNN
	1    2475 2450
	1    0    0    1   
$EndComp
Wire Wire Line
	2800 2025 2475 2025
Wire Wire Line
	2800 2225 2225 2225
Connection ~ 2225 2225
Wire Wire Line
	2225 2300 2225 2225
Wire Wire Line
	2475 2300 2475 2025
Connection ~ 2475 2025
Wire Wire Line
	3250 2225 3175 2225
Wire Wire Line
	3100 2025 3175 2025
$Comp
L Amplifier_Operational:TL074 U1
U 1 1 5DD7C0CD
P 3550 2125
F 0 "U1" H 3575 2300 50  0000 C CNN
F 1 "TL074" H 3525 2125 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3500 2225 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3600 2325 50  0001 C CNN
	1    3550 2125
	1    0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 5DD7C0D7
P 2950 2225
F 0 "R13" V 2850 2200 50  0000 L CNN
F 1 "22k" V 2950 2150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2880 2225 50  0001 C CNN
F 3 "~" H 2950 2225 50  0001 C CNN
	1    2950 2225
	0    1    -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 5DD7C0E1
P 2950 2025
F 0 "R12" V 3050 2000 50  0000 L CNN
F 1 "22k" V 2950 1950 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2880 2025 50  0001 C CNN
F 3 "~" H 2950 2025 50  0001 C CNN
	1    2950 2025
	0    1    -1   0   
$EndComp
$Comp
L Device:R R17
U 1 1 5DD7C0EB
P 3525 1800
F 0 "R17" V 3625 1750 50  0000 L CNN
F 1 "100k" V 3525 1700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3455 1800 50  0001 C CNN
F 3 "~" H 3525 1800 50  0001 C CNN
	1    3525 1800
	0    1    -1   0   
$EndComp
Connection ~ 3175 2025
Wire Wire Line
	3175 2025 3250 2025
Wire Wire Line
	3175 2325 3175 2225
Connection ~ 3175 2225
Wire Wire Line
	3175 2225 3100 2225
Text Notes 3400 2525 0    50   ~ 0
differential to\nsingle-ended
Text Notes 2075 1750 2    39   ~ 0
differential pair\n(current controlled\namplification)
Wire Wire Line
	2475 1950 2475 2025
Wire Wire Line
	2225 1950 2225 2225
Text Notes 3100 1500 2    50   ~ 0
current mirror as\nvoltage controlled\ncurrent source
$Comp
L Device:R R8
U 1 1 5D9A8C46
P 1725 2525
F 0 "R8" H 1800 2475 50  0000 L CNN
F 1 "1k" V 1725 2475 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1655 2525 50  0001 C CNN
F 3 "~" H 1725 2525 50  0001 C CNN
	1    1725 2525
	1    0    0    1   
$EndComp
$Comp
L Device:R_Variable R7
U 1 1 5D9A8C32
P 1725 2225
F 0 "R7" H 1775 2225 50  0000 L CNN
F 1 "100k" H 1775 2150 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" V 1655 2225 50  0001 C CNN
F 3 "~" H 1725 2225 50  0001 C CNN
	1    1725 2225
	1    0    0    -1  
$EndComp
Text GLabel 1050 1975 0    50   Input ~ 0
vca_audio_in
Wire Wire Line
	1725 2375 1925 2375
Wire Wire Line
	1925 2375 1925 1750
Connection ~ 1725 2375
Wire Wire Line
	3175 1800 3375 1800
Wire Wire Line
	3175 1800 3175 2025
Wire Wire Line
	3675 1800 3850 1800
Wire Wire Line
	3850 1800 3850 2125
Wire Wire Line
	1050 1975 1425 1975
Wire Wire Line
	1425 1975 1425 1775
Text Notes 525  2825 0    50   ~ 0
Voltage controlled amplifier
Text Notes 525  2100 0    50   ~ 0
triangle from VCO mk I
Text Notes 550  3975 0    50   ~ 0
transistor buffer.\nsquare_ctl is very sensitive,\nloading it will affect the\nfrequency and pulse width\nof the oscillator
$Comp
L power:VEE #PWR024
U 1 1 5D8E8D04
P 1675 3850
F 0 "#PWR024" H 1675 3700 50  0001 C CNN
F 1 "VEE" H 1675 4025 50  0000 C CNN
F 2 "" H 1675 3850 50  0001 C CNN
F 3 "" H 1675 3850 50  0001 C CNN
	1    1675 3850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R46
U 1 1 5D8E86DE
P 1675 3700
F 0 "R46" H 1775 3600 50  0000 C CNN
F 1 "1k" V 1675 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1605 3700 50  0001 C CNN
F 3 "~" H 1675 3700 50  0001 C CNN
	1    1675 3700
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR023
U 1 1 5D8E6DCF
P 1675 3150
F 0 "#PWR023" H 1675 3000 50  0001 C CNN
F 1 "VCC" H 1675 3325 50  0000 C CNN
F 2 "" H 1675 3150 50  0001 C CNN
F 3 "" H 1675 3150 50  0001 C CNN
	1    1675 3150
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q17
U 1 1 5D8E580C
P 1575 3350
F 0 "Q17" H 1766 3396 50  0000 L CNN
F 1 "BC547" H 1766 3305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1775 3275 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 1575 3350 50  0001 L CNN
	1    1575 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R44
U 1 1 5D88990F
P 1225 3350
F 0 "R44" V 1125 3350 50  0000 C CNN
F 1 "10k" V 1225 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1155 3350 50  0001 C CNN
F 3 "~" H 1225 3350 50  0001 C CNN
	1    1225 3350
	0    1    1    0   
$EndComp
Text GLabel 1075 3350 0    50   Input ~ 0
square_ctl1
$Comp
L power:+3.3V #PWR038
U 1 1 5DC05FDC
P 5100 4925
F 0 "#PWR038" H 5100 4775 50  0001 C CNN
F 1 "+3.3V" H 5250 5000 50  0000 C CNN
F 2 "" H 5100 4925 50  0001 C CNN
F 3 "" H 5100 4925 50  0001 C CNN
	1    5100 4925
	1    0    0    -1  
$EndComp
Text GLabel 4600 5225 0    50   Input ~ 0
PB13
Text GLabel 4600 5425 0    50   Input ~ 0
PB15
Text GLabel 4600 5525 0    50   Input ~ 0
PB12
$Comp
L power:GND #PWR039
U 1 1 5DBFDDAA
P 5100 5825
F 0 "#PWR039" H 5100 5575 50  0001 C CNN
F 1 "GND" H 5250 5750 50  0000 C CNN
F 2 "" H 5100 5825 50  0001 C CNN
F 3 "" H 5100 5825 50  0001 C CNN
	1    5100 5825
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 5325 4600 5325
$Comp
L power:GND #PWR034
U 1 1 5DBFDAC8
P 4250 5325
F 0 "#PWR034" H 4250 5075 50  0001 C CNN
F 1 "GND" H 4255 5152 50  0000 C CNN
F 2 "" H 4250 5325 50  0001 C CNN
F 3 "" H 4250 5325 50  0001 C CNN
	1    4250 5325
	1    0    0    -1  
$EndComp
$Comp
L Analog_DAC:MCP4822 U2
U 1 1 5DBF2744
P 5100 5325
F 0 "U2" H 4775 5675 50  0000 C CNN
F 1 "MCP4822" H 5300 5675 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5900 5025 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 5900 5025 50  0001 C CNN
	1    5100 5325
	1    0    0    -1  
$EndComp
Wire Wire Line
	1725 1775 1425 1775
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
F 2 "Capacitor_THT:CP_Radial_D7.5mm_P2.50mm" H 8363 1975 50  0001 C CNN
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
F 0 "R27" V 8325 2025 50  0000 L CNN
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
F 2 "footprints:C_rect_smd_combo" H 8963 2425 50  0001 C CNN
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
F 2 "footprints:C_rect_smd_combo" H 8963 3050 50  0001 C CNN
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
F 2 "footprints:C_rect_smd_combo" H 8963 3675 50  0001 C CNN
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
	9900 2125 9675 2125
$Comp
L power:GND #PWR010
U 1 1 5DFC806B
P 3175 2625
F 0 "#PWR010" H 3175 2375 50  0001 C CNN
F 1 "GND" H 3175 2475 50  0001 C CNN
F 2 "" H 3175 2625 50  0001 C CNN
F 3 "" H 3175 2625 50  0001 C CNN
	1    3175 2625
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
F 2 "Capacitor_THT:CP_Radial_D7.5mm_P2.50mm" H 9563 1975 50  0001 C CNN
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
Text Notes 9825 2725 1    50   ~ 0
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
$Comp
L Amplifier_Operational:TL074 U1
U 4 1 5DF27280
P 10275 4475
F 0 "U1" H 10300 4650 50  0000 C CNN
F 1 "TL074" H 10250 4475 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10225 4575 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 10325 4675 50  0001 C CNN
	4    10275 4475
	1    0    0    1   
$EndComp
$Comp
L Device:R R37
U 1 1 5DF2728A
P 9675 4575
F 0 "R37" V 9575 4550 50  0000 L CNN
F 1 " " V 9675 4525 50  0000 L CNN
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
F 1 " " V 9675 4325 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9605 4375 50  0001 C CNN
F 3 "~" H 9675 4375 50  0001 C CNN
	1    9675 4375
	0    1    -1   0   
$EndComp
Wire Wire Line
	9900 4375 9975 4375
Wire Wire Line
	9900 4675 9900 4575
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
F 2 "footprints:C_rect_smd_combo" H 8963 4425 50  0001 C CNN
F 3 "~" H 8925 4575 50  0001 C CNN
	1    8925 4575
	0    -1   1    0   
$EndComp
Connection ~ 8775 4575
Wire Wire Line
	8775 4575 8775 4625
Connection ~ 9075 4575
Wire Wire Line
	9075 4575 9075 4375
Wire Wire Line
	9075 4625 9075 4575
$Comp
L Jumper:Jumper_2_Bridged JP1
U 1 1 5DD3CFE2
P 2600 3550
F 0 "JP1" H 2600 3653 50  0000 C CNN
F 1 "Jumper_2_Bridged" H 2600 3654 50  0001 C CNN
F 2 "footprints:SolderDipJumper2alt" H 2600 3550 50  0001 C CNN
F 3 "~" H 2600 3550 50  0001 C CNN
	1    2600 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5DD3E1B6
P 2950 3550
F 0 "C8" V 2800 3550 50  0000 C CNN
F 1 "1n" V 3100 3550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2988 3400 50  0001 C CNN
F 3 "~" H 2950 3550 50  0001 C CNN
	1    2950 3550
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q19
U 1 1 5DD407CF
P 3450 3550
F 0 "Q19" H 3656 3596 50  0000 L CNN
F 1 "2N7000" H 3656 3505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3650 3475 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 3450 3550 50  0001 L CNN
	1    3450 3550
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR031
U 1 1 5DD54441
P 3550 3850
F 0 "#PWR031" H 3550 3700 50  0001 C CNN
F 1 "VEE" H 3568 4023 50  0000 C CNN
F 2 "" H 3550 3850 50  0001 C CNN
F 3 "" H 3550 3850 50  0001 C CNN
	1    3550 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 3850 3550 3750
$Comp
L power:VEE #PWR029
U 1 1 5DD3FBCD
P 3100 3850
F 0 "#PWR029" H 3100 3700 50  0001 C CNN
F 1 "VEE" H 3118 4023 50  0000 C CNN
F 2 "" H 3100 3850 50  0001 C CNN
F 3 "" H 3100 3850 50  0001 C CNN
	1    3100 3850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R50
U 1 1 5DD3F133
P 3100 3700
F 0 "R50" H 2975 3750 50  0000 C CNN
F 1 "10k" V 3100 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3030 3700 50  0001 C CNN
F 3 "~" H 3100 3700 50  0001 C CNN
	1    3100 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 3550 3250 3550
Connection ~ 3100 3550
Text GLabel 3600 3300 2    50   Input ~ 0
sync_out1
Wire Wire Line
	3600 3300 3550 3300
Wire Wire Line
	3550 3300 3550 3350
Text Notes 3050 3425 0    50   ~ 0
sync pulse\ngeneration
Connection ~ 1675 3550
Text GLabel 1900 3550 3    50   Input ~ 0
square_ctl_buf1
Text Notes 9900 1975 2    50   ~ 0
current mirror as\nvoltage controlled\ncurrent source
Text Notes 9525 4075 1    50   ~ 0
transistor ladder VCF
Text GLabel 5075 3750 0    50   Input ~ 0
vcf_audio_out
Text GLabel 4900 600  0    50   Input ~ 0
vco1_in
$Comp
L Device:R_POT R57
U 1 1 5DEF116D
P 4950 800
F 0 "R57" V 4835 800 50  0000 C CNN
F 1 "10k" V 4950 800 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 4950 800 50  0001 C CNN
F 3 "~" H 4950 800 50  0001 C CNN
	1    4950 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 600  4950 600 
Wire Wire Line
	4950 600  4950 650 
$Comp
L power:GND #PWR047
U 1 1 5DEFCD9E
P 4950 950
F 0 "#PWR047" H 4950 700 50  0001 C CNN
F 1 "GND" H 4955 777 50  0000 C CNN
F 2 "" H 4950 950 50  0001 C CNN
F 3 "" H 4950 950 50  0001 C CNN
	1    4950 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R60
U 1 1 5DEFD971
P 5250 800
F 0 "R60" V 5350 825 50  0000 L CNN
F 1 "10k" V 5250 725 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5180 800 50  0001 C CNN
F 3 "~" H 5250 800 50  0001 C CNN
	1    5250 800 
	0    -1   1    0   
$EndComp
Text GLabel 4900 1300 0    50   Input ~ 0
vco2_in
$Comp
L Device:R_POT R58
U 1 1 5DEFFDC3
P 4950 1500
F 0 "R58" V 4835 1500 50  0000 C CNN
F 1 "10k" V 4950 1500 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 4950 1500 50  0001 C CNN
F 3 "~" H 4950 1500 50  0001 C CNN
	1    4950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1300 4950 1300
Wire Wire Line
	4950 1300 4950 1350
$Comp
L power:GND #PWR048
U 1 1 5DEFFDCF
P 4950 1650
F 0 "#PWR048" H 4950 1400 50  0001 C CNN
F 1 "GND" H 4955 1477 50  0000 C CNN
F 2 "" H 4950 1650 50  0001 C CNN
F 3 "" H 4950 1650 50  0001 C CNN
	1    4950 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R61
U 1 1 5DEFFDD9
P 5250 1500
F 0 "R61" V 5350 1525 50  0000 L CNN
F 1 "10k" V 5250 1425 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5180 1500 50  0001 C CNN
F 3 "~" H 5250 1500 50  0001 C CNN
	1    5250 1500
	0    -1   1    0   
$EndComp
Text Notes 4575 1000 0    50   ~ 0
mixer
Text GLabel 5400 1500 2    50   Input ~ 0
mixer_out
Text GLabel 6650 6550 3    50   Input ~ 0
vca_audio_in
Text GLabel 6550 6550 3    50   Input ~ 0
mixer_out
Text GLabel 6450 6550 3    50   Input ~ 0
vcf_audio_in
Wire Wire Line
	5400 800  5400 1500
Text GLabel 1175 5525 0    50   Input ~ 0
square_ctl1
Text GLabel 1175 5625 0    50   Input ~ 0
square_ctl_buf1
Text GLabel 1175 6025 0    50   Input ~ 0
sync_out1
Text GLabel 1675 6025 2    50   Input ~ 0
sync_out2
Text GLabel 1675 5625 2    50   Input ~ 0
square_ctl_buf2
Text GLabel 1675 5525 2    50   Input ~ 0
square_ctl2
$Comp
L power:GND #PWR037
U 1 1 5E051F30
P 6850 7525
F 0 "#PWR037" H 6850 7275 50  0001 C CNN
F 1 "GND" H 6855 7352 50  0000 C CNN
F 2 "" H 6850 7525 50  0001 C CNN
F 3 "" H 6850 7525 50  0001 C CNN
	1    6850 7525
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR036
U 1 1 5E05362F
P 6350 7525
F 0 "#PWR036" H 6350 7375 50  0001 C CNN
F 1 "VEE" H 6368 7698 50  0000 C CNN
F 2 "" H 6350 7525 50  0001 C CNN
F 3 "" H 6350 7525 50  0001 C CNN
	1    6350 7525
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR035
U 1 1 5E054C84
P 6350 7425
F 0 "#PWR035" H 6350 7275 50  0001 C CNN
F 1 "VCC" H 6367 7598 50  0000 C CNN
F 2 "" H 6350 7425 50  0001 C CNN
F 3 "" H 6350 7425 50  0001 C CNN
	1    6350 7425
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J3
U 1 1 5E056F10
P 6550 7425
F 0 "J3" H 6600 7550 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 6600 7551 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 6550 7425 50  0001 C CNN
F 3 "~" H 6550 7425 50  0001 C CNN
	1    6550 7425
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5E0FF54D
P 5675 5750
F 0 "C10" H 5525 5850 50  0000 L CNN
F 1 "1u" H 5575 5650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5713 5600 50  0001 C CNN
F 3 "~" H 5675 5750 50  0001 C CNN
	1    5675 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5E10C783
P 5900 5750
F 0 "C11" H 5750 5850 50  0000 L CNN
F 1 "1u" H 5800 5650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5938 5600 50  0001 C CNN
F 3 "~" H 5900 5750 50  0001 C CNN
	1    5900 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 5E10CB1F
P 5675 5900
F 0 "#PWR040" H 5675 5650 50  0001 C CNN
F 1 "GND" H 5680 5727 50  0000 C CNN
F 2 "" H 5675 5900 50  0001 C CNN
F 3 "" H 5675 5900 50  0001 C CNN
	1    5675 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 5E10D2B0
P 5900 5900
F 0 "#PWR042" H 5900 5650 50  0001 C CNN
F 1 "GND" H 5905 5727 50  0000 C CNN
F 2 "" H 5900 5900 50  0001 C CNN
F 3 "" H 5900 5900 50  0001 C CNN
	1    5900 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 5525 5675 5525
Wire Wire Line
	5675 5525 5675 5600
Wire Wire Line
	5600 5225 5900 5225
Wire Wire Line
	5900 5225 5900 5600
Connection ~ 5675 5525
Connection ~ 5900 5225
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J2
U 1 1 5E187B3E
P 4800 4600
F 0 "J2" H 4850 4725 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 4850 4726 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 4800 4600 50  0001 C CNN
F 3 "~" H 4800 4600 50  0001 C CNN
	1    4800 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR033
U 1 1 5E189477
P 4600 4600
F 0 "#PWR033" H 4600 4450 50  0001 C CNN
F 1 "+3.3V" H 4615 4773 50  0000 C CNN
F 2 "" H 4600 4600 50  0001 C CNN
F 3 "" H 4600 4600 50  0001 C CNN
	1    4600 4600
	1    0    0    -1  
$EndComp
Text GLabel 5100 4600 2    50   Input ~ 0
PB12
Text GLabel 5100 4700 2    50   Input ~ 0
PB13
Text GLabel 4600 4700 0    50   Input ~ 0
PB15
NoConn ~ 6850 7425
Wire Notes Line
	4450 500  4450 2850
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
Text Notes 10200 1975 0    39   ~ 0
offset compensation: the\nOpAmp would need to output\nexactly Vcc - 0.7V (i.e., the\nvoltage at the transistor's\nbase) in order to fully close\nthe VCF. However, the OpAmp\nis limited to approx. Vcc-1.5V,\nso we inject some current\nthrough this trimming poti.\nWhen the OpAmp is at its\nVmax, tune this poti such\nthat the VCF is just fully\nclosed.\n
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
Text Notes 7025 850  0    50   ~ 0
should\nbe 2x 47k\nmaybe
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
U 3 1 5E371BA8
P 8500 1175
F 0 "U1" H 8525 1350 50  0000 C CNN
F 1 "TL074" H 8475 1175 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8450 1275 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8550 1375 50  0001 C CNN
	3    8500 1175
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
$Comp
L Transistor_BJT:BC557 Q4
U 1 1 5E667B2B
P 2850 1050
F 0 "Q4" H 2775 1200 50  0000 L CNN
F 1 "BC557" H 2525 950 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3050 975 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 2850 1050 50  0001 L CNN
	1    2850 1050
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q2
U 1 1 5E667B35
P 2450 1050
F 0 "Q2" H 2350 1200 50  0000 L CNN
F 1 "BC557" H 2125 925 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2650 975 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 2450 1050 50  0001 L CNN
	1    2450 1050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R14
U 1 1 5E667B40
P 3125 1050
F 0 "R14" V 3075 1150 50  0000 L CNN
F 1 "100k" V 3125 950 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3055 1050 50  0001 C CNN
F 3 "~" H 3125 1050 50  0001 C CNN
	1    3125 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R16
U 1 1 5E667B4A
P 3300 1050
F 0 "R16" H 3350 1050 50  0000 L CNN
F 1 "100k" H 3350 975 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" V 3230 1050 50  0001 C CNN
F 3 "~" H 3300 1050 50  0001 C CNN
	1    3300 1050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR011
U 1 1 5E667B54
P 3300 900
F 0 "#PWR011" H 3300 750 50  0001 C CNN
F 1 "VCC" H 3400 1000 50  0000 C CNN
F 2 "" H 3300 900 50  0001 C CNN
F 3 "" H 3300 900 50  0001 C CNN
	1    3300 900 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR08
U 1 1 5E667B5E
P 2650 850
F 0 "#PWR08" H 2650 700 50  0001 C CNN
F 1 "VCC" H 2550 925 50  0000 C CNN
F 2 "" H 2650 850 50  0001 C CNN
F 3 "" H 2650 850 50  0001 C CNN
	1    2650 850 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2350 850  2650 850 
Connection ~ 2650 850 
Wire Wire Line
	2650 850  2950 850 
Wire Wire Line
	2650 1050 2650 1250
Wire Wire Line
	3125 1250 3125 1200
Wire Wire Line
	3300 1250 3300 1200
Wire Wire Line
	3125 900  3125 700 
Connection ~ 3125 1250
Wire Wire Line
	3125 1250 3300 1250
Wire Wire Line
	2650 1250 2950 1250
Connection ~ 2950 1250
Wire Wire Line
	2950 1250 3125 1250
Connection ~ 2650 1050
Text Notes 3625 800  3    50   ~ 0
set to ~~47k
Text GLabel 1175 575  0    50   Input ~ 0
vca_ctl_raw
Wire Wire Line
	1425 575  1425 700 
Wire Wire Line
	1175 575  1425 575 
$Comp
L Device:R R6
U 1 1 5E667BC6
P 1750 700
F 0 "R6" V 1650 650 50  0000 L CNN
F 1 "100k" V 1750 600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1680 700 50  0001 C CNN
F 3 "~" H 1750 700 50  0001 C CNN
	1    1750 700 
	0    -1   1    0   
$EndComp
Wire Wire Line
	2025 1125 2025 700 
Wire Wire Line
	2025 700  1900 700 
Wire Wire Line
	1600 700  1425 700 
$Comp
L Device:R R4
U 1 1 5E667BB9
P 1275 825
F 0 "R4" V 1325 925 50  0000 L CNN
F 1 "100k" V 1275 725 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1205 825 50  0001 C CNN
F 3 "~" H 1275 825 50  0001 C CNN
	1    1275 825 
	0    -1   1    0   
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 2 1 5E667BAE
P 1725 1125
F 0 "U1" H 1750 1300 50  0000 C CNN
F 1 "TL074" H 1700 1125 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1675 1225 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1775 1325 50  0001 C CNN
	2    1725 1125
	1    0    0    1   
$EndComp
Wire Wire Line
	1050 825  1125 825 
$Comp
L Device:R R3
U 1 1 5E667BA3
P 1275 700
F 0 "R3" V 1325 800 50  0000 L CNN
F 1 "100k" V 1275 600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1205 700 50  0001 C CNN
F 3 "~" H 1275 700 50  0001 C CNN
	1    1275 700 
	0    -1   1    0   
$EndComp
Text GLabel 1050 700  0    50   Input ~ 0
vca_ctl1
Wire Wire Line
	1050 700  1125 700 
Connection ~ 1425 825 
Wire Wire Line
	1425 825  1425 1025
Wire Wire Line
	1425 700  1425 825 
Text Notes 1175 575  0    50   ~ 0
should be 2x 47k maybe
$Comp
L power:GND #PWR04
U 1 1 5E667B93
P 1425 1225
F 0 "#PWR04" H 1425 975 50  0001 C CNN
F 1 "GND" H 1425 1075 50  0000 C CNN
F 2 "" H 1425 1225 50  0001 C CNN
F 3 "" H 1425 1225 50  0001 C CNN
	1    1425 1225
	1    0    0    -1  
$EndComp
Connection ~ 1425 700 
Text Notes 600  1075 0    50   ~ 0
set to 100k
$Comp
L power:VEE #PWR03
U 1 1 5E667B87
P 1075 1075
F 0 "#PWR03" H 1075 925 50  0001 C CNN
F 1 "VEE" H 1093 1248 50  0000 C CNN
F 2 "" H 1075 1075 50  0001 C CNN
F 3 "" H 1075 1075 50  0001 C CNN
	1    1075 1075
	-1   0    0    1   
$EndComp
Wire Wire Line
	1075 1075 1075 1025
Wire Wire Line
	1075 1025 1125 1025
$Comp
L Device:RTRIM R5
U 1 1 5E667B7B
P 1275 1025
F 0 "R5" V 1175 900 50  0000 C CNN
F 1 "200k" V 1175 1075 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" V 1205 1025 50  0001 C CNN
F 3 "~" H 1275 1025 50  0001 C CNN
	1    1275 1025
	0    1    -1   0   
$EndComp
Connection ~ 1425 1025
Text Notes 525  1800 0    50   ~ 0
set such, that with\nzero control input,\nthe output of the op\namp is just at maxi-\nmum (i.e., Vcc minus\nlike 1 V or so)
Wire Wire Line
	2025 700  3125 700 
Connection ~ 2025 700 
$Comp
L power:GND #PWR050
U 1 1 5E7AF844
P 5400 7525
F 0 "#PWR050" H 5400 7275 50  0001 C CNN
F 1 "GND" H 5405 7352 50  0000 C CNN
F 2 "" H 5400 7525 50  0001 C CNN
F 3 "" H 5400 7525 50  0001 C CNN
	1    5400 7525
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5E7B061B
P 5400 7375
F 0 "C13" H 5250 7275 50  0000 L CNN
F 1 "any" H 5515 7330 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5438 7225 50  0001 C CNN
F 3 "~" H 5400 7375 50  0001 C CNN
	1    5400 7375
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R65
U 1 1 5E7BA9B6
P 5250 7150
F 0 "R65" V 5300 7325 50  0000 C CNN
F 1 "any" V 5125 7075 50  0001 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" V 5180 7150 50  0001 C CNN
F 3 "~" H 5250 7150 50  0001 C CNN
	1    5250 7150
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR051
U 1 1 5E7D5649
P 5700 7525
F 0 "#PWR051" H 5700 7275 50  0001 C CNN
F 1 "GND" H 5705 7352 50  0000 C CNN
F 2 "" H 5700 7525 50  0001 C CNN
F 3 "" H 5700 7525 50  0001 C CNN
	1    5700 7525
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R64
U 1 1 5E7D565D
P 5250 6975
F 0 "R64" V 5300 7150 50  0000 C CNN
F 1 "any" V 5125 6900 50  0001 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" V 5180 6975 50  0001 C CNN
F 3 "~" H 5250 6975 50  0001 C CNN
	1    5250 6975
	0    1    -1   0   
$EndComp
Wire Wire Line
	5400 6975 5700 6975
Wire Wire Line
	5700 6975 5700 7225
$Comp
L Device:C C14
U 1 1 5E7EABA3
P 5700 7375
F 0 "C14" H 5550 7275 50  0000 L CNN
F 1 "any" H 5815 7330 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5738 7225 50  0001 C CNN
F 3 "~" H 5700 7375 50  0001 C CNN
	1    5700 7375
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR052
U 1 1 5E7EABAD
P 6000 7525
F 0 "#PWR052" H 6000 7275 50  0001 C CNN
F 1 "GND" H 6005 7352 50  0000 C CNN
F 2 "" H 6000 7525 50  0001 C CNN
F 3 "" H 6000 7525 50  0001 C CNN
	1    6000 7525
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5E7EABB7
P 6000 7375
F 0 "C15" H 5850 7275 50  0000 L CNN
F 1 "any" H 6115 7330 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6038 7225 50  0001 C CNN
F 3 "~" H 6000 7375 50  0001 C CNN
	1    6000 7375
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R63
U 1 1 5E7F515B
P 5250 6800
F 0 "R63" V 5300 6975 50  0000 C CNN
F 1 "any" V 5125 6725 50  0001 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" V 5180 6800 50  0001 C CNN
F 3 "~" H 5250 6800 50  0001 C CNN
	1    5250 6800
	0    1    -1   0   
$EndComp
Wire Wire Line
	5400 6800 6000 6800
Wire Wire Line
	6000 6800 6000 7225
Wire Wire Line
	5400 7150 5400 7225
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J5
U 1 1 5E82F989
P 5600 6475
F 0 "J5" H 5650 6250 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 5650 6701 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 5600 6475 50  0001 C CNN
F 3 "~" H 5600 6475 50  0001 C CNN
	1    5600 6475
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 6575 5100 6575
Wire Wire Line
	5100 6575 5100 6800
Wire Wire Line
	5400 6475 5025 6475
Wire Wire Line
	5025 6475 5025 6975
Wire Wire Line
	5025 6975 5100 6975
Wire Wire Line
	5400 6375 4950 6375
Wire Wire Line
	4950 6375 4950 7150
Wire Wire Line
	4950 7150 5100 7150
Wire Wire Line
	6000 6800 6000 6575
Wire Wire Line
	6000 6575 5900 6575
Connection ~ 6000 6800
Wire Wire Line
	5700 6975 6075 6975
Wire Wire Line
	6075 6975 6075 6475
Wire Wire Line
	6075 6475 5900 6475
Connection ~ 5700 6975
Wire Wire Line
	5400 7150 6150 7150
Wire Wire Line
	6150 7150 6150 6375
Wire Wire Line
	6150 6375 5900 6375
Connection ~ 5400 7150
Text Notes 4925 7750 0    50   ~ 0
general\npurpose\nlow pass\nfilters
Wire Notes Line
	4900 6275 6200 6275
Wire Notes Line
	6200 6275 6200 7775
Wire Notes Line
	6200 7775 4900 7775
Wire Notes Line
	4900 6275 4900 7775
Text Notes 7400 1700 0    50   ~ 0
or connect (-) with ~~100k to VEE\n(like the VCA)
$Comp
L Device:R_POT R20
U 1 1 5DCFDA87
P 7550 1250
F 0 "R20" H 7675 1325 50  0000 C CNN
F 1 "100k" V 7550 1250 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 7550 1250 50  0001 C CNN
F 3 "~" H 7550 1250 50  0001 C CNN
	1    7550 1250
	1    0    0    1   
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
Text GLabel 4050 975  2    50   Input ~ 0
vca_ctl2
$Comp
L power:GND #PWR02
U 1 1 5DE0C3D7
P 4200 1125
F 0 "#PWR02" H 4200 875 50  0001 C CNN
F 1 "GND" H 4205 952 50  0001 C CNN
F 2 "" H 4200 1125 50  0001 C CNN
F 3 "" H 4200 1125 50  0001 C CNN
	1    4200 1125
	1    0    0    -1  
$EndComp
Text GLabel 4050 625  2    50   Input ~ 0
vca_ctl1
$Comp
L Device:R_POT R1
U 1 1 5DE0C3DE
P 4050 775
F 0 "R1" V 3950 800 50  0000 C CNN
F 1 "10k" V 4050 775 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 4050 775 50  0001 C CNN
F 3 "~" H 4050 775 50  0001 C CNN
	1    4050 775 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5DE0C3E4
P 4200 775
F 0 "#PWR01" H 4200 525 50  0001 C CNN
F 1 "GND" H 4205 602 50  0001 C CNN
F 2 "" H 4200 775 50  0001 C CNN
F 3 "" H 4200 775 50  0001 C CNN
	1    4200 775 
	1    0    0    -1  
$EndComp
Text GLabel 1050 825  0    50   Input ~ 0
vca_ctl2
$Comp
L Device:R R48
U 1 1 5DEBC798
P 2300 3700
F 0 "R48" H 2400 3600 50  0000 C CNN
F 1 "1k" V 2300 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2230 3700 50  0001 C CNN
F 3 "~" H 2300 3700 50  0001 C CNN
	1    2300 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Zener D1
U 1 1 5DEBD121
P 2225 4000
F 0 "D1" V 2175 3825 50  0000 L CNN
F 1 "3V3" V 2275 3775 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2225 4000 50  0001 C CNN
F 3 "~" H 2225 4000 50  0001 C CNN
	1    2225 4000
	0    1    1    0   
$EndComp
$Comp
L Diode:1N5817 D3
U 1 1 5DEBDEB7
P 2375 4000
F 0 "D3" V 2329 4079 50  0000 L CNN
F 1 "1N5817" V 2420 4079 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2375 3825 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 2375 4000 50  0001 C CNN
	1    2375 4000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5DEC1769
P 2300 4150
F 0 "#PWR027" H 2300 3900 50  0001 C CNN
F 1 "GND" H 2305 3977 50  0001 C CNN
F 2 "" H 2300 4150 50  0001 C CNN
F 3 "" H 2300 4150 50  0001 C CNN
	1    2300 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2225 4150 2300 4150
Connection ~ 2300 4150
Wire Wire Line
	2300 4150 2375 4150
Wire Wire Line
	2225 3850 2300 3850
Connection ~ 2300 3850
Wire Wire Line
	2300 3850 2375 3850
Wire Wire Line
	1675 3550 2300 3550
Connection ~ 2300 3550
Wire Wire Line
	2300 3550 2400 3550
Text GLabel 2375 3850 2    50   Input ~ 0
clamped1
Text GLabel 1175 5725 0    50   Input ~ 0
square_ctl_buf1
Text GLabel 1175 5825 0    50   Input ~ 0
square_ctl_buf1
Text GLabel 1175 5925 0    50   Input ~ 0
clamped1
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J1
U 1 1 5DF1903C
P 1375 5725
F 0 "J1" H 1425 6050 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 1425 6051 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 1375 5725 50  0001 C CNN
F 3 "~" H 1375 5725 50  0001 C CNN
	1    1375 5725
	1    0    0    -1  
$EndComp
Text GLabel 1675 5725 2    50   Input ~ 0
square_ctl_buf2
Text GLabel 1675 5825 2    50   Input ~ 0
square_ctl_buf2
Text GLabel 1675 5925 2    50   Input ~ 0
clamped2
$Comp
L power:VEE #PWR026
U 1 1 5DF1DC09
P 1675 5000
F 0 "#PWR026" H 1675 4850 50  0001 C CNN
F 1 "VEE" H 1675 5175 50  0000 C CNN
F 2 "" H 1675 5000 50  0001 C CNN
F 3 "" H 1675 5000 50  0001 C CNN
	1    1675 5000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R47
U 1 1 5DF1DC13
P 1675 4850
F 0 "R47" H 1775 4750 50  0000 C CNN
F 1 "1k" V 1675 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1605 4850 50  0001 C CNN
F 3 "~" H 1675 4850 50  0001 C CNN
	1    1675 4850
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR025
U 1 1 5DF1DC1D
P 1675 4300
F 0 "#PWR025" H 1675 4150 50  0001 C CNN
F 1 "VCC" H 1675 4475 50  0000 C CNN
F 2 "" H 1675 4300 50  0001 C CNN
F 3 "" H 1675 4300 50  0001 C CNN
	1    1675 4300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q18
U 1 1 5DF1DC27
P 1575 4500
F 0 "Q18" H 1766 4546 50  0000 L CNN
F 1 "BC547" H 1766 4455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1775 4425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 1575 4500 50  0001 L CNN
	1    1575 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R45
U 1 1 5DF1DC31
P 1225 4500
F 0 "R45" V 1125 4500 50  0000 C CNN
F 1 "10k" V 1225 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1155 4500 50  0001 C CNN
F 3 "~" H 1225 4500 50  0001 C CNN
	1    1225 4500
	0    1    1    0   
$EndComp
Text GLabel 1075 4500 0    50   Input ~ 0
square_ctl2
$Comp
L Jumper:Jumper_2_Bridged JP2
U 1 1 5DF1DC3C
P 2600 4700
F 0 "JP2" H 2600 4803 50  0000 C CNN
F 1 "Jumper_2_Bridged" H 2600 4804 50  0001 C CNN
F 2 "footprints:SolderDipJumper2alt" H 2600 4700 50  0001 C CNN
F 3 "~" H 2600 4700 50  0001 C CNN
	1    2600 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5DF1DC46
P 2950 4700
F 0 "C9" V 2800 4700 50  0000 C CNN
F 1 "1n" V 3100 4700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2988 4550 50  0001 C CNN
F 3 "~" H 2950 4700 50  0001 C CNN
	1    2950 4700
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q20
U 1 1 5DF1DC50
P 3450 4700
F 0 "Q20" H 3656 4746 50  0000 L CNN
F 1 "2N7000" H 3656 4655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3650 4625 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 3450 4700 50  0001 L CNN
	1    3450 4700
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR032
U 1 1 5DF1DC5A
P 3550 5000
F 0 "#PWR032" H 3550 4850 50  0001 C CNN
F 1 "VEE" H 3568 5173 50  0000 C CNN
F 2 "" H 3550 5000 50  0001 C CNN
F 3 "" H 3550 5000 50  0001 C CNN
	1    3550 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 5000 3550 4900
$Comp
L power:VEE #PWR030
U 1 1 5DF1DC65
P 3100 5000
F 0 "#PWR030" H 3100 4850 50  0001 C CNN
F 1 "VEE" H 3118 5173 50  0000 C CNN
F 2 "" H 3100 5000 50  0001 C CNN
F 3 "" H 3100 5000 50  0001 C CNN
	1    3100 5000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R51
U 1 1 5DF1DC6F
P 3100 4850
F 0 "R51" H 2975 4900 50  0000 C CNN
F 1 "10k" V 3100 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3030 4850 50  0001 C CNN
F 3 "~" H 3100 4850 50  0001 C CNN
	1    3100 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 4700 3250 4700
Connection ~ 3100 4700
Text GLabel 3600 4450 2    50   Input ~ 0
sync_out2
Wire Wire Line
	3600 4450 3550 4450
Wire Wire Line
	3550 4450 3550 4500
Text Notes 3050 4575 0    50   ~ 0
sync pulse\ngeneration
Connection ~ 1675 4700
Text GLabel 1875 4700 3    50   Input ~ 0
square_ctl_buf2
$Comp
L Device:R R49
U 1 1 5DF1DC81
P 2300 4850
F 0 "R49" H 2400 4750 50  0000 C CNN
F 1 "1k" V 2300 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2230 4850 50  0001 C CNN
F 3 "~" H 2300 4850 50  0001 C CNN
	1    2300 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Zener D2
U 1 1 5DF1DC8B
P 2225 5150
F 0 "D2" V 2175 4975 50  0000 L CNN
F 1 "3V3" V 2275 4925 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2225 5150 50  0001 C CNN
F 3 "~" H 2225 5150 50  0001 C CNN
	1    2225 5150
	0    1    1    0   
$EndComp
$Comp
L Diode:1N5817 D4
U 1 1 5DF1DC95
P 2375 5150
F 0 "D4" V 2329 5229 50  0000 L CNN
F 1 "1N5817" V 2420 5229 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2375 4975 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 2375 5150 50  0001 C CNN
	1    2375 5150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5DF1DC9F
P 2300 5300
F 0 "#PWR028" H 2300 5050 50  0001 C CNN
F 1 "GND" H 2305 5127 50  0001 C CNN
F 2 "" H 2300 5300 50  0001 C CNN
F 3 "" H 2300 5300 50  0001 C CNN
	1    2300 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2225 5300 2300 5300
Connection ~ 2300 5300
Wire Wire Line
	2300 5300 2375 5300
Wire Wire Line
	2225 5000 2300 5000
Connection ~ 2300 5000
Wire Wire Line
	2300 5000 2375 5000
Wire Wire Line
	1675 4700 2300 4700
Connection ~ 2300 4700
Wire Wire Line
	2300 4700 2400 4700
Text GLabel 2375 5000 2    50   Input ~ 0
clamped2
Text Notes 2150 3500 0    50   ~ 0
clamp\nfor the\nSTM32\nmeasure-\nment pin
Wire Notes Line
	500  6150 500  2900
Wire Notes Line
	500  2900 4075 2900
Wire Notes Line
	4075 2900 4075 6150
Wire Notes Line
	4075 6150 500  6150
Text Notes 2350 6125 0    39   ~ 0
square_ctl swings between Vee and Vcc - 1.5V (circa).\nGNDREF is at (Vcc+Vee)/2, i.e. PE7 sees at least 3V for\nVcc-Vee = 9V.\nThe diodes protect the MCU pin from overvoltage (D1)\nand undervoltage (D2): The schottky diode D2 clamps\naway negative voltages (to approx. -200mV), while the\nzener diode D1 limits the voltage to 3.3V. That's within\nthe MCU specs.
Wire Notes Line
	4450 500  500  500 
Wire Notes Line
	500  500  500  2850
Wire Notes Line
	500  2850 4450 2850
Text GLabel 4900 1975 0    50   Input ~ 0
vco3_in
$Comp
L Device:R_POT R59
U 1 1 5E11C1A9
P 4950 2175
F 0 "R59" V 4835 2175 50  0000 C CNN
F 1 "10k" V 4950 2175 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 4950 2175 50  0001 C CNN
F 3 "~" H 4950 2175 50  0001 C CNN
	1    4950 2175
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1975 4950 1975
Wire Wire Line
	4950 1975 4950 2025
$Comp
L power:GND #PWR049
U 1 1 5E11C1B5
P 4950 2325
F 0 "#PWR049" H 4950 2075 50  0001 C CNN
F 1 "GND" H 5100 2250 50  0000 C CNN
F 2 "" H 4950 2325 50  0001 C CNN
F 3 "" H 4950 2325 50  0001 C CNN
	1    4950 2325
	1    0    0    -1  
$EndComp
$Comp
L Device:R R62
U 1 1 5E11C1BF
P 5250 2175
F 0 "R62" V 5350 2200 50  0000 L CNN
F 1 "10k" V 5250 2100 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5180 2175 50  0001 C CNN
F 3 "~" H 5250 2175 50  0001 C CNN
	1    5250 2175
	0    -1   1    0   
$EndComp
Wire Wire Line
	5400 2175 5400 1500
Connection ~ 5400 1500
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
P 2775 1750
F 0 "#PWR0101" H 2775 1500 50  0001 C CNN
F 1 "GND" H 2775 1600 50  0001 C CNN
F 2 "" H 2775 1750 50  0001 C CNN
F 3 "" H 2775 1750 50  0001 C CNN
	1    2775 1750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5DEDEEFF
P 1725 2675
F 0 "#PWR0102" H 1725 2425 50  0001 C CNN
F 1 "GND" H 1725 2525 50  0001 C CNN
F 2 "" H 1725 2675 50  0001 C CNN
F 3 "" H 1725 2675 50  0001 C CNN
	1    1725 2675
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
P 5100 2650
F 0 "J6" H 5150 2775 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 5150 2776 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 5100 2650 50  0001 C CNN
F 3 "~" H 5100 2650 50  0001 C CNN
	1    5100 2650
	1    0    0    -1  
$EndComp
Text GLabel 4900 2650 0    50   Input ~ 0
vco1_in
Text GLabel 4900 2750 0    50   Input ~ 0
vco2_in
Text GLabel 5400 2650 2    50   Input ~ 0
vco3_in
Text GLabel 5400 2750 2    50   Input ~ 0
mixer_out
$Comp
L power:+3.3V #PWR0103
U 1 1 5DE3FBDB
P 5750 4600
F 0 "#PWR0103" H 5750 4450 50  0001 C CNN
F 1 "+3.3V" H 5750 4775 50  0000 C CNN
F 2 "" H 5750 4600 50  0001 C CNN
F 3 "" H 5750 4600 50  0001 C CNN
	1    5750 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 5DE405B3
P 5750 4750
F 0 "C16" H 5575 4850 50  0000 L CNN
F 1 "10n" H 5575 4650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5788 4600 50  0001 C CNN
F 3 "~" H 5750 4750 50  0001 C CNN
	1    5750 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5DE4F55F
P 5750 4900
F 0 "#PWR0104" H 5750 4650 50  0001 C CNN
F 1 "GND" H 5750 4725 50  0000 C CNN
F 2 "" H 5750 4900 50  0001 C CNN
F 3 "" H 5750 4900 50  0001 C CNN
	1    5750 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0105
U 1 1 5DE5265D
P 6025 4600
F 0 "#PWR0105" H 6025 4450 50  0001 C CNN
F 1 "+3.3V" H 6025 4775 50  0000 C CNN
F 2 "" H 6025 4600 50  0001 C CNN
F 3 "" H 6025 4600 50  0001 C CNN
	1    6025 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 5DE52667
P 6025 4750
F 0 "C17" H 6050 4850 50  0000 L CNN
F 1 "1u" H 6050 4650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6063 4600 50  0001 C CNN
F 3 "~" H 6025 4750 50  0001 C CNN
	1    6025 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5DE52671
P 6025 4900
F 0 "#PWR0106" H 6025 4650 50  0001 C CNN
F 1 "GND" H 6025 4725 50  0000 C CNN
F 2 "" H 6025 4900 50  0001 C CNN
F 3 "" H 6025 4900 50  0001 C CNN
	1    6025 4900
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 5 1 5DD2A120
P 1525 1125
F 0 "U1" H 1550 1300 50  0001 C CNN
F 1 "TL074" H 1500 1125 50  0001 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1475 1225 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1575 1325 50  0001 C CNN
	5    1525 1125
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 5DD9046C
P 1625 825
F 0 "#PWR0107" H 1625 675 50  0001 C CNN
F 1 "VCC" H 1725 850 50  0000 C CNN
F 2 "" H 1625 825 50  0001 C CNN
F 3 "" H 1625 825 50  0001 C CNN
	1    1625 825 
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR0108
U 1 1 5DD917F4
P 1625 1425
F 0 "#PWR0108" H 1625 1275 50  0001 C CNN
F 1 "VEE" H 1525 1475 50  0000 C CNN
F 2 "" H 1625 1425 50  0001 C CNN
F 3 "" H 1625 1425 50  0001 C CNN
	1    1625 1425
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U3
U 2 1 5DE2AE72
P 2500 7500
F 0 "U3" H 2575 7675 50  0000 C CNN
F 1 "LM324" H 2475 7500 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2450 7600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 2550 7700 50  0001 C CNN
	2    2500 7500
	1    0    0    1   
$EndComp
$Comp
L Device:R R69
U 1 1 5DE2B845
P 1950 7400
F 0 "R69" V 2000 7500 50  0000 L CNN
F 1 "1Meg" V 1950 7300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1880 7400 50  0001 C CNN
F 3 "~" H 1950 7400 50  0001 C CNN
	1    1950 7400
	0    -1   1    0   
$EndComp
Wire Wire Line
	2100 7400 2150 7400
$Comp
L power:VCC #PWR056
U 1 1 5DE49D6E
P 1800 7400
F 0 "#PWR056" H 1800 7250 50  0001 C CNN
F 1 "VCC" H 1817 7573 50  0000 C CNN
F 2 "" H 1800 7400 50  0001 C CNN
F 3 "" H 1800 7400 50  0001 C CNN
	1    1800 7400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q22
U 1 1 5DE4BFE5
P 3225 7000
F 0 "Q22" H 3075 7150 50  0000 L CNN
F 1 "BC547" H 3400 6950 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3425 6925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 3225 7000 50  0001 L CNN
	1    3225 7000
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q21
U 1 1 5DE4B810
P 2625 7000
F 0 "Q21" H 2450 7150 50  0000 L CNN
F 1 "BC547" H 2816 6955 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2825 6925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 2625 7000 50  0001 L CNN
	1    2625 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3125 7200 2925 7200
$Comp
L Device:R R70
U 1 1 5DE87C76
P 2925 7350
F 0 "R70" H 2725 7400 50  0000 L CNN
F 1 "1k" V 2925 7300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2855 7350 50  0001 C CNN
F 3 "~" H 2925 7350 50  0001 C CNN
	1    2925 7350
	-1   0    0    -1  
$EndComp
Connection ~ 2925 7200
Wire Wire Line
	2925 7200 2725 7200
Wire Wire Line
	2925 7500 2800 7500
Wire Wire Line
	2150 7400 2150 6800
Wire Wire Line
	2150 6800 2725 6800
Connection ~ 2150 7400
Wire Wire Line
	2150 7400 2200 7400
$Comp
L power:GND #PWR058
U 1 1 5DEFA4E1
P 3425 7000
F 0 "#PWR058" H 3425 6750 50  0001 C CNN
F 1 "GND" H 3430 6827 50  0000 C CNN
F 2 "" H 3425 7000 50  0001 C CNN
F 3 "" H 3425 7000 50  0001 C CNN
	1    3425 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR057
U 1 1 5DEFB852
P 2200 7600
F 0 "#PWR057" H 2200 7350 50  0001 C CNN
F 1 "GND" H 2050 7525 50  0000 C CNN
F 2 "" H 2200 7600 50  0001 C CNN
F 3 "" H 2200 7600 50  0001 C CNN
	1    2200 7600
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U3
U 1 1 5DEFBCC5
P 4100 6900
F 0 "U3" H 4175 7075 50  0000 C CNN
F 1 "LM324" H 4075 6900 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4050 7000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 4150 7100 50  0001 C CNN
	1    4100 6900
	1    0    0    1   
$EndComp
Wire Wire Line
	3125 6800 3725 6800
$Comp
L power:GND #PWR059
U 1 1 5DF17395
P 3800 7000
F 0 "#PWR059" H 3800 6750 50  0001 C CNN
F 1 "GND" H 3805 6827 50  0000 C CNN
F 2 "" H 3800 7000 50  0001 C CNN
F 3 "" H 3800 7000 50  0001 C CNN
	1    3800 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:RTRIM R71
U 1 1 5DF198D4
P 4150 6550
F 0 "R71" V 4250 6525 50  0000 C CNN
F 1 "10k" V 4050 6550 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" V 4080 6550 50  0001 C CNN
F 3 "~" H 4150 6550 50  0001 C CNN
	1    4150 6550
	0    1    -1   0   
$EndComp
Text Notes 3925 6400 0    50   ~ 0
set to 2.18k
Wire Wire Line
	4000 6550 3725 6550
Wire Wire Line
	3725 6550 3725 6800
Connection ~ 3725 6800
Wire Wire Line
	3725 6800 3800 6800
Wire Wire Line
	4300 6550 4400 6550
Wire Wire Line
	4400 6550 4400 6900
Text GLabel 4400 6900 2    50   Input ~ 0
expo_out
$Comp
L Amplifier_Operational:LM324 U3
U 3 1 5DDB1C06
P 1525 7000
F 0 "U3" H 1600 7175 50  0000 C CNN
F 1 "LM324" H 1500 7000 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1475 7100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1575 7200 50  0001 C CNN
	3    1525 7000
	1    0    0    1   
$EndComp
$Comp
L Device:R R68
U 1 1 5DDE34A9
P 1575 6500
F 0 "R68" V 1525 6600 50  0000 L CNN
F 1 "2.4k" V 1575 6425 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1505 6500 50  0001 C CNN
F 3 "~" H 1575 6500 50  0001 C CNN
	1    1575 6500
	0    -1   1    0   
$EndComp
$Comp
L power:VCC #PWR054
U 1 1 5DE04C76
P 1425 6700
F 0 "#PWR054" H 1425 6550 50  0001 C CNN
F 1 "VCC" H 1550 6775 50  0000 C CNN
F 2 "" H 1425 6700 50  0001 C CNN
F 3 "" H 1425 6700 50  0001 C CNN
	1    1425 6700
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR055
U 1 1 5DE05514
P 1425 7300
F 0 "#PWR055" H 1425 7150 50  0001 C CNN
F 1 "VEE" H 1300 7375 50  0000 C CNN
F 2 "" H 1425 7300 50  0001 C CNN
F 3 "" H 1425 7300 50  0001 C CNN
	1    1425 7300
	-1   0    0    1   
$EndComp
Wire Wire Line
	1825 7000 1825 6500
Wire Wire Line
	1825 6500 1725 6500
Wire Wire Line
	1425 6500 1225 6500
$Comp
L power:GND #PWR053
U 1 1 5DE28EC7
P 1225 7100
F 0 "#PWR053" H 1225 6850 50  0001 C CNN
F 1 "GND" H 1230 6927 50  0000 C CNN
F 2 "" H 1225 7100 50  0001 C CNN
F 3 "" H 1225 7100 50  0001 C CNN
	1    1225 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1825 7000 2425 7000
Connection ~ 1825 7000
Wire Wire Line
	1225 6500 1225 6900
$Comp
L Device:RTRIM R67
U 1 1 5DF55135
P 1075 6900
F 0 "R67" V 1175 6875 50  0000 C CNN
F 1 "200k" V 975 6900 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" V 1005 6900 50  0001 C CNN
F 3 "~" H 1075 6900 50  0001 C CNN
	1    1075 6900
	0    1    -1   0   
$EndComp
Connection ~ 1225 6900
Text GLabel 925  6900 0    50   Input ~ 0
expo_in
$Comp
L power:VEE #PWR016
U 1 1 5E0952C6
P 775 6650
F 0 "#PWR016" H 775 6500 50  0001 C CNN
F 1 "VEE" H 650 6725 50  0000 C CNN
F 2 "" H 775 6650 50  0001 C CNN
F 3 "" H 775 6650 50  0001 C CNN
	1    775  6650
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 5E096167
P 775 6350
F 0 "#PWR09" H 775 6200 50  0001 C CNN
F 1 "VCC" H 900 6425 50  0000 C CNN
F 2 "" H 775 6350 50  0001 C CNN
F 3 "" H 775 6350 50  0001 C CNN
	1    775  6350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R66
U 1 1 5E097563
P 1075 6500
F 0 "R66" V 975 6450 50  0000 L CNN
F 1 "100k" V 1075 6400 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1005 6500 50  0001 C CNN
F 3 "~" H 1075 6500 50  0001 C CNN
	1    1075 6500
	0    -1   1    0   
$EndComp
Connection ~ 1225 6500
Text GLabel 925  7050 0    50   Input ~ 0
expo_raw
Wire Wire Line
	925  7050 1225 7050
Wire Wire Line
	1225 7050 1225 6900
Text GLabel 3875 7675 0    50   Input ~ 0
expo_in
Text GLabel 3875 7575 0    50   Input ~ 0
expo_raw
Text GLabel 4375 7575 2    50   Input ~ 0
expo_out
Text GLabel 4375 7675 2    50   Input ~ 0
expo_out
$Comp
L Amplifier_Operational:LM324 U3
U 5 1 5DDE56F6
P 1325 7000
F 0 "U3" H 1400 7175 50  0001 C CNN
F 1 "LM324" H 1300 7000 50  0001 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1275 7100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1375 7200 50  0001 C CNN
	5    1325 7000
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J7
U 1 1 5E0D1463
P 4075 7575
F 0 "J7" H 4125 7700 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 4125 7701 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 4075 7575 50  0001 C CNN
F 3 "~" H 4075 7575 50  0001 C CNN
	1    4075 7575
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT R72
U 1 1 5E094049
P 775 6500
F 0 "R72" H 706 6454 50  0000 R CNN
F 1 "10k" V 775 6575 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 775 6500 50  0001 C CNN
F 3 "~" H 775 6500 50  0001 C CNN
	1    775  6500
	1    0    0    1   
$EndComp
Wire Notes Line
	500  7775 500  6200
Wire Notes Line
	500  6200 4825 6200
Wire Notes Line
	4825 6200 4825 7775
Wire Notes Line
	500  7775 4825 7775
Text Notes 525  7750 0    50   ~ 0
Expo converter
$Comp
L Device:R_POT R2
U 1 1 5DE0C3D1
P 4050 1125
F 0 "R2" V 3950 1150 50  0000 C CNN
F 1 "10k" V 4050 1125 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 4050 1125 50  0001 C CNN
F 3 "~" H 4050 1125 50  0001 C CNN
	1    4050 1125
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 1125 3900 1325
Wire Wire Line
	3900 1325 4275 1325
Wire Wire Line
	4275 1325 4275 1750
Wire Wire Line
	3900 775  3800 775 
Wire Wire Line
	3800 775  3800 1425
Wire Wire Line
	3800 1425 4175 1425
Wire Wire Line
	4175 1425 4175 1750
Wire Notes Line
	4525 500  5850 500 
Wire Notes Line
	5850 2850 4525 2850
Text Notes 5625 600  0    50   ~ 0
Mixer
$Comp
L Connector:Conn_01x04_Male JP3
U 1 1 5E93751C
P 6550 6350
F 0 "JP3" V 6650 6100 50  0000 R CNN
F 1 "Conn_01x04_Male" V 6703 6062 50  0001 R CNN
F 2 "footprints:SolderDipJumper4alt" H 6550 6350 50  0001 C CNN
F 3 "~" H 6550 6350 50  0001 C CNN
	1    6550 6350
	0    -1   1    0   
$EndComp
Text GLabel 6750 6550 3    50   Input ~ 0
vcf_audio_out
Wire Notes Line
	4150 4350 4150 6150
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5E1550B9
P 6725 5025
F 0 "J4" V 6625 5025 50  0000 R CNN
F 1 "Conn_01x02_Male" V 6878 5069 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6725 5025 50  0001 C CNN
F 3 "~" H 6725 5025 50  0001 C CNN
	1    6725 5025
	0    -1   1    0   
$EndComp
Wire Notes Line
	4150 6150 6875 6150
Wire Notes Line
	6875 6150 6875 4350
Wire Notes Line
	6875 4350 4150 4350
Text Notes 4200 6100 0    50   ~ 0
control voltage DAC
Wire Notes Line
	5850 2850 5850 500 
Wire Notes Line
	4525 500  4525 2850
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J9
U 1 1 5ED3A0C3
P 10375 3125
F 0 "J9" V 10425 2900 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 10425 3251 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 10375 3125 50  0001 C CNN
F 3 "~" H 10375 3125 50  0001 C CNN
	1    10375 3125
	0    -1   1    0   
$EndComp
Wire Wire Line
	10475 2825 10475 2925
Wire Wire Line
	10375 2925 10375 2475
Wire Wire Line
	10375 2475 10475 2475
Text GLabel 10475 3425 2    50   Input ~ 0
vcf_ctl_raw
$Comp
L power:GND #PWR0111
U 1 1 5ED9C947
P 10375 3425
F 0 "#PWR0111" H 10375 3175 50  0001 C CNN
F 1 "GND" H 10380 3252 50  0001 C CNN
F 2 "" H 10375 3425 50  0001 C CNN
F 3 "" H 10375 3425 50  0001 C CNN
	1    10375 3425
	1    0    0    -1  
$EndComp
Text Notes 6200 4850 0    50   ~ 0
place close\nto U2
$Comp
L Device:CP C1
U 1 1 5F07C9B6
P 1725 1925
F 0 "C1" H 1600 2025 50  0000 C CNN
F 1 "470n" H 1825 2025 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D7.5mm_P2.50mm" H 1763 1775 50  0001 C CNN
F 3 "~" H 1725 1925 50  0001 C CNN
	1    1725 1925
	-1   0    0    -1  
$EndComp
Text Notes 1650 2700 1    50   ~ 0
input preattenuation.\ncontrols distortion
Text GLabel 10625 2325 2    50   Input ~ 0
vcf_ctl2
$Comp
L Device:R_POT R19
U 1 1 5DDA947B
P 10625 2475
F 0 "R19" V 10525 2500 50  0000 C CNN
F 1 "10k" V 10625 2475 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 10625 2475 50  0001 C CNN
F 3 "~" H 10625 2475 50  0001 C CNN
	1    10625 2475
	0    -1   -1   0   
$EndComp
Text GLabel 10625 2675 2    50   Input ~ 0
vcf_ctl1
$Comp
L Device:R_POT R18
U 1 1 5DDF0D1B
P 10625 2825
F 0 "R18" V 10525 2850 50  0000 C CNN
F 1 "10k" V 10625 2825 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 10625 2825 50  0001 C CNN
F 3 "~" H 10625 2825 50  0001 C CNN
	1    10625 2825
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5DDF0D25
P 10775 2825
F 0 "#PWR012" H 10775 2575 50  0001 C CNN
F 1 "GND" H 10780 2652 50  0001 C CNN
F 2 "" H 10775 2825 50  0001 C CNN
F 3 "" H 10775 2825 50  0001 C CNN
	1    10775 2825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5ED2CF70
P 10775 2475
F 0 "#PWR0110" H 10775 2225 50  0001 C CNN
F 1 "GND" H 10780 2302 50  0001 C CNN
F 2 "" H 10775 2475 50  0001 C CNN
F 3 "" H 10775 2475 50  0001 C CNN
	1    10775 2475
	1    0    0    -1  
$EndComp
Text GLabel 4275 2250 3    50   Input ~ 0
vca_ctl_raw
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J8
U 1 1 5F18BCB6
P 4275 1950
F 0 "J8" H 4325 2075 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 4325 2076 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 4275 1950 50  0001 C CNN
F 3 "~" H 4275 1950 50  0001 C CNN
	1    4275 1950
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 5DD7C0FB
P 3175 2475
F 0 "R15" H 2975 2425 50  0000 L CNN
F 1 "100k" V 3175 2375 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3105 2475 50  0001 C CNN
F 3 "~" H 3175 2475 50  0001 C CNN
	1    3175 2475
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J10
U 1 1 5F459B04
P 3850 1600
F 0 "J10" V 3775 1600 50  0000 R CNN
F 1 "Conn_01x02_Male" V 4003 1412 50  0001 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3850 1600 50  0001 C CNN
F 3 "~" H 3850 1600 50  0001 C CNN
	1    3850 1600
	0    -1   1    0   
$EndComp
Connection ~ 3850 1800
$Comp
L power:GND #PWR060
U 1 1 5F472444
P 4175 2250
F 0 "#PWR060" H 4175 2000 50  0001 C CNN
F 1 "GND" H 4175 2100 50  0001 C CNN
F 2 "" H 4175 2250 50  0001 C CNN
F 3 "" H 4175 2250 50  0001 C CNN
	1    4175 2250
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5F472959
P 3950 1800
F 0 "#PWR013" H 3950 1550 50  0001 C CNN
F 1 "GND" H 3950 1650 50  0001 C CNN
F 2 "" H 3950 1800 50  0001 C CNN
F 3 "" H 3950 1800 50  0001 C CNN
	1    3950 1800
	-1   0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U3
U 4 1 600A4073
P 7475 6175
F 0 "U3" H 7550 6350 50  0000 C CNN
F 1 "LM324" H 7450 6175 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7425 6275 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 7525 6375 50  0001 C CNN
	4    7475 6175
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 600A9C22
P 7175 6275
F 0 "#PWR?" H 7175 6025 50  0001 C CNN
F 1 "GND" H 7180 6102 50  0000 C CNN
F 2 "" H 7175 6275 50  0001 C CNN
F 3 "" H 7175 6275 50  0001 C CNN
	1    7175 6275
	1    0    0    -1  
$EndComp
Wire Wire Line
	7175 6075 7150 6075
Wire Wire Line
	7150 6075 7150 5900
Wire Wire Line
	7150 5900 7825 5900
Wire Wire Line
	7825 5900 7825 6175
Wire Wire Line
	7825 6175 7775 6175
Wire Wire Line
	5675 5525 6825 5525
Wire Wire Line
	5900 5225 6725 5225
Wire Wire Line
	6825 5225 6825 5525
Wire Wire Line
	9375 2225 9375 2125
Wire Wire Line
	9375 2325 9375 2225
Connection ~ 9375 2225
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
Wire Wire Line
	8775 4300 8775 4450
NoConn ~ 9525 4375
NoConn ~ 9525 4575
NoConn ~ 9825 4575
NoConn ~ 9825 4375
$Comp
L Amplifier_Operational:TL074 U?
U 4 1 60235C28
P 7550 3800
F 0 "U?" H 7575 3975 50  0000 C CNN
F 1 "TL074" H 7525 3800 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7500 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7600 4000 50  0001 C CNN
	4    7550 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	7875 3700 7850 3700
Wire Wire Line
	7875 3700 7875 3550
Wire Wire Line
	7875 3550 7250 3550
Wire Wire Line
	7250 3550 7250 3800
$Comp
L Amplifier_Operational:TL074 U?
U 4 1 6025D195
P 7550 4350
F 0 "U?" H 7575 4525 50  0000 C CNN
F 1 "TL074" H 7525 4350 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7500 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7600 4550 50  0001 C CNN
	4    7550 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	7875 4250 7850 4250
Wire Wire Line
	7875 4250 7875 4100
Wire Wire Line
	7875 4100 7250 4100
Wire Wire Line
	7250 4100 7250 4350
Wire Wire Line
	6675 3750 6750 3750
$Comp
L Amplifier_Operational:TL074 U?
U 4 1 6028A692
P 6375 3650
F 0 "U?" H 6400 3825 50  0000 C CNN
F 1 "TL074" H 6350 3650 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6325 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6425 3850 50  0001 C CNN
	4    6375 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 6028A69C
P 6975 3750
F 0 "R?" V 6875 3725 50  0000 L CNN
F 1 "1k" V 6975 3700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6905 3750 50  0001 C CNN
F 3 "~" H 6975 3750 50  0001 C CNN
	1    6975 3750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6028A6A6
P 6975 3550
F 0 "R?" V 7075 3525 50  0000 L CNN
F 1 "1k" V 6975 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6905 3550 50  0001 C CNN
F 3 "~" H 6975 3550 50  0001 C CNN
	1    6975 3550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6028A6B0
P 6400 3325
F 0 "R?" V 6300 3250 50  0000 L CNN
F 1 "20k" V 6400 3250 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6330 3325 50  0001 C CNN
F 3 "~" H 6400 3325 50  0001 C CNN
	1    6400 3325
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 3550 6675 3550
$Comp
L Device:R R?
U 1 1 6028A6BB
P 6750 4000
F 0 "R?" H 6825 3975 50  0000 L CNN
F 1 "20k" V 6750 3925 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6680 4000 50  0001 C CNN
F 3 "~" H 6750 4000 50  0001 C CNN
	1    6750 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3850 6750 3750
Text Notes 6650 4050 2    50   ~ 0
differential to\nsingle-ended
Wire Wire Line
	6750 3325 6550 3325
Wire Wire Line
	6750 3325 6750 3550
$Comp
L power:GND #PWR?
U 1 1 6028A6CB
P 6750 4150
F 0 "#PWR?" H 6750 3900 50  0001 C CNN
F 1 "GND" H 6750 4000 50  0001 C CNN
F 2 "" H 6750 4150 50  0001 C CNN
F 3 "" H 6750 4150 50  0001 C CNN
	1    6750 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7125 3750 7125 4100
Wire Wire Line
	7125 4100 7250 4100
Connection ~ 7250 4100
Wire Wire Line
	7125 3550 7250 3550
Connection ~ 7250 3550
Wire Wire Line
	6825 3550 6750 3550
Connection ~ 6750 3550
Wire Wire Line
	6825 3750 6750 3750
Connection ~ 6750 3750
Wire Wire Line
	5675 3850 5725 3850
$Comp
L Amplifier_Operational:TL074 U?
U 4 1 602EE9D5
P 5375 3750
F 0 "U?" H 5400 3925 50  0000 C CNN
F 1 "TL074" H 5350 3750 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5325 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5425 3950 50  0001 C CNN
	4    5375 3750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 602EE9E9
P 5875 3650
F 0 "R?" V 5975 3625 50  0000 L CNN
F 1 "1k" V 5875 3600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5805 3650 50  0001 C CNN
F 3 "~" H 5875 3650 50  0001 C CNN
	1    5875 3650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 602EE9F3
P 5400 3425
F 0 "R?" V 5300 3350 50  0000 L CNN
F 1 "20k" V 5400 3350 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5330 3425 50  0001 C CNN
F 3 "~" H 5400 3425 50  0001 C CNN
	1    5400 3425
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5725 3650 5700 3650
Wire Wire Line
	5725 3950 5725 3850
Wire Wire Line
	5250 3425 5075 3425
Wire Wire Line
	5075 3425 5075 3750
$Comp
L power:GND #PWR?
U 1 1 602EEA0E
P 5725 3950
F 0 "#PWR?" H 5725 3700 50  0001 C CNN
F 1 "GND" H 5725 3800 50  0001 C CNN
F 2 "" H 5725 3950 50  0001 C CNN
F 3 "" H 5725 3950 50  0001 C CNN
	1    5725 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6025 3650 6050 3650
Wire Wire Line
	6050 3650 6050 3325
Wire Wire Line
	6050 3325 6250 3325
Connection ~ 6050 3650
Wire Wire Line
	6050 3650 6075 3650
Wire Wire Line
	5700 3650 5700 3425
Connection ~ 5700 3650
Wire Wire Line
	5700 3650 5675 3650
Wire Wire Line
	5700 3425 5550 3425
Text Notes 6775 3425 0    50   ~ 0
TODO: amplify at this point \nalready? (needs correct reference\nvoltage, i diode drop above Q9's base).\nOr capacitor?
Wire Wire Line
	10575 4475 10700 4475
Connection ~ 10575 4475
NoConn ~ 10700 4475
Wire Wire Line
	7850 4450 8775 4450
Connection ~ 8775 4450
Wire Wire Line
	8775 4450 8775 4575
Wire Wire Line
	9075 4375 7950 4375
Wire Wire Line
	7950 4375 7950 3900
Wire Wire Line
	7950 3900 7850 3900
Connection ~ 9075 4375
Wire Wire Line
	9075 4375 9075 4300
Wire Wire Line
	9900 2725 9900 2925
Wire Wire Line
	9900 2925 5075 2925
Wire Wire Line
	5075 2925 5075 3425
Connection ~ 5075 3425
$Comp
L Device:R R42
U 1 1 5DF272AA
P 9900 4825
F 0 "R42" H 9975 4800 50  0000 L CNN
F 1 "100k" V 9900 4725 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9830 4825 50  0001 C CNN
F 3 "~" H 9900 4825 50  0001 C CNN
	1    9900 4825
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R43
U 1 1 5DF2729E
P 10250 4150
F 0 "R43" V 10150 4075 50  0000 L CNN
F 1 "100k" V 10250 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10180 4150 50  0001 C CNN
F 3 "~" H 10250 4150 50  0001 C CNN
	1    10250 4150
	0    1    -1   0   
$EndComp
$EndSCHEMATC
