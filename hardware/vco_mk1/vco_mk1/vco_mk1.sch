EESchema Schematic File Version 4
LIBS:vco_mk1-cache
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
L power:GNDREF #PWR022
U 1 1 5CF229F9
P 1825 6700
F 0 "#PWR022" H 1825 6450 50  0001 C CNN
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
Text GLabel 5675 5250 2    50   Input ~ 0
triangle
$Comp
L Device:R R30
U 1 1 5CF3873D
P 3075 7250
F 0 "R30" V 2975 7250 50  0000 C CNN
F 1 "100k" V 3075 7250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3005 7250 50  0001 C CNN
F 3 "~" H 3075 7250 50  0001 C CNN
	1    3075 7250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5675 5250 4125 5250
Wire Wire Line
	2375 7400 3475 7400
Wire Wire Line
	3475 7400 3475 7250
Wire Wire Line
	3475 7250 3475 6700
Connection ~ 3475 7250
Wire Wire Line
	3225 7250 3475 7250
Wire Wire Line
	2825 7250 2925 7250
Wire Wire Line
	2875 6800 2825 6800
Wire Wire Line
	2825 6800 2825 6850
$Comp
L power:VCC #PWR026
U 1 1 5CF357C9
P 3075 7050
F 0 "#PWR026" H 3075 6900 50  0001 C CNN
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
L Device:R R33
U 1 1 5CF81086
P 4425 5900
F 0 "R33" V 4325 5900 50  0000 C CNN
F 1 "100k" V 4425 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4355 5900 50  0001 C CNN
F 3 "~" H 4425 5900 50  0001 C CNN
	1    4425 5900
	0    1    -1   0   
$EndComp
Text GLabel 5675 5800 2    50   Input ~ 0
sawtooth
Wire Wire Line
	4125 5700 4125 5250
Connection ~ 4125 5250
Wire Wire Line
	4125 5250 2875 5250
$Comp
L Device:R R32
U 1 1 5CF775B1
P 4425 5700
F 0 "R32" V 4325 5700 50  0000 C CNN
F 1 "100k" V 4425 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4355 5700 50  0001 C CNN
F 3 "~" H 4425 5700 50  0001 C CNN
	1    4425 5700
	0    -1   1    0   
$EndComp
$Comp
L Device:R R34
U 1 1 5CF782B8
P 5000 5450
F 0 "R34" V 4900 5450 50  0000 C CNN
F 1 "100k" V 5000 5450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4930 5450 50  0001 C CNN
F 3 "~" H 5000 5450 50  0001 C CNN
	1    5000 5450
	0    -1   1    0   
$EndComp
Connection ~ 2875 6300
Wire Wire Line
	2875 5250 2875 6300
$Comp
L Device:R R31
U 1 1 5CF9A0F2
P 4175 6250
F 0 "R31" V 4275 6250 50  0000 C CNN
F 1 "10k" V 4175 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4105 6250 50  0001 C CNN
F 3 "~" H 4175 6250 50  0001 C CNN
	1    4175 6250
	0    1    1    0   
$EndComp
Text Notes 3575 8425 0    50   ~ 0
If R8 was connected to GNDREF, the triangle would be\ncentered around GNDREF, but only if the output of the\ncomparator U3 would swing between Vcc and Vee.\nHowever, U3 swings between less-than-Vcc and\nexactly Vee, so the triangle isn't centered.\nR14 and R15 comprise a poti to compensate for that.
Wire Wire Line
	4675 5075 4125 5075
Wire Wire Line
	4125 5075 4125 5250
Text GLabel 1025 4875 0    50   Input ~ 0
V_pwm
Wire Wire Line
	4675 4875 1025 4875
Text GLabel 5750 4625 2    50   Input ~ 0
pulse
Wire Wire Line
	5675 4975 5275 4975
Text Notes 5650 6825 0    50   ~ 0
do not use
$Comp
L Device:R R24
U 1 1 5D41CBA2
P 1825 6550
F 0 "R24" V 1725 6550 50  0000 C CNN
F 1 "47k" V 1825 6550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1755 6550 50  0001 C CNN
F 3 "~" H 1825 6550 50  0001 C CNN
	1    1825 6550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R21
U 1 1 5CF2012A
P 1375 6400
F 0 "R21" V 1475 6400 50  0000 C CNN
F 1 "47k" V 1375 6400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1305 6400 50  0001 C CNN
F 3 "~" H 1375 6400 50  0001 C CNN
	1    1375 6400
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 5CF1806F
P 1375 6200
F 0 "R20" V 1275 6200 50  0000 C CNN
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
U 3 1 5D62893A
P 4975 4975
F 0 "U2" H 5050 5150 50  0000 C CNN
F 1 "LM324" H 4950 4975 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4925 5075 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 5025 5175 50  0001 C CNN
	3    4975 4975
	1    0    0    -1  
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
L power:VEE #PWR025
U 1 1 5CF354CF
P 3075 6350
F 0 "#PWR025" H 3075 6200 50  0001 C CNN
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
	9550 4175 9800 4175
$Comp
L power:GNDREF #PWR034
U 1 1 5DB5E6E3
P 9800 4175
F 0 "#PWR034" H 9800 3925 50  0001 C CNN
F 1 "GNDREF" H 10000 4100 50  0000 C CNN
F 2 "" H 9800 4175 50  0001 C CNN
F 3 "" H 9800 4175 50  0001 C CNN
	1    9800 4175
	1    0    0    -1  
$EndComp
Connection ~ 9800 4175
Wire Wire Line
	9800 4175 10050 4175
$Comp
L Device:C C8
U 1 1 5DB8DA7E
P 2225 5950
F 0 "C8" V 2150 5850 50  0000 C CNN
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
L Device:R R22
U 1 1 5D41CBA4
P 1625 6600
F 0 "R22" H 1750 6600 50  0000 C CNN
F 1 "47k" V 1625 6600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1555 6600 50  0001 C CNN
F 3 "~" H 1625 6600 50  0001 C CNN
	1    1625 6600
	-1   0    0    1   
$EndComp
Wire Notes Line
	3450 5750 675  5750
