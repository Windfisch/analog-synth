EESchema Schematic File Version 4
LIBS:vco_mk1-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "VCO dev board"
Date "2019-08-10"
Rev "1"
Comp "Windfisch"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	1825 6200 1925 6200
Wire Wire Line
	2625 6300 2525 6300
Connection ~ 1825 6200
Text GLabel 1025 6300 0    50   Input ~ 0
V_expo
Wire Wire Line
	1525 6200 1625 6200
Wire Wire Line
	1025 6300 1125 6300
Wire Wire Line
	1125 6300 1125 6200
Wire Wire Line
	1125 6200 1225 6200
Wire Wire Line
	1125 6300 1125 6400
Wire Wire Line
	1125 6400 1225 6400
Connection ~ 1125 6300
$Comp
L power:GNDREF #PWR016
U 1 1 5CF229F9
P 1825 6700
F 0 "#PWR016" H 1825 6450 50  0001 C CNN
F 1 "GNDREF" H 1830 6527 50  0001 C CNN
F 2 "" H 1825 6700 50  0001 C CNN
F 3 "" H 1825 6700 50  0001 C CNN
	1    1825 6700
	1    0    0    -1  
$EndComp
Connection ~ 1625 6200
Wire Wire Line
	1625 6200 1825 6200
Connection ~ 1825 6400
Wire Wire Line
	1825 6400 1925 6400
Text GLabel 5625 6700 2    50   Input ~ 0
square_ctl
Text GLabel 5675 5200 2    50   Input ~ 0
triangle
$Comp
L Device:R R33
U 1 1 5CF3873D
P 3075 7250
F 0 "R33" V 2975 7250 50  0000 C CNN
F 1 "100k" V 3075 7250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3005 7250 50  0001 C CNN
F 3 "~" H 3075 7250 50  0001 C CNN
	1    3075 7250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 7500 3475 7500
Wire Wire Line
	3475 7500 3475 7250
Wire Wire Line
	3475 7250 3475 6700
Connection ~ 3475 7250
Wire Wire Line
	3225 7250 3475 7250
Wire Wire Line
	2825 7250 2925 7250
Wire Wire Line
	2875 6800 2825 6800
$Comp
L power:VCC #PWR021
U 1 1 5CF357C9
P 3075 7050
F 0 "#PWR021" H 3075 6900 50  0001 C CNN
F 1 "VCC" H 3175 7075 50  0000 C CNN
F 2 "" H 3075 7050 50  0001 C CNN
F 3 "" H 3075 7050 50  0001 C CNN
	1    3075 7050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2625 6300 2875 6300
Connection ~ 2625 6300
Wire Wire Line
	2875 6300 2875 6600
Wire Wire Line
	4575 5700 4625 5700
Connection ~ 4625 5700
Wire Wire Line
	4625 5700 4675 5700
Wire Wire Line
	4125 5700 4275 5700
$Comp
L Device:R R37
U 1 1 5CF81086
P 4425 5900
F 0 "R37" V 4325 5900 50  0000 C CNN
F 1 "100k" V 4425 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4355 5900 50  0001 C CNN
F 3 "~" H 4425 5900 50  0001 C CNN
	1    4425 5900
	0    1    -1   0   
$EndComp
Text GLabel 5675 5800 2    50   Input ~ 0
sawtooth
$Comp
L Device:R R36
U 1 1 5CF775B1
P 4425 5700
F 0 "R36" V 4325 5700 50  0000 C CNN
F 1 "100k" V 4425 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4355 5700 50  0001 C CNN
F 3 "~" H 4425 5700 50  0001 C CNN
	1    4425 5700
	0    -1   1    0   
$EndComp
$Comp
L Device:R R38
U 1 1 5CF782B8
P 5000 5450
F 0 "R38" V 4900 5450 50  0000 C CNN
F 1 "100k" V 5000 5450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4930 5450 50  0001 C CNN
F 3 "~" H 5000 5450 50  0001 C CNN
	1    5000 5450
	0    -1   1    0   
$EndComp
Connection ~ 2875 6300
$Comp
L Device:R R35
U 1 1 5CF9A0F2
P 4175 6250
F 0 "R35" V 4275 6250 50  0000 C CNN
F 1 "10k" V 4175 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4105 6250 50  0001 C CNN
F 3 "~" H 4175 6250 50  0001 C CNN
	1    4175 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	4675 5075 4125 5075
Text GLabel 1025 4875 0    50   Input ~ 0
V_pwm
Wire Wire Line
	4675 4875 1025 4875
Text GLabel 5750 4625 2    50   Input ~ 0
pulse
Wire Wire Line
	5675 4975 5275 4975
$Comp
L Device:R R26
U 1 1 5D41CBA2
P 1825 6550
F 0 "R26" V 1725 6550 50  0000 C CNN
F 1 "47k" V 1825 6550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1755 6550 50  0001 C CNN
F 3 "~" H 1825 6550 50  0001 C CNN
	1    1825 6550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R23
U 1 1 5CF2012A
P 1375 6400
F 0 "R23" V 1475 6400 50  0000 C CNN
F 1 "47k" V 1375 6400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1305 6400 50  0001 C CNN
F 3 "~" H 1375 6400 50  0001 C CNN
	1    1375 6400
	0    1    1    0   
$EndComp
$Comp
L Device:R R22
U 1 1 5CF1806F
P 1375 6200
F 0 "R22" V 1275 6200 50  0000 C CNN
F 1 "100k" V 1375 6200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1305 6200 50  0001 C CNN
F 3 "~" H 1375 6200 50  0001 C CNN
	1    1375 6200
	0    -1   1    0   
$EndComp
Wire Wire Line
	4275 5900 4125 5900
Wire Wire Line
	4125 5900 4125 5700
Connection ~ 4125 5700
$Comp
L Amplifier_Operational:LM324 U2
U 1 1 5D628926
P 2225 6300
F 0 "U2" H 2325 6150 50  0000 C CNN
F 1 "LM324" H 2200 6300 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2175 6400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 2275 6500 50  0001 C CNN
	1    2225 6300
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U2
U 2 1 5D628930
P 3175 6700
F 0 "U2" H 3275 6550 50  0000 C CNN
F 1 "LM324" H 3150 6700 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3125 6800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 3225 6900 50  0001 C CNN
	2    3175 6700
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U2
U 4 1 5D628944
P 4975 5800
F 0 "U2" H 5050 5625 50  0000 C CNN
F 1 "LM324" H 4950 5800 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4925 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 5025 6000 50  0001 C CNN
	4    4975 5800
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U2
U 5 1 5D62894E
P 3175 6700
F 0 "U2" H 3225 6525 50  0001 L CNN
F 1 "LM324" H 3250 6450 50  0001 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3125 6800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 3225 6900 50  0001 C CNN
	5    3175 6700
	1    0    0    -1  
$EndComp
Connection ~ 3475 6700
$Comp
L power:VEE #PWR020
U 1 1 5CF354CF
P 3075 6350
F 0 "#PWR020" H 3075 6200 50  0001 C CNN
F 1 "VEE" H 2975 6475 50  0000 C CNN
F 2 "" H 3075 6350 50  0001 C CNN
F 3 "" H 3075 6350 50  0001 C CNN
	1    3075 6350
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
Text GLabel 4025 6250 0    50   Input ~ 0
saw_ctl
Wire Wire Line
	3475 6700 5625 6700
Wire Wire Line
	9500 4000 9750 4000
$Comp
L power:GNDREF #PWR035
U 1 1 5DB5E6E3
P 9750 4000
F 0 "#PWR035" H 9750 3750 50  0001 C CNN
F 1 "GNDREF" H 9950 3925 50  0000 C CNN
F 2 "" H 9750 4000 50  0001 C CNN
F 3 "" H 9750 4000 50  0001 C CNN
	1    9750 4000
	1    0    0    -1  
$EndComp
Connection ~ 9750 4000
Wire Wire Line
	9750 4000 10000 4000
$Comp
L Device:C C4
U 1 1 5DB8DA7E
P 2225 5950
F 0 "C4" V 2150 5850 50  0000 C CNN
F 1 "1n" V 2150 6050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2263 5800 50  0001 C CNN
F 3 "~" H 2225 5950 50  0001 C CNN
	1    2225 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	2625 5950 2375 5950
Wire Wire Line
	2625 5950 2625 6300
Wire Wire Line
	2075 5950 1825 5950
Wire Wire Line
	1825 5950 1825 6200
Wire Wire Line
	1525 6400 1825 6400
Wire Wire Line
	1625 6450 1625 6200
$Comp
L Device:R R24
U 1 1 5D41CBA4
P 1625 6600
F 0 "R24" H 1750 6600 50  0000 C CNN
F 1 "47k" V 1625 6600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1555 6600 50  0001 C CNN
F 3 "~" H 1625 6600 50  0001 C CNN
	1    1625 6600
	-1   0    0    1   
$EndComp
Wire Notes Line
	3450 5750 675  5750
Text Notes 3700 6575 0    50   ~ 0
waveform generation
Wire Notes Line
	6075 6625 6075 4725
$Comp
L Transistor_BJT:BC547 Q2
U 1 1 5DD84926
P 10425 5450
F 0 "Q2" H 10375 5600 50  0000 L CNN
F 1 "BC547" H 10250 5300 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10625 5375 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 10425 5450 50  0001 L CNN
	1    10425 5450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q3
U 1 1 5DDC612F
P 10825 5450
F 0 "Q3" H 10750 5600 50  0000 L CNN
F 1 "BC547" H 10625 5300 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 11025 5375 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 10825 5450 50  0001 L CNN
	1    10825 5450
	-1   0    0    -1  