Text Notes 3550 6575 0    50   ~ 0
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
L Device:C_Small C10
U 1 1 5D5CE3BE
P 3225 7025
F 0 "C10" V 3175 7100 50  0000 C CNN
F 1 "100n" V 3100 7025 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3225 7025 50  0001 C CNN
F 3 "~" H 3225 7025 50  0001 C CNN
	1    3225 7025
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR028
U 1 1 5D5CFA42
P 3325 7025
F 0 "#PWR028" H 3325 6775 50  0001 C CNN
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
L Device:C_Small C9
U 1 1 5D5E8697
P 3225 6375
F 0 "C9" V 3175 6450 50  0000 C CNN
F 1 "100n" V 3100 6375 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3225 6375 50  0001 C CNN
F 3 "~" H 3225 6375 50  0001 C CNN
	1    3225 6375
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR027
U 1 1 5D5E869D
P 3325 6375
F 0 "#PWR027" H 3325 6125 50  0001 C CNN
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
Text Notes 3525 6175 0    50   ~ 0
Q5 cannot be\nreplaced by a \nmosfet due to\nthe parasitic\ndiode inside a\nFET. Do replace\nit for some\ncrunchy wave-\nshaping, though.
$Comp
L Device:R R27
U 1 1 5D9107CB
P 2450 6600
F 0 "R27" V 2550 6600 50  0000 C CNN
F 1 "10k" V 2450 6600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2380 6600 50  0001 C CNN
F 3 "~" H 2450 6600 50  0001 C CNN
	1    2450 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R28
U 1 1 5D910D8F
P 2450 7100
F 0 "R28" V 2550 7100 50  0000 C CNN
F 1 "10k" V 2450 7100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2380 7100 50  0001 C CNN
F 3 "~" H 2450 7100 50  0001 C CNN
	1    2450 7100
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT R26
U 1 1 5D911866
P 2300 6850
F 0 "R26" V 2185 6850 50  0000 C CNN
F 1 "20k" V 2300 6850 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 2300 6850 50  0001 C CNN
F 3 "~" H 2300 6850 50  0001 C CNN
	1    2300 6850
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR024
U 1 1 5D92BF20
P 2600 7100
F 0 "#PWR024" H 2600 6950 50  0001 C CNN
F 1 "VEE" H 2618 7273 50  0000 C CNN
F 2 "" H 2600 7100 50  0001 C CNN
F 3 "" H 2600 7100 50  0001 C CNN
	1    2600 7100
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR023
U 1 1 5D931D60
P 2600 6600
F 0 "#PWR023" H 2600 6450 50  0001 C CNN
F 1 "VCC" H 2617 6773 50  0000 C CNN
F 2 "" H 2600 6600 50  0001 C CNN
F 3 "" H 2600 6600 50  0001 C CNN
	1    2600 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R29
U 1 1 5D95EF15
P 2600 6850
F 0 "R29" V 2675 6750 50  0000 L CNN
F 1 "1Meg" V 2525 6800 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" V 2530 6850 50  0001 C CNN
F 3 "~" H 2600 6850 50  0001 C CNN
	1    2600 6850
	0    1    -1   0   
$EndComp
Wire Notes Line
	675  7750 3450 7750
Text Notes 700  7725 0    50   ~ 0
vco core
$Comp
L Device:RTRIM R23
U 1 1 5DC20550
P 1625 6900
F 0 "R23" H 1400 6950 50  0000 L CNN
F 1 "10k" H 1400 6850 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" V 1555 6900 50  0001 C CNN
F 3 "~" H 1625 6900 50  0001 C CNN
	1    1625 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 7400 2075 7400
Wire Wire Line
	2000 7350 2000 7400
Text GLabel 2000 7350 1    50   Input ~ 0
ctl_override
Connection ~ 2000 7400
Wire Wire Line
	1925 7400 2000 7400
Wire Wire Line
	1925 7250 1925 7400
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
L Device:R R25
U 1 1 5CF3A8E6
P 2225 7400
F 0 "R25" V 2125 7400 50  0000 C CNN
F 1 "10k" V 2225 7400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2155 7400 50  0001 C CNN
F 3 "~" H 2225 7400 50  0001 C CNN
	1    2225 7400
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR021
U 1 1 5D41CBAA
P 1250 7500
F 0 "#PWR021" H 1250 7250 50  0001 C CNN
F 1 "GNDREF" H 1255 7327 50  0001 C CNN
F 2 "" H 1250 7500 50  0001 C CNN
F 3 "" H 1250 7500 50  0001 C CNN
	1    1250 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 6600 2300 6700
Wire Wire Line
	2300 7100 2300 7000
Wire Wire Line
	2750 6850 2825 6850
Connection ~ 2825 6850
Wire Wire Line
	2825 6850 2825 7250
Wire Notes Line
	2750 6375 2400 6375
Wire Notes Line
	2750 7325 2400 7325
Wire Notes Line
	2750 6375 2750 7325
Wire Notes Line
	2400 7325 2100 7025
Wire Notes Line
	2400 6375 2100 6675
Wire Notes Line
	2100 6675 2100 7025
Wire Notes Line
	2750 7325 2950 7525
Text Notes 3600 7725 0    50   ~ 0
Just a hacky way of applying an\nadjustable voltage with an adjustable\ninner resistance. Replace R?+R?+R?\nby a 100-200k trimmer and leave\nout R? completely if you want.\nOr just spare everything and connect\nthe (+) pin to GNDREF.\nThis will cause a slightly off-center\ntriangle wave and a shifted sawtooth,\nat least with the LM324.
Wire Notes Line
	3575 6900 5075 6900
Wire Notes Line
	5075 6900 5075 7750
Wire Notes Line
	5075 7750 3575 7750
Wire Notes Line
	3575 6900 3575 7750
$Comp
L power:GNDREF #PWR029
U 1 1 5CF85DC5
P 4625 6500
F 0 "#PWR029" H 4625 6250 50  0001 C CNN
F 1 "GNDREF" H 4630 6327 50  0001 C CNN
F 2 "" H 4625 6500 50  0001 C CNN
F 3 "" H 4625 6500 50  0001 C CNN
	1    4625 6500
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R36
U 1 1 5DF3EC09
P 5675 4825
F 0 "R36" H 5745 4871 50  0000 L CNN
F 1 "2.2k" V 5675 4750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5605 4825 50  0001 C CNN
F 3 "~" H 5675 4825 50  0001 C CNN
	1    5675 4825
	1    0    0    -1  
$EndComp
$Comp
L Device:R R35
U 1 1 5DF4601A
P 5675 4425
F 0 "R35" H 5745 4471 50  0000 L CNN
F 1 "1k" V 5675 4375 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5605 4425 50  0001 C CNN
F 3 "~" H 5675 4425 50  0001 C CNN
	1    5675 4425
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR030
U 1 1 5DF46B76
P 5525 4275
F 0 "#PWR030" H 5525 4025 50  0001 C CNN
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
Text Notes 5875 4400 0    50   ~ 0
to put the pulse signal roughly at the same level as the others\n(ca. 3V peak-peak. others can range from 1.5V to ca. 7V)
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
	3500 6625 3500 4725
Wire Notes Line
	3500 4725 6075 4725