$EndComp
Text GLabel 10525 5250 1    50   Input ~ 0
C1
Text GLabel 10725 5250 1    50   Input ~ 0
C2
Text GLabel 10225 5450 0    50   Input ~ 0
B1
Text GLabel 10625 5650 3    50   Input ~ 0
E
Wire Wire Line
	10525 5650 10725 5650
Text GLabel 10375 5950 0    50   Input ~ 0
E
Text GLabel 10875 6150 2    50   Input ~ 0
E
Text GLabel 10375 6050 0    50   Input ~ 0
B1
Text GLabel 10875 5950 2    50   Input ~ 0
C1
Text GLabel 10375 6150 0    50   Input ~ 0
C2
Text Notes 10075 6450 0    50   ~ 0
alternative transistors\nonly equip one pair
Wire Notes Line
	10050 6475 11200 6475
Wire Notes Line
	11200 6475 11200 5075
Wire Notes Line
	11200 5075 10050 5075
Wire Notes Line
	10050 5075 10050 6475
Wire Wire Line
	3075 7050 3075 7025
$Comp
L Device:C_Small C7
U 1 1 5D5CE3BE
P 3225 7025
F 0 "C7" V 3175 7125 50  0000 C CNN
F 1 "100n" V 3100 7025 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3225 7025 50  0001 C CNN
F 3 "~" H 3225 7025 50  0001 C CNN
	1    3225 7025
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR023
U 1 1 5D5CFA42
P 3325 7025
F 0 "#PWR023" H 3325 6775 50  0001 C CNN
F 1 "GNDREF" H 3330 6852 50  0001 C CNN
F 2 "" H 3325 7025 50  0001 C CNN
F 3 "" H 3325 7025 50  0001 C CNN
	1    3325 7025
	1    0    0    -1  
$EndComp
Wire Wire Line
	3125 7025 3075 7025
Connection ~ 3075 7025
Wire Wire Line
	3075 7025 3075 7000
$Comp
L Device:C_Small C6
U 1 1 5D5E8697
P 3225 6375
F 0 "C6" V 3175 6450 50  0000 C CNN
F 1 "100n" V 3100 6375 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3225 6375 50  0001 C CNN
F 3 "~" H 3225 6375 50  0001 C CNN
	1    3225 6375
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR022
U 1 1 5D5E869D
P 3325 6375
F 0 "#PWR022" H 3325 6125 50  0001 C CNN
F 1 "GNDREF" H 3330 6202 50  0001 C CNN
F 2 "" H 3325 6375 50  0001 C CNN
F 3 "" H 3325 6375 50  0001 C CNN
	1    3325 6375
	1    0    0    -1  
$EndComp
Wire Wire Line
	3125 6375 3075 6375
Wire Wire Line
	3075 6375 3075 6350
Wire Wire Line
	3075 6400 3075 6375
Connection ~ 3075 6375
$Comp
L Transistor_BJT:BC547 Q5
U 1 1 5D7C3B96
P 4525 6250
F 0 "Q5" H 4475 6400 50  0000 L CNN
F 1 "BC547" H 4350 6100 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4725 6175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4525 6250 50  0001 L CNN
	1    4525 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4575 5900 4625 5900
Wire Wire Line
	4625 5900 4625 6050
Connection ~ 4625 5900
Wire Wire Line
	4625 5900 4675 5900
Wire Wire Line
	4625 6500 4625 6450
Text Notes 4775 6500 0    50   ~ 0
Q5 cannot be replaced by a \nmosfet due to the parasitic\ndiode inside a FET. Do replace\nit for some crunchy wave-\nshaping, though.
$Comp
L Device:R R27
U 1 1 5D9107CB
P 2275 6625
F 0 "R27" V 2375 6625 50  0000 C CNN
F 1 "10k" V 2275 6625 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2205 6625 50  0001 C CNN
F 3 "~" H 2275 6625 50  0001 C CNN
	1    2275 6625
	-1   0    0    1   
$EndComp
$Comp
L Device:R R29
U 1 1 5D910D8F
P 2275 7225
F 0 "R29" V 2375 7225 50  0000 C CNN
F 1 "10k" V 2275 7225 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2205 7225 50  0001 C CNN
F 3 "~" H 2275 7225 50  0001 C CNN
	1    2275 7225
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT R28
U 1 1 5D911866
P 2275 6925
F 0 "R28" V 2160 6925 50  0000 C CNN
F 1 "20k" V 2275 6925 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 2275 6925 50  0001 C CNN
F 3 "~" H 2275 6925 50  0001 C CNN
	1    2275 6925
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR018
U 1 1 5D92BF20
P 2275 7375
F 0 "#PWR018" H 2275 7225 50  0001 C CNN
F 1 "VEE" V 2275 7550 50  0000 C CNN
F 2 "" H 2275 7375 50  0001 C CNN
F 3 "" H 2275 7375 50  0001 C CNN
	1    2275 7375
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR017
U 1 1 5D931D60
P 2275 6475
F 0 "#PWR017" H 2275 6325 50  0001 C CNN
F 1 "VCC" V 2275 6650 50  0000 C CNN
F 2 "" H 2275 6475 50  0001 C CNN
F 3 "" H 2275 6475 50  0001 C CNN
	1    2275 6475
	0    1    1    0   
$EndComp
$Comp
L Device:R_Variable R31
U 1 1 5D95EF15
P 2625 6925
F 0 "R31" V 2700 6825 50  0000 L CNN
F 1 "1Meg" V 2550 6875 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" V 2555 6925 50  0001 C CNN
F 3 "~" H 2625 6925 50  0001 C CNN
	1    2625 6925
	0    1    -1   0   
$EndComp
Wire Notes Line
	675  7750 3450 7750
Text Notes 700  7725 0    50   ~ 0
vco core
$Comp
L Device:RTRIM R25
U 1 1 5DC20550
P 1625 6900
F 0 "R25" H 1400 6950 50  0000 L CNN
F 1 "10k" H 1400 6850 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" V 1555 6900 50  0001 C CNN
F 3 "~" H 1625 6900 50  0001 C CNN
	1    1625 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 7500 2450 7500
Wire Wire Line
	2000 7450 2000 7500
Text GLabel 2000 7450 1    50   Input ~ 0
ctl_override
$Comp
L Transistor_FET:2N7000 Q4
U 1 1 5D1BA17F
P 1725 7250
F 0 "Q4" H 1931 7296 50  0000 L CNN
F 1 "2N7000" H 1931 7205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1925 7175 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 1725 7250 50  0001 L CNN
	1    1725 7250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R32
U 1 1 5CF3A8E6
P 2600 7500
F 0 "R32" V 2500 7500 50  0000 C CNN
F 1 "10k" V 2600 7500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2530 7500 50  0001 C CNN
F 3 "~" H 2600 7500 50  0001 C CNN
	1    2600 7500
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR015
U 1 1 5D41CBAA
P 1250 7500
F 0 "#PWR015" H 1250 7250 50  0001 C CNN
F 1 "GNDREF" H 1255 7327 50  0001 C CNN
F 2 "" H 1250 7500 50  0001 C CNN
F 3 "" H 1250 7500 50  0001 C CNN
	1    1250 7500
	1    0    0    -1  
$EndComp
Text Notes 3600 7725 0    50   ~ 0
Just a hacky way of applying an\nadjustable voltage with an adjustable\ninner resistance. You can leave out\nR27-R29 and equip R30 with a 0R\nresistor.\nThat will cause a slightly off-center\ntriangle wave and a shifted sawtooth,\nat least with the LM324.
Wire Notes Line
	5075 7750 3575 7750
$Comp
L power:GNDREF #PWR025
U 1 1 5CF85DC5
P 4625 6500
F 0 "#PWR025" H 4625 6250 50  0001 C CNN
F 1 "GNDREF" H 4630 6327 50  0001 C CNN
F 2 "" H 4625 6500 50  0001 C CNN
F 3 "" H 4625 6500 50  0001 C CNN
	1    4625 6500
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R40
U 1 1 5DF3EC09
P 5675 4825
F 0 "R40" H 5745 4871 50  0000 L CNN
F 1 "2.2k" V 5675 4750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5605 4825 50  0001 C CNN
F 3 "~" H 5675 4825 50  0001 C CNN
	1    5675 4825
	1    0    0    -1  
$EndComp
$Comp
L Device:R R39
U 1 1 5DF4601A
P 5675 4425
F 0 "R39" H 5745 4471 50  0000 L CNN
F 1 "1k" V 5675 4375 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5605 4425 50  0001 C CNN
F 3 "~" H 5675 4425 50  0001 C CNN
	1    5675 4425
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR026
U 1 1 5DF46B76
P 5525 4275
F 0 "#PWR026" H 5525 4025 50  0001 C CNN
F 1 "GNDREF" H 5530 4102 50  0001 C CNN
F 2 "" H 5525 4275 50  0001 C CNN
F 3 "" H 5525 4275 50  0001 C CNN
	1    5525 4275
	1    0    0    -1  
$EndComp
Wire Wire Line
	5675 4275 5675 4200
Wire Wire Line
	5675 4200 5525 4200
Wire Wire Line
	5525 4200 5525 4275
Wire Wire Line
	5750 4625 5675 4625
Wire Wire Line
	5675 4575 5675 4625
Wire Wire Line
	5675 4675 5675 4625