Wire Notes Line
	3500 6625 6075 6625
Wire Notes Line
	2950 7525 3575 7525
Wire Notes Line
	675  5750 675  7750
Wire Notes Line
	3450 5750 3450 7750
Text Notes 875  4600 0    50   ~ 0
R3 * C1 should be 100µs, this affects the frequency range\nR3 : R5 must be 2:1, this affects the triangle shape\nR4 : R6 must be 1:1, this affects the triangle shape\nR8 : R9 should be 1:2, this affects the triangle amplitude and\nfrequency range. If R9 is too large, this may cause distortion\nR11 : R12 should be 1:1, this affects sawtooth amplitude
Text GLabel 10600 1325 2    50   Input ~ 0
V_tune
$Comp
L Device:R_POT R42
U 1 1 5D47F832
P 10450 1325
F 0 "R42" H 10381 1371 50  0000 R CNN
F 1 "TODO" V 10450 1425 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 10450 1325 50  0001 C CNN
F 3 "~" H 10450 1325 50  0001 C CNN
	1    10450 1325
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR036
U 1 1 5D480B46
P 10450 1475
F 0 "#PWR036" H 10450 1325 50  0001 C CNN
F 1 "VEE" H 10468 1648 50  0000 C CNN
F 2 "" H 10450 1475 50  0001 C CNN
F 3 "" H 10450 1475 50  0001 C CNN
	1    10450 1475
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR035
U 1 1 5D4820BF
P 10450 1175
F 0 "#PWR035" H 10450 1025 50  0001 C CNN
F 1 "VCC" H 10467 1348 50  0000 C CNN
F 2 "" H 10450 1175 50  0001 C CNN
F 3 "" H 10450 1175 50  0001 C CNN
	1    10450 1175
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
	3675 2425 3800 2425
Wire Wire Line
	3275 2425 3125 2425
Text Notes 650  1850 3    50   ~ 0
ca 290mV/oct
Text Notes 6750 900  0    50   ~ 0
adjustable offset can be achieved by running a wire\nfrom the gnd adjust jumper to V_lin_pitchmod_3\n(TODO: set the resistor value accordingly)
Connection ~ 1650 1775
Connection ~ 1450 1775
Wire Wire Line
	1450 1775 1650 1775
Wire Wire Line
	1650 1775 1650 2025
Wire Wire Line
	1450 1975 1450 2075
Wire Wire Line
	1450 2075 1450 2175
Connection ~ 1450 2075
Connection ~ 1450 1975
Connection ~ 1450 1875
Wire Wire Line
	1450 1875 1450 1975
Wire Wire Line
	1450 1775 1450 1875
Wire Wire Line
	1150 1775 1450 1775
Text GLabel 1150 1775 0    50   Input ~ 0
V_control_raw
Text GLabel 1150 1875 0    50   Input ~ 0
V_control
$Comp
L Device:R R2
U 1 1 5E1A1AC9
P 1300 1875
F 0 "R2" V 1300 2100 50  0000 C CNN
F 1 "147k" V 1300 1875 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1230 1875 50  0001 C CNN
F 3 "~" H 1300 1875 50  0001 C CNN
	1    1300 1875
	0    1    1    0   
$EndComp
Text GLabel 1150 1975 0    50   Input ~ 0
V_control_2
$Comp
L Device:R R3
U 1 1 5E193690
P 1300 1975
F 0 "R3" V 1300 2200 50  0000 C CNN
F 1 "147k" V 1300 1975 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1230 1975 50  0001 C CNN
F 3 "~" H 1300 1975 50  0001 C CNN
	1    1300 1975
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
L Device:R R16
U 1 1 5E131D96
P 6450 1575
F 0 "R16" V 6450 1250 50  0000 L CNN
F 1 "TODO" V 6450 1475 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6380 1575 50  0001 C CNN
F 3 "~" H 6450 1575 50  0001 C CNN
	1    6450 1575
	1    0    0    -1  
$EndComp
Connection ~ 1575 3325
Wire Wire Line
	1700 3325 1575 3325
Wire Wire Line
	1700 3375 1700 3325
Text GLabel 1700 3375 3    50   Input ~ 0
var_vsource
$Comp
L power:VCC #PWR01
U 1 1 5E0402DF
P 825 3075
F 0 "#PWR01" H 825 2925 50  0001 C CNN
F 1 "VCC" H 725 3150 50  0000 C CNN
F 2 "" H 825 3075 50  0001 C CNN
F 3 "" H 825 3075 50  0001 C CNN
	1    825  3075
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR02
U 1 1 5E03FE83
P 825 3375
F 0 "#PWR02" H 825 3225 50  0001 C CNN
F 1 "VEE" H 925 3450 50  0000 C CNN
F 2 "" H 825 3375 50  0001 C CNN
F 3 "" H 825 3375 50  0001 C CNN
	1    825  3375
	-1   0    0    1   
$EndComp
Wire Wire Line
	975  3850 975  3425
Wire Wire Line
	1575 3850 975  3850
Wire Wire Line
	1575 3325 1575 3850
$Comp
L Device:R_POT_TRIM R1
U 1 1 5E01D2A0
P 825 3225
F 0 "R1" H 750 3225 50  0000 R CNN
F 1 "10k" V 825 3300 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 825 3225 50  0001 C CNN
F 3 "~" H 825 3225 50  0001 C CNN
	1    825  3225
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R19
U 1 1 5DEA3137
P 7350 1475
F 0 "R19" V 7525 1425 50  0000 C CNN
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
	1175 3000 1175 3025
Connection ~ 1175 3000
Wire Wire Line
	1175 3000 1225 3000
Wire Wire Line
	1175 2975 1175 3000
Wire Wire Line
	1175 3650 1175 3675
Connection ~ 1175 3650
Wire Wire Line
	1175 3650 1225 3650
Wire Wire Line
	1175 3625 1175 3650
$Comp
L power:GNDREF #PWR06
U 1 1 5D63C631
P 1425 3650
F 0 "#PWR06" H 1425 3400 50  0001 C CNN
F 1 "GNDREF" H 1430 3477 50  0001 C CNN
F 2 "" H 1425 3650 50  0001 C CNN
F 3 "" H 1425 3650 50  0001 C CNN
	1    1425 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5D63C62B
P 1325 3650
F 0 "C2" V 1275 3725 50  0000 C CNN
F 1 "100n" V 1200 3650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1325 3650 50  0001 C CNN
F 3 "~" H 1325 3650 50  0001 C CNN
	1    1325 3650
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR05
U 1 1 5D63109B
P 1425 3000
F 0 "#PWR05" H 1425 2750 50  0001 C CNN
F 1 "GNDREF" H 1430 2827 50  0001 C CNN
F 2 "" H 1425 3000 50  0001 C CNN
F 3 "" H 1425 3000 50  0001 C CNN
	1    1425 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5D631095
P 1325 3000
F 0 "C1" V 1275 3075 50  0000 C CNN
F 1 "100n" V 1200 3000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1325 3000 50  0001 C CNN
F 3 "~" H 1325 3000 50  0001 C CNN
	1    1325 3000
	0    1    1    0   
$EndComp
Text GLabel 6275 1425 1    50   Input ~ 0
V_lin_pitchmod_raw
Wire Wire Line
	6550 1725 6650 1725
Connection ~ 6550 1725
$Comp
L Device:R R17
U 1 1 5E17FED4
P 6550 1575
F 0 "R17" V 6550 1250 50  0000 L CNN
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
L Device:R R18
U 1 1 5E17C2C3
P 6650 1575
F 0 "R18" V 6650 1250 50  0000 L CNN
F 1 "TODO" V 6650 1475 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6580 1575 50  0001 C CNN
F 3 "~" H 6650 1575 50  0001 C CNN
	1    6650 1575
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2425 3800 2925
Wire Wire Line
	3125 2425 3125 2800
Wire Wire Line
	4125 4050 3975 4050
Wire Wire Line
	3800 2925 3975 2925
Connection ~ 3800 2925
Wire Wire Line
	3125 2800 3250 2800
Connection ~ 3125 2800
$Comp
L Jumper:Jumper_2_Open JP1
U 1 1 5E0BADDE
P 3475 2425
F 0 "JP1" H 3300 2475 50  0000 C CNN
F 1 "Rossum override" H 3475 2550 50  0000 C CNN
F 2 "footprints:SolderDipJumper2alt" H 3475 2425 50  0001 C CNN
F 3 "~" H 3475 2425 50  0001 C CNN
	1    3475 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	2175 1775 2450 1775
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
P 1275 3325
F 0 "U1" H 1450 3925 50  0001 L CNN
F 1 "LM324" H 1250 4075 50  0001 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1225 3425 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1325 3525 50  0001 C CNN
	5    1275 3325
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 4 1 5D5ED4E4
P 1275 3325
F 0 "U1" H 1350 3475 50  0000 C CNN
F 1 "LM324" H 1275 3325 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1225 3425 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1325 3525 50  0001 C CNN
	4    1275 3325
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 3 1 5D5EBF6F
P 7350 1825
F 0 "U1" H 7450 1675 50  0000 C CNN
F 1 "LM324" H 7325 1825 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7300 1925 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 7400 2025 50  0001 C CNN
	3    7350 1825
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
P 2050 2125
F 0 "U1" H 2150 1975 50  0000 C CNN
F 1 "LM324" H 2025 2125 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2000 2225 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 2100 2325 50  0001 C CNN
	1    2050 2125
	1    0    0    1   
$EndComp
Text GLabel 1150 2075 0    50   Input ~ 0
V_control_3
Wire Wire Line
	2350 2125 2450 2125
Connection ~ 2450 2125
$Comp
L power:GNDREF #PWR07
U 1 1 5D04FEE6
P 1600 2375
F 0 "#PWR07" H 1600 2125 50  0001 C CNN
F 1 "GNDREF" H 1605 2202 50  0000 C CNN
F 2 "" H 1600 2375 50  0001 C CNN
F 3 "" H 1600 2375 50  0001 C CNN
	1    1600 2375
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2375 1600 2225
Wire Wire Line
	1600 2225 1750 2225
Wire Wire Line
	1650 2025 1750 2025
Wire Wire Line
	1650 1775 1875 1775
Wire Wire Line
	2450 1775 2450 2125
$Comp
L Device:R R5
U 1 1 5D41CBC2
P 1300 2175
F 0 "R5" V 1300 2400 50  0000 C CNN
F 1 "220k" V 1300 2175 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1230 2175 50  0001 C CNN
F 3 "~" H 1300 2175 50  0001 C CNN
	1    1300 2175
	0    1    1    0   
$EndComp
Text GLabel 1150 2175 0    50   Input ~ 0
V_tune
$Comp
L Device:R R6
U 1 1 5D054E64
P 2025 1775
F 0 "R6" V 2125 1825 50  0000 R CNN
F 1 "12k2" V 2025 1875 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1955 1775 50  0001 C CNN
F 3 "~" H 2025 1775 50  0001 C CNN
	1    2025 1775
	0    -1   -1   0   
$EndComp
Text Notes 3950 1050 0    50   ~ 0
R16 determines the I_C current through\nQ4 when Q4's base is at GNDREF.\nTogether with V_tune, it determines the pitch.\nChoose R16 and V_tune such, that U8's output needs\nto be at around GNDREF for "sane" pitches.
Text Notes 5975 3925 0    50   ~ 0
for Q4, the following holds true:\nI_C = const * exp(V_B / VT) with VT=26mV\n(thermal voltage of a transistor)\nnow this means that Vout will double\nevery (log(2) * 26mV) = 18mV.\n\nNote that VT is temperature dependent.\nWhen the temperature rises, VT rises and so\nthe input voltage must rise too. The thermal\ncompensation consisting of TODO does that.\n\nAdditionally, Q3 and Q4 have a bulk resistance\nbetween their ideal and actual emitters. This\ncauses the VCO's tuning to drop a bit at high\nfrequencies. The Rossum compensation compensates\nfor this by measuring the current through R17 and\nfeeding back a small amount into Q3's base.
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
F 1 "1n" V 4739 2900 50  0000 C CNN
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
P 1175 2975
F 0 "#PWR03" H 1175 2825 50  0001 C CNN
F 1 "VCC" H 1075 3050 50  0000 C CNN
F 2 "" H 1175 2975 50  0001 C CNN
F 3 "" H 1175 2975 50  0001 C CNN
	1    1175 2975
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR04
U 1 1 5CFF2176
P 1175 3675
F 0 "#PWR04" H 1175 3525 50  0001 C CNN
F 1 "VEE" H 1275 3750 50  0000 C CNN
F 2 "" H 1175 3675 50  0001 C CNN
F 3 "" H 1175 3675 50  0001 C CNN
	1    1175 3675
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 3175 4550 3175
$Comp
L Device:R R14
U 1 1 5D41CBB1
P 5450 1525
F 0 "R14" H 5520 1571 50  0000 L CNN
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
L Device:R R15
U 1 1 5D41CBAE
P 5650 2725
F 0 "R15" H 5720 2771 50  0000 L CNN
F 1 "1k" H 5720 2680 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5580 2725 50  0001 C CNN
F 3 "~" H 5650 2725 50  0001 C CNN
	1    5650 2725
	1    0    0    -1  