Connection ~ 5675 4625
Text Notes 3900 4650 0    50   ~ 0
to put the pulse signal roughly at the same\nlevel as the others (ca. 3V peak-peak.\nothers can range from 1.5V to ca. 7V)
$Comp
L Jumper:Jumper_3_Bridged12 JP4
U 1 1 5E059366
P 1625 7600
F 0 "JP4" H 1525 7525 50  0000 C CNN
F 1 "gnd adjust" H 1625 7700 50  0000 C CNN
F 2 "footprints:SolderDipJumper3alt" H 1625 7600 50  0001 C CNN
F 3 "~" H 1625 7600 50  0001 C CNN
	1    1625 7600
	1    0    0    1   
$EndComp
Wire Wire Line
	1250 7500 1250 7425
Wire Wire Line
	1250 7425 1375 7425
Wire Wire Line
	1375 7425 1375 7600
Text GLabel 1875 7600 2    50   Input ~ 0
var_vsource
Wire Notes Line
	2950 7525 3575 7525
Wire Notes Line
	675  5750 675  7750
Wire Notes Line
	3450 5750 3450 7750
Text Notes 500  5700 0    50   ~ 0
R22 * C4 should be 100µs, this affects the freq. range\nR22 : R24+R25 must be 2:1, this affects the triangle shape\nR23 : R26 must be 1:1, this affects the triangle shape\nR31 : R33 should be 1:1 to 1:5, this affects tri amplitude\nand frequency range. Too large R31 may cause distortion\nR36 : R38 should be 1:1, this affects sawtooth amplitude
Text GLabel 10800 1200 2    50   Input ~ 0
V_tune
$Comp
L Device:R_POT R52
U 1 1 5D47F832
P 10650 1200
F 0 "R52" H 10581 1246 50  0000 R CNN
F 1 "1k" V 10650 1250 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 10650 1200 50  0001 C CNN
F 3 "~" H 10650 1200 50  0001 C CNN
	1    10650 1200
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR042
U 1 1 5D480B46
P 10650 1350
F 0 "#PWR042" H 10650 1200 50  0001 C CNN
F 1 "VEE" H 10668 1523 50  0000 C CNN
F 2 "" H 10650 1350 50  0001 C CNN
F 3 "" H 10650 1350 50  0001 C CNN
	1    10650 1350
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR041
U 1 1 5D4820BF
P 10650 1050
F 0 "#PWR041" H 10650 900 50  0001 C CNN
F 1 "VCC" H 10667 1223 50  0000 C CNN
F 2 "" H 10650 1050 50  0001 C CNN
F 3 "" H 10650 1050 50  0001 C CNN
	1    10650 1050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Counter_Clockwise J5
U 1 1 5DED6187
P 10575 6050
F 0 "J5" H 10625 6250 50  0000 C CNN
F 1 "BCM847 breakout socket" H 10650 5850 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm_Socket" H 10575 6050 50  0001 C CNN
F 3 "~" H 10575 6050 50  0001 C CNN
	1    10575 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3675 2700 3800 2700
Wire Wire Line
	3275 2700 3125 2700
Text Notes 650  2125 3    50   ~ 0
ca 290mV/oct
Text Notes 6750 900  0    50   ~ 0
adjustable offset can be achieved by running a wire\nfrom the gnd adjust jumper to V_lin_pitchmod_3\n(TODO: set the resistor value accordingly)
Connection ~ 1650 2050
Connection ~ 1450 2050
Wire Wire Line
	1450 2050 1650 2050
Wire Wire Line
	1650 2050 1650 2300
Wire Wire Line
	1450 2250 1450 2350
Wire Wire Line
	1450 2350 1450 2450
Connection ~ 1450 2350
Connection ~ 1450 2250
Connection ~ 1450 2150
Wire Wire Line
	1450 2150 1450 2250
Wire Wire Line
	1450 2050 1450 2150
Wire Wire Line
	1150 2050 1450 2050
Text GLabel 1150 2050 0    50   Input ~ 0
V_control_raw
Text GLabel 1150 2150 0    50   Input ~ 0
V_control
$Comp
L Device:R R4
U 1 1 5E1A1AC9
P 1300 2150
F 0 "R4" V 1300 2375 50  0000 C CNN
F 1 "147k" V 1300 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1230 2150 50  0001 C CNN
F 3 "~" H 1300 2150 50  0001 C CNN
	1    1300 2150
	0    1    1    0   
$EndComp
Text GLabel 1150 2250 0    50   Input ~ 0
V_control_2
$Comp
L Device:R R5
U 1 1 5E193690
P 1300 2250
F 0 "R5" V 1300 2475 50  0000 C CNN
F 1 "147k" V 1300 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1230 2250 50  0001 C CNN
F 3 "~" H 1300 2250 50  0001 C CNN
	1    1300 2250
	0    1    1    0   
$EndComp
Text GLabel 6650 1425 1    50   Input ~ 0
V_lin_pitchmod_3
Text GLabel 6550 1425 1    50   Input ~ 0
V_lin_pitchmod_2
Text GLabel 6450 1425 1    50   Input ~ 0
V_lin_pitchmod_1
Wire Wire Line
	6275 1725 6450 1725
Connection ~ 6275 1725
Wire Wire Line
	6275 1425 6275 1725
Wire Wire Line
	6450 1725 6550 1725
Connection ~ 6450 1725
$Comp
L Device:R R18
U 1 1 5E131D96
P 6450 1575
F 0 "R18" V 6450 1250 50  0000 L CNN
F 1 "TODO" V 6450 1475 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6380 1575 50  0001 C CNN
F 3 "~" H 6450 1575 50  0001 C CNN
	1    6450 1575
	1    0    0    -1  
$EndComp
Connection ~ 1575 3600
Wire Wire Line
	1700 3600 1575 3600
Wire Wire Line
	1700 3650 1700 3600
Text GLabel 1700 3650 3    50   Input ~ 0
var_vsource
$Comp
L power:VCC #PWR01
U 1 1 5E0402DF
P 825 3050
F 0 "#PWR01" H 825 2900 50  0001 C CNN
F 1 "VCC" H 725 3125 50  0000 C CNN
F 2 "" H 825 3050 50  0001 C CNN
F 3 "" H 825 3050 50  0001 C CNN
	1    825  3050
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR02
U 1 1 5E03FE83
P 825 3950
F 0 "#PWR02" H 825 3800 50  0001 C CNN
F 1 "VEE" H 925 4025 50  0000 C CNN
F 2 "" H 825 3950 50  0001 C CNN
F 3 "" H 825 3950 50  0001 C CNN
	1    825  3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	975  4125 975  3700
Wire Wire Line
	1575 4125 975  4125
Wire Wire Line
	1575 3600 1575 4125
$Comp
L Device:R_POT_TRIM R2
U 1 1 5E01D2A0
P 825 3500
F 0 "R2" H 750 3500 50  0000 R CNN
F 1 "10k" V 825 3575 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 825 3500 50  0001 C CNN
F 3 "~" H 825 3500 50  0001 C CNN
	1    825  3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R21
U 1 1 5DEA3137
P 7350 1475
F 0 "R21" V 7525 1425 50  0000 C CNN
F 1 "50k" V 7450 1450 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" V 7280 1475 50  0001 C CNN
F 3 "~" H 7350 1475 50  0001 C CNN
	1    7350 1475
	0    1    -1   0   
$EndComp
Text Notes 7475 1375 0    50   ~ 0
10k is a reasonable value here.\nThe poti gives plenty room.
Text Notes 4500 1575 0    50   ~ 0
must be of same (or\nsimilar) size as the\nrossum resistor.\nalso change the vexpo\npotis value accordingly
$Comp
L power:GNDREF #PWR010
U 1 1 5DDFE799
P 4075 1775
F 0 "#PWR010" H 4075 1525 50  0001 C CNN
F 1 "GNDREF" H 4080 1602 50  0001 C CNN
F 2 "" H 4075 1775 50  0001 C CNN
F 3 "" H 4075 1775 50  0001 C CNN
	1    4075 1775
	1    0    0    -1  
$EndComp
Connection ~ 3975 2125
Wire Wire Line
	3975 2125 3975 1775
$Comp
L Connector:Conn_01x02_Male JP3
U 1 1 5DDEFD28
P 3975 1575
F 0 "JP3" V 4025 1450 50  0000 R CNN
F 1 "expo in" V 3900 1675 50  0000 R CNN
F 2 "footprints:SolderDipJumper2alt" H 3975 1575 50  0001 C CNN
F 3 "~" H 3975 1575 50  0001 C CNN
	1    3975 1575
	0    -1   1    0   
$EndComp
Wire Wire Line
	1175 3275 1175 3300
Connection ~ 1175 3275
Wire Wire Line
	1175 3275 1225 3275
Wire Wire Line
	1175 3250 1175 3275
Wire Wire Line
	1175 3925 1175 3950
Connection ~ 1175 3925
Wire Wire Line
	1175 3925 1225 3925
Wire Wire Line
	1175 3900 1175 3925