$EndComp
$Comp
L Device:Thermistor_NTC R7
U 1 1 5D4AB436
P 2275 2575
F 0 "R7" H 2350 2625 50  0000 L CNN
F 1 "1k" H 2350 2525 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 2275 2625 50  0001 C CNN
F 3 "~" H 2275 2625 50  0001 C CNN
	1    2275 2575
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5D4A95E2
P 2625 2575
F 0 "R10" H 2675 2625 50  0000 L CNN
F 1 "1k" V 2625 2525 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2555 2575 50  0001 C CNN
F 3 "~" H 2625 2575 50  0001 C CNN
	1    2625 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	2275 2425 2450 2425
Connection ~ 2450 2425
$Comp
L Device:R R9
U 1 1 5D4B330E
P 2450 3000
F 0 "R9" H 2520 3046 50  0000 L CNN
F 1 "2.2k" V 2450 2925 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2380 3000 50  0001 C CNN
F 3 "~" H 2450 3000 50  0001 C CNN
	1    2450 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2425 2625 2425
$Comp
L power:GNDREF #PWR08
U 1 1 5D4D9682
P 2450 3150
F 0 "#PWR08" H 2450 2900 50  0001 C CNN
F 1 "GNDREF" H 2455 2977 50  0000 C CNN
F 2 "" H 2450 3150 50  0001 C CNN
F 3 "" H 2450 3150 50  0001 C CNN
	1    2450 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2275 2725 2450 2725
Connection ~ 2450 2725
Wire Wire Line
	2450 2850 2450 2800
Connection ~ 2450 2800
Wire Wire Line
	2450 2725 2625 2725
Wire Wire Line
	2450 2800 3125 2800
Wire Wire Line
	2450 2800 2450 2725
Wire Notes Line
	2525 1975 2825 1975
Wire Notes Line
	2825 3625 2100 3625
Wire Notes Line
	2100 2400 2525 1975
Wire Notes Line
	2100 2400 2100 3625
Wire Notes Line
	2825 1975 2825 3625
Text Notes 2125 3600 0    50   ~ 0
thermal\ncompensation
$Comp
L Device:R R12
U 1 1 5D5DBBAB
P 3400 2800
F 0 "R12" V 3300 2800 50  0000 C CNN
F 1 "4.7k" V 3400 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3330 2800 50  0001 C CNN
F 3 "~" H 3400 2800 50  0001 C CNN
	1    3400 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5D5DCAB9
P 3400 3050
F 0 "R13" V 3300 3050 50  0000 C CNN
F 1 "100k" V 3400 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3330 3050 50  0001 C CNN
F 3 "~" H 3400 3050 50  0001 C CNN
	1    3400 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 4050 4525 4050
$Comp
L Device:R_POT_TRIM R11
U 1 1 5D5E850B
P 3250 3350
F 0 "R11" V 3135 3350 50  0000 C CNN
F 1 "1k" V 3250 3350 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 3250 3350 50  0001 C CNN
F 3 "~" H 3250 3350 50  0001 C CNN
	1    3250 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 3200 3250 3050
Wire Wire Line
	3100 3425 3100 3350
Wire Wire Line
	3550 3050 3550 2925
Connection ~ 3550 2925
Wire Wire Line
	3975 3350 3975 4050
Wire Wire Line
	3550 2925 3800 2925
Wire Wire Line
	3975 2925 3975 2125
Wire Wire Line
	3550 2925 3550 2800
Text Notes 3000 3825 0    50   ~ 0
Rossum\ncompensation
Wire Notes Line
	3725 2625 3725 3850
Wire Notes Line
	2950 2625 2950 3850
Wire Notes Line
	2950 2625 3725 2625
Wire Notes Line
	2950 3850 3725 3850
$Comp
L power:GNDREF #PWR09
U 1 1 5D61694C
P 3100 3425
F 0 "#PWR09" H 3100 3175 50  0001 C CNN
F 1 "GNDREF" H 3105 3252 50  0000 C CNN
F 2 "" H 3100 3425 50  0001 C CNN
F 3 "" H 3100 3425 50  0001 C CNN
	1    3100 3425
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5D054548
P 1300 2075
F 0 "R4" V 1300 2300 50  0000 C CNN
F 1 "147k" V 1300 2075 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1230 2075 50  0001 C CNN
F 3 "~" H 1300 2075 50  0001 C CNN
	1    1300 2075
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5D4A8D8A
P 2450 2275
F 0 "R8" H 2520 2321 50  0000 L CNN
F 1 "150" V 2450 2200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2380 2275 50  0001 C CNN
F 3 "~" H 2450 2275 50  0001 C CNN
	1    2450 2275
	1    0    0    -1  
$EndComp
Text Notes 4050 2650 1    50   ~ 0
ca 18mV/oct
Text Notes 2925 2800 1    50   ~ 0
ca 19mV/Oct
Text Notes 2450 1775 0    50   ~ 0
ca 24mV/oct
Text GLabel 10350 2825 2    50   Input ~ 0
V_lin_pitchmod_raw
Text GLabel 10350 2525 2    50   Input ~ 0
V_lin_pitchmod_1
Wire Wire Line
	10100 3125 10350 3125
Connection ~ 10100 3125
$Comp
L power:GNDREF #PWR018
U 1 1 5D62D6F9
P 10100 3125
F 0 "#PWR018" H 10100 2875 50  0001 C CNN
F 1 "GNDREF" H 10300 3050 50  0000 C CNN
F 2 "" H 10100 3125 50  0001 C CNN
F 3 "" H 10100 3125 50  0001 C CNN
	1    10100 3125
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 3125 10350 3025
Wire Wire Line
	9850 3125 10100 3125
Wire Wire Line
	9850 3025 9850 3125
Wire Wire Line
	10100 2325 10350 2325
Connection ~ 10100 2325
Wire Wire Line
	10100 2175 10225 2175
Wire Wire Line
	10100 2325 10100 2175
$Comp
L power:GNDREF #PWR019
U 1 1 5D61D630
P 10225 2175
F 0 "#PWR019" H 10225 1925 50  0001 C CNN
F 1 "GNDREF" H 10475 2100 50  0001 C CNN
F 2 "" H 10225 2175 50  0001 C CNN
F 3 "" H 10225 2175 50  0001 C CNN
	1    10225 2175
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 2325 10350 2425
Wire Wire Line
	9850 2325 10100 2325
Wire Wire Line
	9850 2425 9850 2325
Text GLabel 10350 2925 2    50   Input ~ 0
V_pwm
Text GLabel 10350 2725 2    50   Input ~ 0
V_lin_pitchmod_3
Text GLabel 10350 2625 2    50   Input ~ 0
V_lin_pitchmod_2
Text GLabel 9850 2825 0    50   Input ~ 0
V_control_raw
Text GLabel 9850 2725 0    50   Input ~ 0
V_control_3
Text GLabel 9850 2625 0    50   Input ~ 0
V_control_2
Text GLabel 9850 2525 0    50   Input ~ 0
V_control
Text GLabel 9850 2925 0    50   Input ~ 0
ctl_override
Wire Wire Line
	9800 3475 10050 3475
Connection ~ 9800 3475
Wire Wire Line
	9800 3325 9925 3325
Wire Wire Line
	9800 3475 9800 3325
$Comp
L power:GNDREF #PWR020
U 1 1 5DB5EE2A
P 9925 3325
F 0 "#PWR020" H 9925 3075 50  0001 C CNN
F 1 "GNDREF" H 10175 3250 50  0001 C CNN
F 2 "" H 9925 3325 50  0001 C CNN
F 3 "" H 9925 3325 50  0001 C CNN
	1    9925 3325
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 3475 10050 3575
Wire Wire Line
	9550 3475 9800 3475
Wire Wire Line
	9550 3575 9550 3475
Wire Wire Line
	10050 4175 10050 4075
Wire Wire Line
	9550 4075 9550 4175
Wire Wire Line
	10675 3975 10800 3975
Wire Wire Line
	10800 3875 10350 3875
Wire Wire Line
	10675 3775 10800 3775
Wire Wire Line
	10350 3675 10800 3675
Text GLabel 10800 3975 2    50   Input ~ 0
square_ctl
Text GLabel 10800 3875 2    50   Input ~ 0
sawtooth
Text GLabel 10800 3775 2    50   Input ~ 0
triangle
Text GLabel 10800 3675 2    50   Input ~ 0
pulse
Wire Wire Line
	10050 3975 10375 3975
Wire Wire Line
	10050 3775 10375 3775
$Comp
L Device:C C7
U 1 1 5DB28CBB
P 10525 3975
F 0 "C7" V 10475 3875 50  0000 C CNN
F 1 "100n" V 10475 4125 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10563 3825 50  0001 C CNN
F 3 "~" H 10525 3975 50  0001 C CNN
	1    10525 3975
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 5DB28933
P 10200 3875
F 0 "C5" V 10150 3775 50  0000 C CNN
F 1 "100n" V 10150 4025 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10238 3725 50  0001 C CNN
F 3 "~" H 10200 3875 50  0001 C CNN
	1    10200 3875
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 5DB283FD
P 10525 3775
F 0 "C6" V 10475 3675 50  0000 C CNN
F 1 "100n" V 10475 3925 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10563 3625 50  0001 C CNN
F 3 "~" H 10525 3775 50  0001 C CNN
	1    10525 3775
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5DB279B1
P 10200 3675
F 0 "C4" V 10150 3575 50  0000 C CNN
F 1 "100n" V 10150 3825 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10238 3525 50  0001 C CNN
F 3 "~" H 10200 3675 50  0001 C CNN
	1    10200 3675
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J3
U 1 1 5DB23DE4
P 9750 3775
F 0 "J3" H 9700 4125 50  0000 C CNN
F 1 "signal out" V 9800 3725 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 9750 3775 50  0001 C CNN
F 3 "~" H 9750 3775 50  0001 C CNN
	1    9750 3775
	1    0    0    -1  
$EndComp
Text GLabel 9550 3975 0    50   Input ~ 0
square_ctl
Text GLabel 9550 3875 0    50   Input ~ 0
sawtooth
Text GLabel 9550 3775 0    50   Input ~ 0
triangle
Text GLabel 9550 3675 0    50   Input ~ 0
pulse
$Comp
L power:VCC #PWR016
U 1 1 5D5DC792
P 9450 1350
F 0 "#PWR016" H 9450 1200 50  0001 C CNN
F 1 "VCC" H 9467 1523 50  0000 C CNN
F 2 "" H 9450 1350 50  0001 C CNN
F 3 "" H 9450 1350 50  0001 C CNN
	1    9450 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1450 9225 1450
$Comp
L power:GNDREF #PWR015
U 1 1 5D5D7596
P 9225 1450
F 0 "#PWR015" H 9225 1200 50  0001 C CNN
F 1 "GNDREF" H 9230 1277 50  0000 C CNN
F 2 "" H 9225 1450 50  0001 C CNN
F 3 "" H 9225 1450 50  0001 C CNN
	1    9225 1450
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR017
U 1 1 5D5D6D99
P 9450 1550
F 0 "#PWR017" H 9450 1400 50  0001 C CNN
F 1 "VEE" H 9468 1723 50  0000 C CNN
F 2 "" H 9450 1550 50  0001 C CNN
F 3 "" H 9450 1550 50  0001 C CNN
	1    9450 1550
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5D5D6407
P 9650 1450
F 0 "J1" H 9725 1450 50  0000 L CNN
F 1 "power supply" H 9600 1250 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9650 1450 50  0001 C CNN
F 3 "~" H 9650 1450 50  0001 C CNN
	1    9650 1450
	1    0    0    -1  
$EndComp
Text GLabel 10875 6050 2    50   Input ~ 0
GND
Text GLabel 11025 5450 2    50   Input ~ 0
GND
Text GLabel 6200 2125 1    50   Input ~ 0
GND
Text GLabel 1400 1075 1    50   Input ~ 0
GNDREF
$Comp
L power:GNDREF #PWR0106
U 1 1 5EC060DD
P 1400 1075
F 0 "#PWR0106" H 1400 825 50  0001 C CNN
F 1 "GNDREF" H 1405 902 50  0001 C CNN
F 2 "" H 1400 1075 50  0001 C CNN
F 3 "" H 1400 1075 50  0001 C CNN
	1    1400 1075
	1    0    0    -1  
$EndComp
Text GLabel 1275 1075 1    50   Input ~ 0
GNDREF
$Comp
L power:GNDREF #PWR0105
U 1 1 5EBF8868
P 1275 1075
F 0 "#PWR0105" H 1275 825 50  0001 C CNN
F 1 "GNDREF" H 1280 902 50  0001 C CNN
F 2 "" H 1275 1075 50  0001 C CNN
F 3 "" H 1275 1075 50  0001 C CNN
	1    1275 1075
	1    0    0    -1  
$EndComp
Text GLabel 1150 1075 1    50   Input ~ 0
GNDREF
$Comp
L power:GNDREF #PWR0104
U 1 1 5EBEB0EB
P 1150 1075
F 0 "#PWR0104" H 1150 825 50  0001 C CNN
F 1 "GNDREF" H 1155 902 50  0001 C CNN
F 2 "" H 1150 1075 50  0001 C CNN
F 3 "" H 1150 1075 50  0001 C CNN
	1    1150 1075
	1    0    0    -1  