$Comp
L power:GNDREF #PWR06
U 1 1 5D63C631
P 1425 3925
F 0 "#PWR06" H 1425 3675 50  0001 C CNN
F 1 "GNDREF" H 1430 3752 50  0001 C CNN
F 2 "" H 1425 3925 50  0001 C CNN
F 3 "" H 1425 3925 50  0001 C CNN
	1    1425 3925
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5D63C62B
P 1325 3925
F 0 "C2" V 1275 4000 50  0000 C CNN
F 1 "100n" V 1200 3925 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1325 3925 50  0001 C CNN
F 3 "~" H 1325 3925 50  0001 C CNN
	1    1325 3925
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR05
U 1 1 5D63109B
P 1425 3275
F 0 "#PWR05" H 1425 3025 50  0001 C CNN
F 1 "GNDREF" H 1430 3102 50  0001 C CNN
F 2 "" H 1425 3275 50  0001 C CNN
F 3 "" H 1425 3275 50  0001 C CNN
	1    1425 3275
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5D631095
P 1325 3275
F 0 "C1" V 1275 3350 50  0000 C CNN
F 1 "100n" V 1200 3275 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1325 3275 50  0001 C CNN
F 3 "~" H 1325 3275 50  0001 C CNN
	1    1325 3275
	0    1    1    0   
$EndComp
Text GLabel 6275 1425 1    50   Input ~ 0
V_lin_pitchmod_raw
Wire Wire Line
	6550 1725 6650 1725
Connection ~ 6550 1725
$Comp
L Device:R R19
U 1 1 5E17FED4
P 6550 1575
F 0 "R19" V 6550 1250 50  0000 L CNN
F 1 "TODO" V 6550 1475 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6480 1575 50  0001 C CNN
F 3 "~" H 6550 1575 50  0001 C CNN
	1    6550 1575
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1725 6900 1725
Connection ~ 6650 1725
$Comp
L Device:R R20
U 1 1 5E17C2C3
P 6650 1575
F 0 "R20" V 6650 1250 50  0000 L CNN
F 1 "TODO" V 6650 1475 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6580 1575 50  0001 C CNN
F 3 "~" H 6650 1575 50  0001 C CNN
	1    6650 1575
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2700 3800 3200
Wire Wire Line
	3125 2700 3125 3075
Wire Wire Line
	4125 4050 3975 4050
Wire Wire Line
	3125 3075 3250 3075
Connection ~ 3125 3075
$Comp
L Jumper:Jumper_2_Open JP1
U 1 1 5E0BADDE
P 3475 2700
F 0 "JP1" H 3300 2750 50  0000 C CNN
F 1 "Rossum override" H 3475 2825 50  0000 C CNN
F 2 "footprints:SolderDipJumper2alt" H 3475 2700 50  0001 C CNN
F 3 "~" H 3475 2700 50  0001 C CNN
	1    3475 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2175 2050 2450 2050
Text GLabel 5650 2325 1    50   Input ~ 0
E
Text GLabel 5100 2125 1    50   Input ~ 0
B1
Wire Wire Line
	3975 2125 5150 2125
Wire Wire Line
	6150 2125 6500 2125
Text GLabel 5850 1875 0    50   Input ~ 0
C2
Text GLabel 5450 1875 2    50   Input ~ 0
C1
Connection ~ 5450 1725
Wire Wire Line
	5450 1675 5450 1725
Wire Wire Line
	4350 1725 5450 1725
Wire Wire Line
	5450 1725 5450 1925
Wire Wire Line
	5850 1725 6275 1725
Wire Wire Line
	5850 1725 5850 1925
Wire Wire Line
	5650 2325 5650 2575
Wire Wire Line
	5650 2325 5850 2325
Connection ~ 5650 2325
Wire Wire Line
	5450 2325 5650 2325
$Comp
L Transistor_BJT:BC847BDW1 Q1
U 2 1 5DD7EF3D
P 5950 2125
F 0 "Q1" H 5825 2275 50  0000 L CNN
F 1 "BCM847" H 5725 1850 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 6150 2225 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC846BDW1T1-D.PDF" H 5950 2125 50  0001 C CNN
	2    5950 2125
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC847BDW1 Q1
U 1 1 5DD7C680
P 5350 2125
F 0 "Q1" H 5275 2275 50  0000 L CNN
F 1 "BCM847" H 5500 2225 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5550 2225 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC846BDW1T1-D.PDF" H 5350 2125 50  0001 C CNN
	1    5350 2125
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 5 1 5D5EEA82
P 1275 3600
F 0 "U1" H 1450 4200 50  0001 L CNN
F 1 "LM324" H 1250 4350 50  0001 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1225 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1325 3800 50  0001 C CNN
	5    1275 3600
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 4 1 5D5ED4E4
P 1275 3600
F 0 "U1" H 1350 3750 50  0000 C CNN
F 1 "LM324" H 1275 3600 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1225 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1325 3800 50  0001 C CNN
	4    1275 3600
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 3 1 5D5EBF6F
P 2050 2400
F 0 "U1" H 2150 2250 50  0000 C CNN
F 1 "LM324" H 2025 2400 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2000 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 2100 2600 50  0001 C CNN
	3    2050 2400
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 2 1 5D5EA9A1
P 4850 3275
F 0 "U1" H 4925 3125 50  0000 C CNN
F 1 "LM324" H 4825 3275 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4800 3375 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 4900 3475 50  0001 C CNN
	2    4850 3275
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 1 1 5D5E9E8D
P 7350 1825
F 0 "U1" H 7450 1675 50  0000 C CNN
F 1 "LM324" H 7325 1825 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7300 1925 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 7400 2025 50  0001 C CNN
	1    7350 1825
	1    0    0    1   
$EndComp
Text GLabel 1150 2350 0    50   Input ~ 0
V_control_3
Wire Wire Line
	2350 2400 2450 2400
Connection ~ 2450 2400
$Comp
L power:GNDREF #PWR07
U 1 1 5D04FEE6
P 1600 2650
F 0 "#PWR07" H 1600 2400 50  0001 C CNN
F 1 "GNDREF" H 1605 2477 50  0000 C CNN
F 2 "" H 1600 2650 50  0001 C CNN
F 3 "" H 1600 2650 50  0001 C CNN
	1    1600 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2650 1600 2500
Wire Wire Line
	1600 2500 1750 2500
Wire Wire Line
	1650 2300 1750 2300
Wire Wire Line
	1650 2050 1875 2050
Wire Wire Line
	2450 2050 2450 2400
$Comp
L Device:R R7
U 1 1 5D41CBC2
P 1300 2450
F 0 "R7" V 1300 2675 50  0000 C CNN
F 1 "220k" V 1300 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1230 2450 50  0001 C CNN
F 3 "~" H 1300 2450 50  0001 C CNN
	1    1300 2450
	0    1    1    0   
$EndComp
Text GLabel 1150 2450 0    50   Input ~ 0
V_tune
$Comp
L Device:R R8
U 1 1 5D054E64
P 2025 2050
F 0 "R8" V 2125 2100 50  0000 R CNN
F 1 "12k2" V 2025 2150 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1955 2050 50  0001 C CNN
F 3 "~" H 2025 2050 50  0001 C CNN
	1    2025 2050
	0    -1   -1   0   
$EndComp
Text Notes 3950 1050 0    50   ~ 0
R16 determines the I_C current through\nQ1B when Q1B's base is at GNDREF.\nTogether with V_tune, it determines the pitch.\nChoose R14 and V_tune such, that Q1A's base is\nat around GNDREF for "sane" pitches.
Text Notes 5975 3925 0    50   ~ 0
for Q1B, the following holds true:\nI_C = const * exp(V_B / VT) with VT=26mV\n(thermal voltage of a transistor)\nnow this means that V_expo will double\nevery (log(2) * 26mV) = 18mV.\n\nNote that VT is temperature dependent.\nWhen the temperature rises, VT rises and so\nthe input voltage must rise too. The thermal\ncompensation consisting of R9-12 does that.\n\nAdditionally, Q1A and Q1B have a bulk resistance\nbetween their ideal and actual emitters. This\ncauses the VCO's tuning to drop a bit at high\nfrequencies. The Rossum compensation compensates\nfor this by measuring the current through R17 and\nfeeding back a small amount into Q1A's base.
Wire Wire Line
	5350 3275 5650 3275
Connection ~ 5350 3275
Wire Wire Line
	5350 2900 5350 3275
Wire Wire Line
	5350 3275 5350 4050
Wire Wire Line
	5050 2900 5350 2900
Wire Wire Line
	4350 2900 4350 3175
Connection ~ 4350 2900
Wire Wire Line
	4750 2900 4350 2900
Wire Wire Line
	4350 1725 4350 2900
Wire Wire Line
	5650 2875 5650 3275
$Comp
L Device:C C3
U 1 1 5D41CBBB
P 4900 2900
F 0 "C3" V 4648 2900 50  0000 C CNN
F 1 "2.2n" V 4739 2900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4938 2750 50  0001 C CNN
F 3 "~" H 4900 2900 50  0001 C CNN
	1    4900 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 3375 4550 3375
Wire Wire Line
	4350 3575 4350 3375
$Comp
L power:GNDREF #PWR011
U 1 1 5D41CBBA
P 4350 3575
F 0 "#PWR011" H 4350 3325 50  0001 C CNN
F 1 "GNDREF" H 4355 3402 50  0001 C CNN
F 2 "" H 4350 3575 50  0001 C CNN
F 3 "" H 4350 3575 50  0001 C CNN
	1    4350 3575
	1    0    0    -1  
$EndComp
Connection ~ 7750 1825
Wire Wire Line
	7900 1825 7750 1825
Wire Wire Line
	7750 1825 7650 1825
Text GLabel 7900 1825 2    50   Input ~ 0
V_expo
Connection ~ 6900 1725
Wire Wire Line
	7050 1725 6900 1725
Wire Wire Line
	6900 1475 7200 1475
Wire Wire Line
	6900 1725 6900 1475
Wire Wire Line
	6900 1925 7050 1925
Wire Wire Line
	6900 2075 6900 1925