$EndComp
Text GLabel 1025 1075 1    50   Input ~ 0
GNDREF
$Comp
L power:GNDREF #PWR0103
U 1 1 5EBDD8AA
P 1025 1075
F 0 "#PWR0103" H 1025 825 50  0001 C CNN
F 1 "GNDREF" H 1030 902 50  0001 C CNN
F 2 "" H 1025 1075 50  0001 C CNN
F 3 "" H 1025 1075 50  0001 C CNN
	1    1025 1075
	1    0    0    -1  
$EndComp
Text GLabel 900  1075 1    50   Input ~ 0
GNDREF
$Comp
L power:GNDREF #PWR0102
U 1 1 5EBCFF9F
P 900 1075
F 0 "#PWR0102" H 900 825 50  0001 C CNN
F 1 "GNDREF" H 905 902 50  0001 C CNN
F 2 "" H 900 1075 50  0001 C CNN
F 3 "" H 900 1075 50  0001 C CNN
	1    900  1075
	1    0    0    -1  
$EndComp
Text GLabel 775  1075 1    50   Input ~ 0
GNDREF
$Comp
L power:GNDREF #PWR0101
U 1 1 5EB79DB0
P 775 1075
F 0 "#PWR0101" H 775 825 50  0001 C CNN
F 1 "GNDREF" H 780 902 50  0001 C CNN
F 2 "" H 775 1075 50  0001 C CNN
F 3 "" H 775 1075 50  0001 C CNN
	1    775  1075
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3350 3975 3350
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
P 3550 3350
F 0 "D1" H 3550 3250 50  0000 C CNN
F 1 "1N4148" H 3550 3450 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3550 3175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3550 3350 50  0001 C CNN
	1    3550 3350
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J2
U 1 1 5D76A0AB
P 10050 2725
F 0 "J2" H 10025 3200 50  0000 C CNN
F 1 "control in" V 10100 2725 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x07_P2.54mm_Vertical" H 10050 2725 50  0001 C CNN
F 3 "~" H 10050 2725 50  0001 C CNN
	1    10050 2725
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D87E356
P 9250 1350
F 0 "#PWR?" H 9250 1200 50  0001 C CNN
F 1 "+5V" H 9265 1523 50  0000 C CNN
F 2 "" H 9250 1350 50  0001 C CNN
F 3 "" H 9250 1350 50  0001 C CNN
	1    9250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1350 9250 1350
Connection ~ 9450 1350
Text Notes 9025 1100 0    50   ~ 0
VCC-GND should be <= 6V \nabsolute maximum: 7V).\nOtherwise, 5V and VCC\nmust be separated
$Comp
L power:GNDREF #PWR?
U 1 1 5DB86D8B
P 8100 6025
F 0 "#PWR?" H 8100 5775 50  0001 C CNN
F 1 "GNDREF" H 8105 5852 50  0001 C CNN
F 2 "" H 8100 6025 50  0001 C CNN
F 3 "" H 8100 6025 50  0001 C CNN
	1    8100 6025
	1    0    0    -1  
$EndComp
Wire Wire Line
	7975 6175 8625 6175
Connection ~ 7975 6175
Wire Wire Line
	7975 6025 8100 6025
Wire Wire Line
	7975 6175 7975 6025
Wire Wire Line
	7525 6175 7975 6175
Text Notes 6625 6025 0    50   ~ 0
TODO\nor 470
Wire Notes Line
	6250 4525 9875 4525
Wire Notes Line
	6250 6475 9875 6475
Wire Notes Line
	9875 4525 9875 6475
Wire Wire Line
	6900 5800 7525 5800
$Comp
L Device:R R?
U 1 1 5DA160FA
P 6750 5800
F 0 "R?" V 6700 5900 50  0000 L CNN
F 1 "10k" V 6750 5725 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6680 5800 50  0001 C CNN
F 3 "~" H 6750 5800 50  0001 C CNN
	1    6750 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 5600 7350 5600
$Comp
L Device:R R?
U 1 1 5DA129CE
P 6750 5600
F 0 "R?" V 6700 5700 50  0000 L CNN
F 1 "10k" V 6750 5525 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6680 5600 50  0001 C CNN
F 3 "~" H 6750 5600 50  0001 C CNN
	1    6750 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 5400 7175 5400
$Comp
L Device:R R?
U 1 1 5DA1247B
P 6750 5400
F 0 "R?" V 6700 5500 50  0000 L CNN
F 1 "10k" V 6750 5325 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6680 5400 50  0001 C CNN
F 3 "~" H 6750 5400 50  0001 C CNN
	1    6750 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 5200 7000 5200
$Comp
L Device:R R?
U 1 1 5D9D225A
P 6750 5200
F 0 "R?" V 6700 5300 50  0000 L CNN
F 1 "10k" V 6750 5125 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6680 5200 50  0001 C CNN
F 3 "~" H 6750 5200 50  0001 C CNN
	1    6750 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	8925 6125 8775 6125
$Comp
L Device:R R?
U 1 1 5D9CD2AA
P 9075 6125
F 0 "R?" V 8975 6100 50  0000 L CNN
F 1 "10k" V 9075 6050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9005 6125 50  0001 C CNN
F 3 "~" H 9075 6125 50  0001 C CNN
	1    9075 6125
	0    1    1    0   
$EndComp
Connection ~ 6750 4775
$Comp
L power:+5V #PWR?
U 1 1 5D8888E9
P 6750 4775
F 0 "#PWR?" H 6750 4625 50  0001 C CNN
F 1 "+5V" H 6765 4948 50  0000 C CNN
F 2 "" H 6750 4775 50  0001 C CNN
F 3 "" H 6750 4775 50  0001 C CNN
	1    6750 4775
	1    0    0    -1  
$EndComp
Connection ~ 7750 4775
$Comp
L power:GNDREF #PWR?
U 1 1 5D87A556
P 7750 4775
F 0 "#PWR?" H 7750 4525 50  0001 C CNN
F 1 "GNDREF" H 7700 4600 50  0001 C CNN
F 2 "" H 7750 4775 50  0001 C CNN
F 3 "" H 7750 4775 50  0001 C CNN
	1    7750 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	7825 5075 7350 5075
Wire Wire Line
	7825 4775 7825 5075
Wire Wire Line
	7750 4775 7825 4775
Wire Wire Line
	6750 5075 7150 5075
Wire Wire Line
	6750 4775 6750 5075