$Comp
L power:GNDREF #PWR014
U 1 1 5CFF60BC
P 6900 2075
F 0 "#PWR014" H 6900 1825 50  0001 C CNN
F 1 "GNDREF" H 6905 1902 50  0001 C CNN
F 2 "" H 6900 2075 50  0001 C CNN
F 3 "" H 6900 2075 50  0001 C CNN
	1    6900 2075
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1475 7750 1825
Wire Wire Line
	7500 1475 7750 1475
$Comp
L power:VCC #PWR03
U 1 1 5CFF25D9
P 1175 3250
F 0 "#PWR03" H 1175 3100 50  0001 C CNN
F 1 "VCC" H 1075 3325 50  0000 C CNN
F 2 "" H 1175 3250 50  0001 C CNN
F 3 "" H 1175 3250 50  0001 C CNN
	1    1175 3250
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR04
U 1 1 5CFF2176
P 1175 3950
F 0 "#PWR04" H 1175 3800 50  0001 C CNN
F 1 "VEE" H 1275 4025 50  0000 C CNN
F 2 "" H 1175 3950 50  0001 C CNN
F 3 "" H 1175 3950 50  0001 C CNN
	1    1175 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 3175 4550 3175
$Comp
L Device:R R16
U 1 1 5D41CBB1
P 5450 1525
F 0 "R16" H 5520 1571 50  0000 L CNN
F 1 "100k" V 5450 1425 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5380 1525 50  0001 C CNN
F 3 "~" H 5450 1525 50  0001 C CNN
	1    5450 1525
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR012
U 1 1 5D41CBB2
P 5450 1375
F 0 "#PWR012" H 5450 1225 50  0001 C CNN
F 1 "VCC" H 5467 1548 50  0000 C CNN
F 2 "" H 5450 1375 50  0001 C CNN
F 3 "" H 5450 1375 50  0001 C CNN
	1    5450 1375
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3275 5350 3275
Wire Wire Line
	6500 2275 6500 2125
$Comp
L power:GNDREF #PWR013
U 1 1 5D41CBAF
P 6500 2275
F 0 "#PWR013" H 6500 2025 50  0001 C CNN
F 1 "GNDREF" H 6505 2102 50  0001 C CNN
F 2 "" H 6500 2275 50  0001 C CNN
F 3 "" H 6500 2275 50  0001 C CNN
	1    6500 2275
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5D41CBAE
P 5650 2725
F 0 "R17" H 5725 2725 50  0000 L CNN
F 1 "1k" V 5650 2675 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5580 2725 50  0001 C CNN
F 3 "~" H 5650 2725 50  0001 C CNN
	1    5650 2725
	1    0    0    -1  
$EndComp
$Comp
L Device:Thermistor_NTC R10
U 1 1 5D4AB436
P 2275 2850
F 0 "R10" H 2350 2900 50  0000 L CNN
F 1 "1k" H 2350 2800 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 2275 2900 50  0001 C CNN
F 3 "~" H 2275 2900 50  0001 C CNN
	1    2275 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5D4A95E2
P 2625 2850
F 0 "R11" H 2675 2900 50  0000 L CNN
F 1 "1k" V 2625 2800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2555 2850 50  0001 C CNN
F 3 "~" H 2625 2850 50  0001 C CNN
	1    2625 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2275 2700 2450 2700
Connection ~ 2450 2700
$Comp
L Device:R R12
U 1 1 5D4B330E
P 2450 3275
F 0 "R12" H 2520 3321 50  0000 L CNN
F 1 "2.2k" V 2450 3200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2380 3275 50  0001 C CNN
F 3 "~" H 2450 3275 50  0001 C CNN
	1    2450 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2700 2625 2700
$Comp
L power:GNDREF #PWR08
U 1 1 5D4D9682
P 2450 3425
F 0 "#PWR08" H 2450 3175 50  0001 C CNN
F 1 "GNDREF" H 2455 3252 50  0000 C CNN
F 2 "" H 2450 3425 50  0001 C CNN
F 3 "" H 2450 3425 50  0001 C CNN
	1    2450 3425
	1    0    0    -1  
$EndComp
Wire Wire Line
	2275 3000 2450 3000
Connection ~ 2450 3000
Wire Wire Line
	2450 3125 2450 3075
Connection ~ 2450 3075
Wire Wire Line
	2450 3000 2625 3000
Wire Wire Line
	2450 3075 3125 3075
Wire Wire Line
	2450 3075 2450 3000
Wire Notes Line
	2525 2250 2825 2250
Wire Notes Line
	2825 3900 2100 3900
Wire Notes Line
	2100 2675 2525 2250
Wire Notes Line
	2100 2675 2100 3900
Wire Notes Line
	2825 2250 2825 3900
Text Notes 2125 3875 0    50   ~ 0
thermal\ncompensation
$Comp
L Device:R R13
U 1 1 5D5DBBAB
P 3400 3075
F 0 "R13" V 3300 3075 50  0000 C CNN
F 1 "4.7k" V 3400 3075 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3330 3075 50  0001 C CNN
F 3 "~" H 3400 3075 50  0001 C CNN
	1    3400 3075
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5D5DCAB9
P 3400 3325
F 0 "R14" V 3300 3325 50  0000 C CNN
F 1 "100k" V 3400 3325 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3330 3325 50  0001 C CNN
F 3 "~" H 3400 3325 50  0001 C CNN
	1    3400 3325
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 4050 4525 4050
$Comp
L Device:R_POT_TRIM R15
U 1 1 5D5E850B
P 3250 3625
F 0 "R15" V 3135 3625 50  0000 C CNN
F 1 "1k" V 3250 3625 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 3250 3625 50  0001 C CNN
F 3 "~" H 3250 3625 50  0001 C CNN
	1    3250 3625
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 3475 3250 3325
Wire Wire Line
	3100 3700 3100 3625
Wire Wire Line
	3550 3325 3550 3200
Connection ~ 3550 3200
Wire Wire Line
	3550 3200 3800 3200
Wire Wire Line
	3550 3200 3550 3075
Text Notes 3000 4100 0    50   ~ 0
Rossum\ncompensation
Wire Notes Line
	3725 2900 3725 4125
Wire Notes Line
	2950 2900 2950 4125
Wire Notes Line
	2950 2900 3725 2900
Wire Notes Line
	2950 4125 3725 4125
$Comp
L power:GNDREF #PWR09
U 1 1 5D61694C
P 3100 3700
F 0 "#PWR09" H 3100 3450 50  0001 C CNN
F 1 "GNDREF" H 3105 3527 50  0000 C CNN
F 2 "" H 3100 3700 50  0001 C CNN
F 3 "" H 3100 3700 50  0001 C CNN
	1    3100 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5D054548
P 1300 2350
F 0 "R6" V 1300 2575 50  0000 C CNN
F 1 "147k" V 1300 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1230 2350 50  0001 C CNN
F 3 "~" H 1300 2350 50  0001 C CNN
	1    1300 2350
	0    1    1    0   
$EndComp
Text Notes 4050 2650 1    50   ~ 0
ca 18mV/oct
Text Notes 2925 3075 1    50   ~ 0
ca 19mV/Oct
Text Notes 2450 2050 0    50   ~ 0
ca 24mV/oct
Text GLabel 10300 2575 2    50   Input ~ 0
V_lin_pitchmod_raw
Text GLabel 10300 2275 2    50   Input ~ 0
V_lin_pitchmod_1
Wire Wire Line
	10050 2875 10300 2875
Connection ~ 10050 2875
$Comp
L power:GNDREF #PWR039
U 1 1 5D62D6F9
P 10050 2875
F 0 "#PWR039" H 10050 2625 50  0001 C CNN
F 1 "GNDREF" H 10250 2800 50  0000 C CNN
F 2 "" H 10050 2875 50  0001 C CNN
F 3 "" H 10050 2875 50  0001 C CNN
	1    10050 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 2875 10300 2775
Wire Wire Line
	9800 2875 10050 2875
Wire Wire Line
	9800 2775 9800 2875
Wire Wire Line
	10050 2075 10300 2075
Connection ~ 10050 2075
Wire Wire Line
	10050 1925 10175 1925
Wire Wire Line
	10050 2075 10050 1925
$Comp
L power:GNDREF #PWR040
U 1 1 5D61D630
P 10175 1925
F 0 "#PWR040" H 10175 1675 50  0001 C CNN
F 1 "GNDREF" H 10425 1850 50  0001 C CNN
F 2 "" H 10175 1925 50  0001 C CNN
F 3 "" H 10175 1925 50  0001 C CNN
	1    10175 1925
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 2075 10300 2175
Wire Wire Line
	9800 2075 10050 2075
Wire Wire Line
	9800 2175 9800 2075
Text GLabel 10300 2675 2    50   Input ~ 0
V_pwm
Text GLabel 10300 2475 2    50   Input ~ 0
V_lin_pitchmod_3
Text GLabel 10300 2375 2    50   Input ~ 0
V_lin_pitchmod_2
Text GLabel 9800 2575 0    50   Input ~ 0
V_control_raw
Text GLabel 9800 2475 0    50   Input ~ 0
V_control_3
Text GLabel 9800 2375 0    50   Input ~ 0
V_control_2
Text GLabel 9800 2275 0    50   Input ~ 0
V_control
Text GLabel 9800 2675 0    50   Input ~ 0
ctl_override
Wire Wire Line
	9750 3200 10000 3200
Connection ~ 9750 3200
Wire Wire Line
	9750 3050 9875 3050
Wire Wire Line
	9750 3200 9750 3050
$Comp
L power:GNDREF #PWR037
U 1 1 5DB5EE2A
P 9875 3050
F 0 "#PWR037" H 9875 2800 50  0001 C CNN
F 1 "GNDREF" H 10125 2975 50  0001 C CNN
F 2 "" H 9875 3050 50  0001 C CNN
F 3 "" H 9875 3050 50  0001 C CNN
	1    9875 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 3200 10000 3300
Wire Wire Line
	9500 3200 9750 3200
Wire Wire Line
	9500 3300 9500 3200
Wire Wire Line
	10000 4000 10000 3900
Wire Wire Line
	9500 3900 9500 4000
Wire Wire Line
	10625 3700 10750 3700
Wire Wire Line
	10750 3600 10300 3600
Wire Wire Line
	10625 3500 10750 3500
Wire Wire Line
	10300 3400 10750 3400
Text GLabel 10750 3800 2    50   Input ~ 0
square_ctl
Text GLabel 10750 3700 2    50   Input ~ 0
sawtooth
Text GLabel 10750 3600 2    50   Input ~ 0
triangle
Text GLabel 10750 3500 2    50   Input ~ 0
pulse
Wire Wire Line
	10000 3700 10325 3700
Wire Wire Line
	10000 3500 10325 3500
$Comp
L Device:C C13
U 1 1 5DB28CBB
P 10475 3700
F 0 "C13" V 10425 3600 50  0000 C CNN
F 1 "100n" V 10425 3850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10513 3550 50  0001 C CNN
F 3 "~" H 10475 3700 50  0001 C CNN
	1    10475 3700
	0    1    1    0   
$EndComp
$Comp
L Device:C C10
U 1 1 5DB28933
P 10150 3600
F 0 "C10" V 10100 3500 50  0000 C CNN
F 1 "100n" V 10100 3750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10188 3450 50  0001 C CNN
F 3 "~" H 10150 3600 50  0001 C CNN
	1    10150 3600
	0    1    1    0   
$EndComp
$Comp
L Device:C C12
U 1 1 5DB283FD
P 10475 3500
F 0 "C12" V 10425 3400 50  0000 C CNN
F 1 "100n" V 10425 3650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10513 3350 50  0001 C CNN
F 3 "~" H 10475 3500 50  0001 C CNN
	1    10475 3500
	0    1    1    0   
$EndComp
$Comp
L Device:C C9
U 1 1 5DB279B1
P 10150 3400
F 0 "C9" V 10100 3300 50  0000 C CNN
F 1 "100n" V 10100 3550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10188 3250 50  0001 C CNN
F 3 "~" H 10150 3400 50  0001 C CNN
	1    10150 3400
	0    1    1    0   
$EndComp
Text GLabel 9500 3800 0    50   Input ~ 0
square_ctl
Text GLabel 9500 3700 0    50   Input ~ 0
sawtooth
Text GLabel 9500 3600 0    50   Input ~ 0
triangle
Text GLabel 9500 3500 0    50   Input ~ 0
pulse
$Comp
L power:VCC #PWR033
U 1 1 5D5DC792
P 9300 1125
F 0 "#PWR033" H 9300 975 50  0001 C CNN
F 1 "VCC" H 9317 1298 50  0000 C CNN
F 2 "" H 9300 1125 50  0001 C CNN
F 3 "" H 9300 1125 50  0001 C CNN
	1    9300 1125
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 1225 9175 1225
$Comp
L power:GNDREF #PWR032
U 1 1 5D5D7596
P 9175 1225
F 0 "#PWR032" H 9175 975 50  0001 C CNN
F 1 "GNDREF" H 9075 1075 50  0000 C CNN
F 2 "" H 9175 1225 50  0001 C CNN
F 3 "" H 9175 1225 50  0001 C CNN
	1    9175 1225
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR034
U 1 1 5D5D6D99
P 9300 1325
F 0 "#PWR034" H 9300 1175 50  0001 C CNN
F 1 "VEE" H 9318 1498 50  0000 C CNN
F 2 "" H 9300 1325 50  0001 C CNN
F 3 "" H 9300 1325 50  0001 C CNN
	1    9300 1325
	-1   0    0    1   
$EndComp
Text GLabel 10875 6050 2    50   Input ~ 0
GND
Text GLabel 11025 5450 2    50   Input ~ 0
GND
Text GLabel 6200 2125 1    50   Input ~ 0
GND
$Comp
L Jumper:Jumper_2_Bridged JP2
U 1 1 5E0B9FA6
P 4325 4050
F 0 "JP2" H 4325 4200 50  0000 C CNN
F 1 "Rossum connect" H 4325 4125 50  0000 C CNN
F 2 "footprints:SolderDipJumper2alt" H 4325 4050 50  0001 C CNN
F 3 "~" H 4325 4050 50  0001 C CNN
	1    4325 4050
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 5E16153A
P 3550 3625
F 0 "D1" H 3550 3525 50  0000 C CNN
F 1 "1N4148" H 3550 3725 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3550 3450 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3550 3625 50  0001 C CNN
	1    3550 3625
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J2
U 1 1 5D76A0AB
P 10000 2475
F 0 "J2" H 9975 2950 50  0000 C CNN
F 1 "control in" V 10050 2475 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x07_P2.54mm_Vertical" H 10000 2475 50  0001 C CNN
F 3 "~" H 10000 2475 50  0001 C CNN
	1    10000 2475
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR036
U 1 1 5D87E356
P 9800 1125
F 0 "#PWR036" H 9800 975 50  0001 C CNN
F 1 "+5V" H 9815 1298 50  0000 C CNN
F 2 "" H 9800 1125 50  0001 C CNN
F 3 "" H 9800 1125 50  0001 C CNN
	1    9800 1125
	1    0    0    -1  
$EndComp
Text Notes 9075 825  0    50   ~ 0
VCC-GND should be <= 6V \nabsolute maximum: 7V).\nOtherwise, 5V and VCC\nmust be separated
$Comp
L Device:R R43
U 1 1 5DA160FA
P 6675 5450
F 0 "R43" V 6625 5550 50  0000 L CNN
F 1 "10k" V 6675 5375 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6605 5450 50  0001 C CNN
F 3 "~" H 6675 5450 50  0001 C CNN
	1    6675 5450
	0    1    1    0   
$EndComp
$Comp
L Device:R R42
U 1 1 5DA129CE
P 6675 5250
F 0 "R42" V 6625 5350 50  0000 L CNN
F 1 "10k" V 6675 5175 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6605 5250 50  0001 C CNN
F 3 "~" H 6675 5250 50  0001 C CNN
	1    6675 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R R50
U 1 1 5D9D225A
P 9175 5450
F 0 "R50" V 9075 5375 50  0000 L CNN
F 1 "10k" V 9175 5375 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9105 5450 50  0001 C CNN
F 3 "~" H 9175 5450 50  0001 C CNN
	1    9175 5450
	0    1    1    0   
$EndComp
Connection ~ 6400 4500
$Comp
L power:+5V #PWR027
U 1 1 5D8888E9
P 6400 4500
F 0 "#PWR027" H 6400 4350 50  0001 C CNN
F 1 "+5V" H 6415 4673 50  0000 C CNN
F 2 "" H 6400 4500 50  0001 C CNN
F 3 "" H 6400 4500 50  0001 C CNN
	1    6400 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7475 4800 7000 4800
Wire Wire Line
	7475 4500 7475 4800
Wire Wire Line
	7400 4500 7475 4500
Wire Wire Line
	6400 4800 6800 4800
Wire Wire Line
	6400 4500 6400 4800
$Comp
L Device:C_Small C8
U 1 1 5D6A2D61
P 6900 4800
F 0 "C8" V 6850 4900 50  0000 C CNN
F 1 "100n" V 6950 4925 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6900 4800 50  0001 C CNN
F 3 "~" H 6900 4800 50  0001 C CNN
	1    6900 4800
	0    1    1    0   
$EndComp
Text Notes 6250 6450 0    50   ~ 0
Sawtooth generation and digital ring modulation\n(sawtooth is basically a square_ctl ringmodulated triangle)
Text Notes 8025 4775 0    50   ~ 0
Jumper configurations for JP6:\n12 + 34: sawtooth wave with 4x ringmod\n12: triangle wave with 4x ringmod\n    (pin 4 can be used as fifth ringmod)\n23: sawtooth, no ring mod. Choose this\n    when no 74HC86 is installed.
Wire Wire Line
	6450 5450 6525 5450
Wire Wire Line
	6450 5250 6525 5250
Wire Wire Line
	6450 5050 6525 5050
$Comp
L 74xx:74HC86 U3
U 5 1 5D72B593
P 6900 4500
F 0 "U3" V 7025 4450 50  0000 L CNN
F 1 "74HC86" V 6750 4375 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6900 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 6900 4500 50  0001 C CNN
	5    6900 4500
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74HC86 U3
U 4 1 5D728D89
P 8725 5450
F 0 "U3" H 8725 5450 50  0000 C CNN
F 1 "74HC86" H 8700 5225 50  0001 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8725 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 8725 5450 50  0001 C CNN
	4    8725 5450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U3
U 3 1 5D72705E
P 8725 5050
F 0 "U3" H 8725 5050 50  0000 C CNN
F 1 "74HC86" H 8725 4825 50  0001 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8725 5050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 8725 5050 50  0001 C CNN
	3    8725 5050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U3
U 2 1 5D724B9C
P 8025 5250
F 0 "U3" H 8025 5250 50  0000 C CNN
F 1 "74HC86" H 8025 5500 50  0001 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8025 5250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 8025 5250 50  0001 C CNN
	2    8025 5250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U3