$Comp
L Device:C_Small C11
U 1 1 5D6A2D61
P 7250 5075
F 0 "C11" V 7200 5175 50  0000 C CNN
F 1 "100n" V 7300 5200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7250 5075 50  0001 C CNN
F 3 "~" H 7250 5075 50  0001 C CNN
	1    7250 5075
	0    1    1    0   
$EndComp
Text GLabel 9675 5600 3    50   Input ~ 0
ctl_override
Wire Notes Line
	6250 6475 6250 4525
Text Notes 6350 6425 0    50   ~ 0
Sawtooth generation and digital ring modulation\n(sawtooth is basically a square_ctl ringmodulated triangle)
Text Notes 8150 5075 0    50   ~ 0
Jumper configurations:\n12 + 34: sawtooth wave with 4x ringmod\n12: triangle wave with 4x ringmod\n    (pin 4 can be used as fifth ringmod)\n23: sawtooth, no ring mod. Choose this\n    when no 74HC86 is installed.
Text GLabel 9575 5600 3    50   Input ~ 0
saw_ctl
$Comp
L Connector:Conn_01x04_Male JP5
U 1 1 5D8F200D
P 9575 5400
F 0 "JP5" V 9600 5675 50  0000 R CNN
F 1 "ringmod config" V 9500 5725 50  0000 R CNN
F 2 "footprints:SolderDipJumper4alt" H 9575 5400 50  0001 C CNN
F 3 "~" H 9575 5400 50  0001 C CNN
	1    9575 5400
	0    -1   1    0   
$EndComp
Wire Wire Line
	7000 5200 7575 5200
Connection ~ 7000 5200
Wire Wire Line
	7000 5875 7000 5200
Wire Wire Line
	7175 5400 7575 5400
Connection ~ 7175 5400
Wire Wire Line
	7175 5875 7175 5400
Wire Wire Line
	7350 5600 7575 5600
Connection ~ 7350 5600
Wire Wire Line
	7350 5875 7350 5600
Wire Wire Line
	7525 5800 7575 5800
Connection ~ 7525 5800
Wire Wire Line
	7525 5875 7525 5800
Connection ~ 7175 6175
Wire Wire Line
	7175 6175 7000 6175
Connection ~ 7350 6175
Wire Wire Line
	7350 6175 7175 6175
Connection ~ 7525 6175
Wire Wire Line
	7525 6175 7350 6175
Connection ~ 8775 5800
Wire Wire Line
	8625 5800 8625 5875
Wire Wire Line
	8775 5800 8625 5800
$Comp
L Device:R R41
U 1 1 5D9997EB
P 8625 6025
F 0 "R41" H 8425 6175 50  0000 L CNN
F 1 "100k" V 8625 5925 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8555 6025 50  0001 C CNN
F 3 "~" H 8625 6025 50  0001 C CNN
	1    8625 6025
	1    0    0    -1  
$EndComp
$Comp
L Device:R R37
U 1 1 5D986A06
P 7000 6025
F 0 "R37" H 7000 6175 50  0000 L CNN
F 1 "100k" V 7000 5925 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6930 6025 50  0001 C CNN
F 3 "~" H 7000 6025 50  0001 C CNN
	1    7000 6025
	1    0    0    -1  
$EndComp
$Comp
L Device:R R38
U 1 1 5D9863CA
P 7175 6025
F 0 "R38" H 7175 6175 50  0000 L CNN
F 1 "100k" V 7175 5925 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7105 6025 50  0001 C CNN
F 3 "~" H 7175 6025 50  0001 C CNN
	1    7175 6025
	1    0    0    -1  
$EndComp
$Comp
L Device:R R39
U 1 1 5D985574
P 7350 6025
F 0 "R39" H 7350 6175 50  0000 L CNN
F 1 "100k" V 7350 5925 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7280 6025 50  0001 C CNN
F 3 "~" H 7350 6025 50  0001 C CNN
	1    7350 6025
	1    0    0    -1  
$EndComp
Wire Wire Line
	6525 5800 6600 5800
Wire Wire Line
	6525 5650 6525 5800
Wire Wire Line
	6525 5600 6600 5600
Wire Wire Line
	6525 5550 6525 5600
Wire Wire Line
	6525 5200 6600 5200
Wire Wire Line
	6525 5350 6525 5200
Wire Wire Line
	6525 5400 6600 5400
Wire Wire Line
	6525 5450 6525 5400
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 5D965050
P 6325 5450
F 0 "J4" H 6375 5650 50  0000 C CNN
F 1 "ringmod in" V 6400 5000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6325 5450 50  0001 C CNN
F 3 "~" H 6325 5450 50  0001 C CNN
	1    6325 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R40
U 1 1 5D937375
P 7525 6025
F 0 "R40" H 7525 6175 50  0000 L CNN
F 1 "100k" V 7525 5925 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7455 6025 50  0001 C CNN
F 3 "~" H 7525 6025 50  0001 C CNN
	1    7525 6025
	1    0    0    -1  
$EndComp
Wire Wire Line
	8775 6125 8775 5800
Wire Wire Line
	9775 6125 9225 6125
Wire Wire Line
	9775 5600 9775 6125
Wire Wire Line
	9475 5700 9375 5700
Wire Wire Line
	9475 5600 9475 5700
Wire Wire Line
	8775 5500 8775 5600
Wire Wire Line
	8175 5700 8175 5600
Wire Wire Line
	8175 5300 8175 5400
$Comp
L 74xx:74HC86 U3
U 5 1 5D72B593
P 7250 4775
F 0 "U3" V 7375 4725 50  0000 L CNN
F 1 "74HC86" V 7100 4650 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7250 4775 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 7250 4775 50  0001 C CNN
	5    7250 4775
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74HC86 U3
U 4 1 5D728D89
P 7875 5700
F 0 "U3" H 7875 5700 50  0000 C CNN
F 1 "74HC86" H 7850 5475 50  0001 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7875 5700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 7875 5700 50  0001 C CNN
	4    7875 5700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U3
U 3 1 5D72705E
P 9075 5700
F 0 "U3" H 9075 5700 50  0000 C CNN
F 1 "74HC86" H 9075 5475 50  0001 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9075 5700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 9075 5700 50  0001 C CNN
	3    9075 5700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U3
U 2 1 5D724B9C
P 8475 5500
F 0 "U3" H 8475 5500 50  0000 C CNN
F 1 "74HC86" H 8475 5750 50  0001 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8475 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 8475 5500 50  0001 C CNN
	2    8475 5500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U3
U 1 1 5D720F09
P 7875 5300
F 0 "U3" H 7875 5300 50  0000 C CNN
F 1 "74HC86" H 7875 5534 50  0001 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7875 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 7875 5300 50  0001 C CNN
	1    7875 5300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