U 1 1 5D720F09
P 7425 5150
F 0 "U3" H 7425 5150 50  0000 C CNN
F 1 "74HC86" H 7425 5384 50  0001 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7425 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 7425 5150 50  0001 C CNN
	1    7425 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7625 5450 7625 5350
Wire Wire Line
	7625 5350 7725 5350
Wire Wire Line
	8325 5250 8425 5250
Wire Wire Line
	8425 5250 8425 5150
Wire Wire Line
	8425 5250 8425 5350
Connection ~ 8425 5250
$Comp
L Device:R R46
U 1 1 5D937375
P 7275 5700
F 0 "R46" V 7275 5375 50  0000 L CNN
F 1 "100k" V 7275 5600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7205 5700 50  0001 C CNN
F 3 "~" H 7275 5700 50  0001 C CNN
	1    7275 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R45
U 1 1 5D985574
P 7125 5700
F 0 "R45" V 7125 5375 50  0000 L CNN
F 1 "100k" V 7125 5600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7055 5700 50  0001 C CNN
F 3 "~" H 7125 5700 50  0001 C CNN
	1    7125 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7275 5550 7275 5450
Wire Wire Line
	6975 5550 6975 5050
Wire Wire Line
	6825 5250 7125 5250
$Comp
L Device:R R44
U 1 1 5DF424B1
P 6975 5700
F 0 "R44" V 6975 5375 50  0000 L CNN
F 1 "100k" V 6975 5600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6905 5700 50  0001 C CNN
F 3 "~" H 6975 5700 50  0001 C CNN
	1    6975 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5050 6450 5150
Wire Wire Line
	6450 5350 6450 5450
Wire Wire Line
	7125 5550 7125 5250
Wire Wire Line
	6825 5450 7275 5450
Wire Wire Line
	7275 5450 7625 5450
Connection ~ 7275 5450
Connection ~ 7125 5250
Wire Wire Line
	6825 5050 6975 5050
Wire Wire Line
	6975 5050 7125 5050
Connection ~ 6975 5050
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 5E02732A
P 6250 5250
F 0 "J4" H 6300 5450 50  0000 C CNN
F 1 "Conn_01x03_Male" H 6275 5775 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6250 5250 50  0001 C CNN
F 3 "~" H 6250 5250 50  0001 C CNN
	1    6250 5250
	1    0    0    -1  
$EndComp
Text GLabel 9025 6225 0    50   Input ~ 0
ctl_override
Text GLabel 9025 6125 0    50   Input ~ 0
saw_ctl
$Comp
L Connector:Conn_01x04_Male JP6
U 1 1 5D8F200D
P 9225 6125
F 0 "JP6" H 9325 6300 50  0000 R CNN
F 1 "ringmod config" H 9775 5875 50  0000 R CNN
F 2 "footprints:SolderDipJumper4alt" H 9225 6125 50  0001 C CNN
F 3 "~" H 9225 6125 50  0001 C CNN
	1    9225 6125
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8425 5550 8425 5800
Wire Wire Line
	8425 6325 9025 6325
$Comp
L Device:R R47
U 1 1 5E0DCE8F
P 7425 5700
F 0 "R47" V 7425 5375 50  0000 L CNN
F 1 "100k" V 7425 5600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7355 5700 50  0001 C CNN
F 3 "~" H 7425 5700 50  0001 C CNN
	1    7425 5700
	1    0    0    -1  
$EndComp
Connection ~ 8425 5550
Connection ~ 7275 5850
Wire Wire Line
	7275 5850 7425 5850
Connection ~ 7125 5850
Wire Wire Line
	7125 5850 7275 5850
Wire Wire Line
	6975 5850 7125 5850
Wire Wire Line
	7425 5550 8425 5550
$Comp
L power:GNDD #PWR029
U 1 1 5E183D97
P 7400 4500
F 0 "#PWR029" H 7400 4250 50  0001 C CNN
F 1 "GNDD" H 7375 4375 50  0000 C CNN
F 2 "" H 7400 4500 50  0001 C CNN
F 3 "" H 7400 4500 50  0001 C CNN
	1    7400 4500
	1    0    0    -1  
$EndComp
Connection ~ 7400 4500
$Comp
L power:+5V #PWR028
U 1 1 5E1D5BED
P 6850 5850
F 0 "#PWR028" H 6850 5700 50  0001 C CNN
F 1 "+5V" H 6825 6000 50  0000 C CNN
F 2 "" H 6850 5850 50  0001 C CNN
F 3 "" H 6850 5850 50  0001 C CNN
	1    6850 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5850 6975 5850
Connection ~ 6975 5850
Text Notes 6375 5650 0    50   ~ 0
TODO:\nor 1k?
Text GLabel 9025 5050 2    50   Input ~ 0
rmpulse
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J3
U 1 1 5E380527
P 9700 3600
F 0 "J3" H 9675 4050 50  0000 C CNN
F 1 "signal out" V 9750 3600 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x07_P2.54mm_Vertical" H 9700 3600 50  0001 C CNN
F 3 "~" H 9700 3600 50  0001 C CNN
	1    9700 3600
	1    0    0    -1  
$EndComp
Text GLabel 9500 3400 0    50   Input ~ 0
rmpulse
$Comp
L Device:C C11
U 1 1 5E406B46
P 10150 3800
F 0 "C11" V 10100 3700 50  0000 C CNN
F 1 "100n" V 10100 3950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10188 3650 50  0001 C CNN
F 3 "~" H 10150 3800 50  0001 C CNN
	1    10150 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	10300 3800 10750 3800
Text GLabel 10750 3400 2    50   Input ~ 0
rmpulse
$Comp
L Transistor_BJT:BC327 Q6
U 1 1 5E4891B8
P 9525 5450
F 0 "Q6" H 9450 5275 50  0000 L CNN
F 1 "BC327" H 9350 5625 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9725 5375 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC327-D.PDF" H 9525 5450 50  0001 L CNN
	1    9525 5450
	1    0    0    1   
$EndComp
Wire Wire Line
	9625 5650 9625 5725
Wire Wire Line
	9625 5725 9025 5725
Wire Wire Line
	9025 5725 9025 6025
Wire Wire Line
	9625 5725 9625 5800
Connection ~ 9625 5725
$Comp
L Device:R R51
U 1 1 5E4AF968
P 9625 5950
F 0 "R51" H 9700 5950 50  0000 L CNN
F 1 "10k" V 9625 5875 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9555 5950 50  0001 C CNN
F 3 "~" H 9625 5950 50  0001 C CNN
	1    9625 5950
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR030
U 1 1 5E4C09F3
P 9625 5250
F 0 "#PWR030" H 9625 5100 50  0001 C CNN
F 1 "VCC" H 9642 5423 50  0000 C CNN
F 2 "" H 9625 5250 50  0001 C CNN
F 3 "" H 9625 5250 50  0001 C CNN
	1    9625 5250
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR031
U 1 1 5E4C205B
P 9625 6100
F 0 "#PWR031" H 9625 5950 50  0001 C CNN
F 1 "VEE" H 9643 6273 50  0000 C CNN
F 2 "" H 9625 6100 50  0001 C CNN
F 3 "" H 9625 6100 50  0001 C CNN
	1    9625 6100
	-1   0    0    1   
$EndComp
Text Notes 9875 6325 1    50   ~ 0
shift the 0/5V levels up to Vcc / Vee\nlevels. Q5 wants to be driven with these
Wire Notes Line
	6200 6500 9925 6500
Wire Notes Line
	9925 6500 9925 4225
Wire Notes Line
	6200 4225 6200 6500
Wire Notes Line
	6200 4225 9925 4225
$Comp
L Device:R R41
U 1 1 5E576FD2
P 6675 5050
F 0 "R41" V 6625 5150 50  0000 L CNN
F 1 "10k" V 6675 4975 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6605 5050 50  0001 C CNN
F 3 "~" H 6675 5050 50  0001 C CNN
	1    6675 5050
	0    1    1    0   
$EndComp
Text Notes 525  1800 0    50   ~ 0
Optional components:\n\nRossum compensation: can be left out, you must close JP1 then.\n    Effect: No precise 1V/oct tuning possible (stable, but non-linear\n           frequency response; requires digital compensation)\n\nSawtooth gen / dig.ring.mod.: can be left out, you must connect JP5's pin2+3. \n    Effect: No ring modulation features. Sawtooth still works.\n\nWaveform generation: can be left out (together with saw gen (above))\n    Effect: Only the triangle and square_ctl waves are available.\n\nTriangle center poti: R27-R29 can be left out. Equip R30 as 0 Ohm\n        instead.\n    Effect: Uncentered (raw) triangle. No effect if JP5 is not closed.\n   
$Comp
L power:GNDD #PWR038
U 1 1 5E7FD69F
P 9925 1225
F 0 "#PWR038" H 9925 975 50  0001 C CNN
F 1 "GNDD" H 9975 1100 50  0000 C CNN
F 2 "" H 9925 1225 50  0001 C CNN
F 3 "" H 9925 1225 50  0001 C CNN
	1    9925 1225
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J1
U 1 1 5E7E7ACB
P 9500 1225
F 0 "J1" H 9550 1542 50  0000 C CNN
F 1 "power supply" H 9700 1000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 9500 1225 50  0001 C CNN
F 3 "~" H 9500 1225 50  0001 C CNN
	1    9500 1225
	1    0    0    -1  
$EndComp
NoConn ~ 9800 1325
Wire Wire Line
	9800 1225 9925 1225
Text Notes 9050 1875 0    50   ~ 0
GNDREF and GNDD may be\nconnected, but this might have\na negative impact on the\nfrequency stability.
Text Notes 2875 5675 0    50   ~ 0
or 470n
Wire Wire Line
	5675 5200 2875 5200
$Comp
L Device:R R34
U 1 1 5D53B3BE
P 3550 5825
F 0 "R34" H 3425 5975 50  0000 L CNN
F 1 "none" V 3550 5725 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3480 5825 50  0001 C CNN
F 3 "~" H 3550 5825 50  0001 C CNN
	1    3550 5825
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR024
U 1 1 5D54168D
P 3550 5975
F 0 "#PWR024" H 3550 5725 50  0001 C CNN
F 1 "GNDREF" H 3555 5802 50  0001 C CNN
F 2 "" H 3550 5975 50  0001 C CNN
F 3 "" H 3550 5975 50  0001 C CNN
	1    3550 5975
	-1   0    0    -1  
$EndComp
Text Notes 3075 6000 0    25   ~ 0
do not equip R34.\n10-100k are fine,\nbut R37+Q5 are\nenough for our\npurpose.
$Comp
L Device:C C5
U 1 1 5D49B6B5
P 3225 5600
F 0 "C5" V 3275 5700 50  0000 C CNN
F 1 "100n" V 3175 5475 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3263 5450 50  0001 C CNN
F 3 "~" H 3225 5600 50  0001 C CNN
	1    3225 5600
	0    1    1    0   
$EndComp
Text Notes 2800 5175 0    25   ~ 0
remove the DC offset. This doesn't matter for normal\noperation, but for DCO operation, where R27-R31 have\nno effect and thus, the signal is not centered.
Text Notes 5300 7475 0    50   ~ 0
For another interesting square wave\nvariation, connect ctl_override (JP6,\npin 3) to J4. Then play around with\nthe PWM voltage and watch rmpulse.\n\nApply narrow periodic pull-to-GND\npulse to U2's pin5 (J6) for soft sync.
Wire Notes Line
	6075 6625 3650 6625
Wire Notes Line
	3650 6625 3650 4725
Wire Notes Line
	3650 4725 6075 4725
Wire Wire Line
	4125 5075 4125 5500
Wire Wire Line
	2875 5200 2875 5500
$Comp
L Jumper:Jumper_2_Open JP5
U 1 1 5D692292
P 3225 5400
F 0 "JP5" H 3050 5475 50  0000 C CNN
F 1 "Jumper_2_Open" H 3225 5544 50  0001 C CNN
F 2 "footprints:SolderDipJumper2alt" H 3225 5400 50  0001 C CNN
F 3 "~" H 3225 5400 50  0001 C CNN
	1    3225 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3075 5600 2975 5600
Wire Wire Line
	2975 5600 2975 5500
Wire Wire Line
	2975 5400 3025 5400
Wire Wire Line
	3425 5400 3475 5400
Wire Wire Line
	3475 5400 3475 5500
Wire Wire Line
	3475 5600 3375 5600
Wire Wire Line
	3475 5600 3550 5600
Wire Wire Line
	3550 5600 3550 5675
Connection ~ 3475 5600
Wire Wire Line
	2975 5500 2875 5500
Connection ~ 2975 5500
Wire Wire Line
	2975 5500 2975 5400
Connection ~ 2875 5500
Wire Wire Line
	2875 5500 2875 6300
Wire Wire Line
	3475 5500 4125 5500
Connection ~ 3475 5500
Wire Wire Line
	3475 5500 3475 5600
Connection ~ 4125 5500
Wire Wire Line
	4125 5500 4125 5700
Wire Wire Line
	3975 3625 3700 3625
Wire Wire Line
	3975 3625 3975 4050
Wire Wire Line
	3975 3200 3800 3200
Wire Wire Line
	3975 2125 3975 3200
Connection ~ 3800 3200
$Comp
L Connector:Conn_01x01_Male J6
U 1 1 5D4BF3A9
P 2825 6600
F 0 "J6" V 2775 6550 50  0000 L CNN
F 1 "Conn_01x01_Male" V 2978 6644 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2825 6600 50  0001 C CNN
F 3 "~" H 2825 6600 50  0001 C CNN
	1    2825 6600
	0    1    1    0   
$EndComp
Connection ~ 2825 6800
$Comp
L Device:R R49
U 1 1 5D58016A
P 8425 5950
F 0 "R49" H 8450 5800 50  0000 L CNN
F 1 "10k" V 8425 5875 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8355 5950 50  0001 C CNN
F 3 "~" H 8425 5950 50  0001 C CNN
	1    8425 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	8425 6100 8425 6325
Wire Notes Line
	1825 7450 1625 7450
Wire Notes Line
	1825 6800 1825 7450
Text Notes 1900 7225 1    20   ~ 0
originally connected to\nvar_vsource in error. (*)
Text Notes 10500 3275 0    50   ~ 0
todo: maybe 47n?
$Comp
L Amplifier_Operational:LM324 U2
U 3 1 5D62893A
P 4975 4975
F 0 "U2" H 5075 4825 50  0000 C CNN
F 1 "LM324" H 4950 4975 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4925 5075 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 5025 5175 50  0001 C CNN
	3    4975 4975
	1    0    0    1   
$EndComp
Text Notes 4650 2600 0    50   ~ 0
TODO: test 1n
$Comp
L Device:R R1
U 1 1 5D73F6A7
P 825 3200
F 0 "R1" H 650 3200 50  0000 L CNN
F 1 "1Meg" V 825 3100 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 755 3200 50  0001 C CNN
F 3 "~" H 825 3200 50  0001 C CNN
	1    825  3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5D7480C4
P 825 3800
F 0 "R3" H 650 3800 50  0000 L CNN
F 1 "1Meg" V 825 3700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 755 3800 50  0001 C CNN
F 3 "~" H 825 3800 50  0001 C CNN
	1    825  3800
	1    0    0    -1  
$EndComp
Text Notes 675  3750 1    25   ~ 0
2x 1Meg for Q4 compensation\nless (possibly 0 Ohm) for other\npurposes
Text Notes 5500 1625 0    50   ~ 0
1Meg
Text Notes 7225 1250 0    50   ~ 0
111k
Text Notes 7875 2325 0    50   ~ 0
Rs that can scale together:\nx: R16, x: R21, 1/x: R14\nTODO test!
Text Notes 3525 3400 0    50   ~ 0
10k
$Comp
L Device:R R48
U 1 1 5D91B055
P 8250 4950
F 0 "R48" V 8150 4900 50  0000 L CNN
F 1 "10k" V 8250 4875 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8180 4950 50  0001 C CNN
F 3 "~" H 8250 4950 50  0001 C CNN
	1    8250 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	1925 7500 2000 7500
Wire Wire Line
	1925 7250 1925 7500
Connection ~ 2000 7500
Wire Wire Line
	2825 6800 2825 6925
Wire Wire Line
	2425 6925 2450 6925
Wire Wire Line
	2775 6925 2825 6925
Connection ~ 2825 6925
Wire Wire Line
	2825 6925 2825 7250
$Comp
L Device:R R30
U 1 1 5D5E77C1
P 2450 7075
F 0 "R30" V 2350 7125 50  0000 C CNN
F 1 "none" V 2450 7075 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2380 7075 50  0001 C CNN
F 3 "~" H 2450 7075 50  0001 C CNN
	1    2450 7075
	-1   0    0    1   
$EndComp
Connection ~ 2450 6925
Wire Wire Line
	2450 6925 2475 6925
$Comp
L power:GNDREF #PWR019
U 1 1 5D5E8B33
P 2450 7225
F 0 "#PWR019" H 2450 6975 50  0001 C CNN
F 1 "GNDREF" H 2455 7052 50  0001 C CNN
F 2 "" H 2450 7225 50  0001 C CNN
F 3 "" H 2450 7225 50  0001 C CNN
	1    2450 7225
	1    0    0    -1  
$EndComp
Wire Notes Line
	2775 6400 2275 6400
Wire Notes Line
	2125 6550 2125 7425
Wire Notes Line
	2125 7425 2775 7425
Wire Notes Line
	2775 6400 2775 7425
Wire Notes Line
	2275 6400 2125 6550
Wire Notes Line
	2950 7525 2775 7425
Wire Notes Line
	5075 7750 5075 7075
Wire Notes Line
	5075 7075 3575 7075
Wire Notes Line
	3575 7075 3575 7750
Text Notes 1050 7500 1    25   ~ 0
Note (*): R26 was connected to var_vsource at first.\n(in error). Connecting R26 to GND and Q4 to\nvar_vsource at nearly the same potential \ndifference < 0.1mV) led to very good tracking\nresults. Maybe the tracking accuracy is not a\ncalibration issue, but an opamp overload situation.
$Comp
L Device:R R9
U 1 1 5D4A8D8A
P 2450 2550
F 0 "R9" H 2520 2596 50  0000 L CNN
F 1 "150" V 2450 2475 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2380 2550 50  0001 C CNN
F 3 "~" H 2450 2550 50  0001 C CNN
	1    2450 2550
	1    0    0    -1  
$EndComp
Connection ~ 5675 4975
Wire Wire Line
	8425 4950 8400 4950
Wire Wire Line
	8100 4950 6350 4950
Wire Wire Line
	6350 4950 6350 4975
Wire Wire Line
	5675 4975 6350 4975
$EndSCHEMATC
