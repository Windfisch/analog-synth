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
L power:GNDREF #PWR?
U 1 1 5CF229F9
P 1825 6700
F 0 "#PWR?" H 1825 6450 50  0001 C CNN
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
L Device:R R?
U 1 1 5CF3873D
P 3075 7250
F 0 "R?" V 2975 7250 50  0000 C CNN
F 1 "100k" V 3075 7250 50  0000 C CNN
F 2 "" V 3005 7250 50  0001 C CNN
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
L power:VCC #PWR?
U 1 1 5CF357C9
P 3075 7050
F 0 "#PWR?" H 3075 6900 50  0001 C CNN
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
Connection ~ 2875 6300
Wire Wire Line
	2875 5250 2875 6300
$Comp
L Device:R R?
U 1 1 5CF9A0F2
P 4175 6250
F 0 "R?" V 4275 6250 50  0000 C CNN
F 1 "10k" V 4175 6250 50  0000 C CNN
F 2 "" V 4105 6250 50  0001 C CNN
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
L Device:R R?
U 1 1 5D41CBA2
P 1825 6550
F 0 "R?" V 1725 6550 50  0000 C CNN
F 1 "47k" V 1825 6550 50  0000 C CNN
F 2 "" V 1755 6550 50  0001 C CNN
F 3 "~" H 1825 6550 50  0001 C CNN
	1    1825 6550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5CF2012A
P 1375 6400
F 0 "R?" V 1475 6400 50  0000 C CNN
F 1 "47k" V 1375 6400 50  0000 C CNN
F 2 "" V 1305 6400 50  0001 C CNN
F 3 "~" H 1375 6400 50  0001 C CNN
	1    1375 6400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5CF1806F
P 1375 6200
F 0 "R?" V 1275 6200 50  0000 C CNN
F 1 "100k" V 1375 6200 50  0000 C CNN
F 2 "" V 1305 6200 50  0001 C CNN
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
U 1 1 5D628926
P 2225 6300
F 0 "U?" H 2325 6150 50  0000 C CNN
F 1 "LM324" H 2200 6300 50  0000 C CNN
F 2 "" H 2175 6400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 2275 6500 50  0001 C CNN
	1    2225 6300
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 2 1 5D628930
P 3175 6700
F 0 "U?" H 3275 6550 50  0000 C CNN
F 1 "LM324" H 3150 6700 50  0000 C CNN
F 2 "" H 3125 6800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 3225 6900 50  0001 C CNN
	2    3175 6700
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
P 3175 6700
F 0 "U?" H 3225 6525 50  0001 L CNN
F 1 "LM324" H 3250 6450 50  0001 L CNN
F 2 "" H 3125 6800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 3225 6900 50  0001 C CNN
	5    3175 6700
	1    0    0    -1  
$EndComp
Connection ~ 3475 6700
$Comp
L power:VEE #PWR?
U 1 1 5CF354CF
P 3075 6350
F 0 "#PWR?" H 3075 6200 50  0001 C CNN
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
$Comp
L 74xx:74HC86 U?
U 1 1 5D720F09
P 7600 5300
F 0 "U?" H 7600 5300 50  0000 C CNN
F 1 "74HC86" H 7600 5534 50  0001 C CNN
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
F 1 "74HC86" H 8200 5750 50  0001 C CNN
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
F 1 "74HC86" H 8800 5475 50  0001 C CNN
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
F 1 "74HC86" H 7575 5475 50  0001 C CNN
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
Text GLabel 4025 6250 0    50   Input ~ 0
saw_ctl
Wire Wire Line
	3475 6700 5625 6700
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
F 1 "GNDREF" H 9850 4100 50  0000 C CNN
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
P 2225 5950
F 0 "C?" V 2150 5850 50  0000 C CNN
F 1 "1n" V 2150 6050 50  0000 C CNN
F 2 "" H 2263 5800 50  0001 C CNN
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
Text GLabel 9400 5600 3    50   Input ~ 0
ctl_override
Wire Wire Line
	1525 6400 1825 6400
Wire Wire Line
	1625 6450 1625 6200
$Comp
L Device:R R?
U 1 1 5D41CBA4
P 1625 6600
F 0 "R?" H 1725 6600 50  0000 C CNN
F 1 "47k" V 1625 6600 50  0000 C CNN
F 2 "" V 1555 6600 50  0001 C CNN
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
Text GLabel 9400 2900 0    50   Input ~ 0
ctl_override
Text GLabel 9400 2500 0    50   Input ~ 0
V_control
Text GLabel 9400 2600 0    50   Input ~ 0
V_control_2
Text GLabel 9400 2700 0    50   Input ~ 0
V_control_3
Text GLabel 9400 2800 0    50   Input ~ 0
V_control_raw
Text GLabel 9900 2600 2    50   Input ~ 0
V_lin_pitchmod_2
Text GLabel 9900 2700 2    50   Input ~ 0
V_lin_pitchmod_3
Text GLabel 9900 2900 2    50   Input ~ 0
V_pwm
$Comp
L Connector_Generic:Conn_02x07_Counter_Clockwise J?
U 1 1 5D5F57E8
P 9600 2700
F 0 "J?" H 9575 3150 50  0000 C CNN
F 1 "control in" V 9650 2700 50  0000 C CNN
F 2 "" H 9600 2700 50  0001 C CNN
F 3 "~" H 9600 2700 50  0001 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2400 9400 2300
Wire Wire Line
	9400 2300 9650 2300
Wire Wire Line
	9900 2300 9900 2400
$Comp
L power:GNDREF #PWR?
U 1 1 5D61D630
P 9775 2150
F 0 "#PWR?" H 9775 1900 50  0001 C CNN
F 1 "GNDREF" H 10025 2075 50  0001 C CNN
F 2 "" H 9775 2150 50  0001 C CNN
F 3 "" H 9775 2150 50  0001 C CNN
	1    9775 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 2300 9650 2150
Wire Wire Line
	9650 2150 9775 2150
Connection ~ 9650 2300
Wire Wire Line
	9650 2300 9900 2300
Wire Wire Line
	9400 3000 9400 3100
Wire Wire Line
	9400 3100 9650 3100
Wire Wire Line
	9900 3100 9900 3000
$Comp
L power:GNDREF #PWR?
U 1 1 5D62D6F9
P 9650 3100
F 0 "#PWR?" H 9650 2850 50  0001 C CNN
F 1 "GNDREF" H 9850 3025 50  0000 C CNN
F 2 "" H 9650 3100 50  0001 C CNN
F 3 "" H 9650 3100 50  0001 C CNN
	1    9650 3100
	1    0    0    -1  
$EndComp
Connection ~ 9650 3100
Wire Wire Line
	9650 3100 9900 3100
Wire Wire Line
	3075 7050 3075 7025
$Comp
L Device:C_Small C?
U 1 1 5D5CE3BE
P 3225 7025
F 0 "C?" V 3175 7100 50  0000 C CNN
F 1 "100n" V 3100 7025 50  0000 C CNN
F 2 "" H 3225 7025 50  0001 C CNN
F 3 "~" H 3225 7025 50  0001 C CNN
	1    3225 7025
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5D5CFA42
P 3325 7025
F 0 "#PWR?" H 3325 6775 50  0001 C CNN
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
L Device:C_Small C?
U 1 1 5D5E8697
P 3225 6375
F 0 "C?" V 3175 6450 50  0000 C CNN
F 1 "100n" V 3100 6375 50  0000 C CNN
F 2 "" H 3225 6375 50  0001 C CNN
F 3 "~" H 3225 6375 50  0001 C CNN
	1    3225 6375
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5D5E869D
P 3325 6375
F 0 "#PWR?" H 3325 6125 50  0001 C CNN
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
L Device:C_Small C?
U 1 1 5D6A2D61
P 6975 5075
F 0 "C?" V 6925 5150 50  0000 C CNN
F 1 "100n" V 7025 5200 50  0000 C CNN
F 2 "" H 6975 5075 50  0001 C CNN
F 3 "~" H 6975 5075 50  0001 C CNN
	1    6975 5075
	0    1    1    0   
$EndComp
Wire Wire Line
	6475 4775 6475 5075
Wire Wire Line
	6475 5075 6875 5075
Connection ~ 6475 4775
Wire Wire Line
	7475 4775 7550 4775
Wire Wire Line
	7550 4775 7550 5075
Wire Wire Line
	7550 5075 7075 5075
Connection ~ 7475 4775
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 5D7C3B96
P 4525 6250
F 0 "Q?" H 4475 6400 50  0000 L CNN
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
Q? cannot be\nreplaced by a \nmosfet due to\nthe parasitic\ndiode inside a\nFET. Do replace\nit for some\ncrunchy wave-\nshaping, though.
$Comp
L Device:R R?
U 1 1 5D9107CB
P 2450 6600
F 0 "R?" V 2550 6600 50  0000 C CNN
F 1 "10k" V 2450 6600 50  0000 C CNN
F 2 "" V 2380 6600 50  0001 C CNN
F 3 "~" H 2450 6600 50  0001 C CNN
	1    2450 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D910D8F
P 2450 7100
F 0 "R?" V 2550 7100 50  0000 C CNN
F 1 "10k" V 2450 7100 50  0000 C CNN
F 2 "" V 2380 7100 50  0001 C CNN
F 3 "~" H 2450 7100 50  0001 C CNN
	1    2450 7100
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT R?
U 1 1 5D911866
P 2300 6850
F 0 "R?" V 2185 6850 50  0000 C CNN
F 1 "20k" V 2300 6850 50  0000 C CNN
F 2 "" H 2300 6850 50  0001 C CNN
F 3 "~" H 2300 6850 50  0001 C CNN
	1    2300 6850
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR?
U 1 1 5D92BF20
P 2600 7100
F 0 "#PWR?" H 2600 6950 50  0001 C CNN
F 1 "VEE" H 2618 7273 50  0000 C CNN
F 2 "" H 2600 7100 50  0001 C CNN
F 3 "" H 2600 7100 50  0001 C CNN
	1    2600 7100
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D931D60
P 2600 6600
F 0 "#PWR?" H 2600 6450 50  0001 C CNN
F 1 "VCC" H 2617 6773 50  0000 C CNN
F 2 "" H 2600 6600 50  0001 C CNN
F 3 "" H 2600 6600 50  0001 C CNN
	1    2600 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R?
U 1 1 5D95EF15
P 2600 6850
F 0 "R?" V 2675 6775 50  0000 L CNN
F 1 "1Meg" V 2525 6800 50  0000 L CNN
F 2 "" V 2530 6850 50  0001 C CNN
F 3 "~" H 2600 6850 50  0001 C CNN
	1    2600 6850
	0    1    -1   0   
$EndComp
Wire Notes Line
	675  7750 3450 7750
Text Notes 700  7725 0    50   ~ 0
vco core
$Comp
L Device:RTRIM R?
U 1 1 5DC20550
P 1625 6900
F 0 "R?" H 1475 6950 50  0000 L CNN
F 1 "10k" H 1400 6850 50  0000 L CNN
F 2 "" V 1555 6900 50  0001 C CNN
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
L Transistor_FET:2N7000 Q?
U 1 1 5D1BA17F
P 1725 7250
F 0 "Q?" H 1931 7296 50  0000 L CNN
F 1 "2N7000" H 1931 7205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1925 7175 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 1725 7250 50  0001 L CNN
	1    1725 7250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CF3A8E6
P 2225 7400
F 0 "R?" V 2125 7400 50  0000 C CNN
F 1 "10k" V 2225 7400 50  0000 C CNN
F 2 "" V 2155 7400 50  0001 C CNN
F 3 "~" H 2225 7400 50  0001 C CNN
	1    2225 7400
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5D41CBAA
P 1250 7500
F 0 "#PWR?" H 1250 7250 50  0001 C CNN
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
L power:GNDREF #PWR?
U 1 1 5CF85DC5
P 4625 6500
F 0 "#PWR?" H 4625 6250 50  0001 C CNN
F 1 "GNDREF" H 4630 6327 50  0001 C CNN
F 2 "" H 4625 6500 50  0001 C CNN
F 3 "" H 4625 6500 50  0001 C CNN
	1    4625 6500
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DF3EC09
P 5675 4825
F 0 "R?" H 5745 4871 50  0000 L CNN
F 1 "2.2k" V 5675 4750 50  0000 L CNN
F 2 "" V 5605 4825 50  0001 C CNN
F 3 "~" H 5675 4825 50  0001 C CNN
	1    5675 4825
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DF4601A
P 5675 4425
F 0 "R?" H 5745 4471 50  0000 L CNN
F 1 "1k" V 5675 4375 50  0000 L CNN
F 2 "" V 5605 4425 50  0001 C CNN
F 3 "~" H 5675 4425 50  0001 C CNN
	1    5675 4425
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5DF46B76
P 5525 4275
F 0 "#PWR?" H 5525 4025 50  0001 C CNN
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
L Jumper:Jumper_3_Bridged12 JP?
U 1 1 5E059366
P 1625 7600
F 0 "JP?" H 1525 7525 50  0000 C CNN
F 1 "gnd adjust" H 1625 7700 50  0000 C CNN
F 2 "" H 1625 7600 50  0001 C CNN
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
Text GLabel 9900 2500 2    50   Input ~ 0
V_lin_pitchmod_1
Text GLabel 9900 2800 2    50   Input ~ 0
V_lin_pitchmod_raw
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
Text Notes 2450 1775 0    50   ~ 0
ca 24mV/oct
Text Notes 2925 2800 1    50   ~ 0
ca 19mV/Oct
Text Notes 4050 2650 1    50   ~ 0
ca 18mV/oct
$Comp
L Device:R R?
U 1 1 5D4A8D8A
P 2450 2275
F 0 "R?" H 2520 2321 50  0000 L CNN
F 1 "150" V 2450 2200 50  0000 L CNN
F 2 "" V 2380 2275 50  0001 C CNN
F 3 "~" H 2450 2275 50  0001 C CNN
	1    2450 2275
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D054548
P 1300 2075
F 0 "R?" V 1300 2300 50  0000 C CNN
F 1 "147k" V 1300 2075 50  0000 C CNN
F 2 "" V 1230 2075 50  0001 C CNN
F 3 "~" H 1300 2075 50  0001 C CNN
	1    1300 2075
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5D61694C
P 3100 3425
F 0 "#PWR?" H 3100 3175 50  0001 C CNN
F 1 "GNDREF" H 3105 3252 50  0000 C CNN
F 2 "" H 3100 3425 50  0001 C CNN
F 3 "" H 3100 3425 50  0001 C CNN
	1    3100 3425
	1    0    0    -1  
$EndComp
Wire Notes Line
	2950 3850 3725 3850
Wire Notes Line
	2950 2625 3725 2625
Wire Wire Line
	3700 3350 3975 3350
Wire Notes Line
	2950 2625 2950 3850
Wire Notes Line
	3725 2625 3725 3850
Text Notes 3000 3825 0    50   ~ 0
Rossum\ncompensation
Wire Wire Line
	3550 2925 3550 2800
Wire Wire Line
	3975 2925 3975 2125
Wire Wire Line
	3550 2925 3800 2925
Wire Wire Line
	3975 3350 3975 4050
Connection ~ 3550 2925
Wire Wire Line
	3550 3050 3550 2925
Wire Wire Line
	3100 3425 3100 3350
Wire Wire Line
	3250 3200 3250 3050
$Comp
L Device:R_POT_TRIM R?
U 1 1 5D5E850B
P 3250 3350
F 0 "R?" V 3135 3350 50  0000 C CNN
F 1 "1k" V 3250 3350 50  0000 C CNN
F 2 "" H 3250 3350 50  0001 C CNN
F 3 "~" H 3250 3350 50  0001 C CNN
	1    3250 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 4050 4525 4050
$Comp
L Device:R R?
U 1 1 5D5DCAB9
P 3400 3050
F 0 "R?" V 3300 3050 50  0000 C CNN
F 1 "100k" V 3400 3050 50  0000 C CNN
F 2 "" V 3330 3050 50  0001 C CNN
F 3 "~" H 3400 3050 50  0001 C CNN
	1    3400 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D5DBBAB
P 3400 2800
F 0 "R?" V 3300 2800 50  0000 C CNN
F 1 "4.7k" V 3400 2800 50  0000 C CNN
F 2 "" V 3330 2800 50  0001 C CNN
F 3 "~" H 3400 2800 50  0001 C CNN
	1    3400 2800
	0    1    1    0   
$EndComp
Text Notes 2125 3600 0    50   ~ 0
thermal\ncompensation
Wire Notes Line
	2825 1975 2825 3625
Wire Notes Line
	2100 2400 2100 3625
Wire Notes Line
	2100 2400 2525 1975
Wire Notes Line
	2825 3625 2100 3625
Wire Notes Line
	2525 1975 2825 1975
Wire Wire Line
	2450 2800 2450 2725
Wire Wire Line
	2450 2800 3125 2800
Wire Wire Line
	2450 2725 2625 2725
Connection ~ 2450 2800
Wire Wire Line
	2450 2850 2450 2800
Connection ~ 2450 2725
Wire Wire Line
	2275 2725 2450 2725
$Comp
L power:GNDREF #PWR?
U 1 1 5D4D9682
P 2450 3150
F 0 "#PWR?" H 2450 2900 50  0001 C CNN
F 1 "GNDREF" H 2455 2977 50  0000 C CNN
F 2 "" H 2450 3150 50  0001 C CNN
F 3 "" H 2450 3150 50  0001 C CNN
	1    2450 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2425 2625 2425
$Comp
L Device:R R?
U 1 1 5D4B330E
P 2450 3000
F 0 "R?" H 2520 3046 50  0000 L CNN
F 1 "2.2k" V 2450 2925 50  0000 L CNN
F 2 "" V 2380 3000 50  0001 C CNN
F 3 "~" H 2450 3000 50  0001 C CNN
	1    2450 3000
	1    0    0    -1  
$EndComp
Connection ~ 2450 2425
Wire Wire Line
	2275 2425 2450 2425
$Comp
L Device:R R?
U 1 1 5D4A95E2
P 2625 2575
F 0 "R?" H 2675 2625 50  0000 L CNN
F 1 "1k" V 2625 2525 50  0000 L CNN
F 2 "" V 2555 2575 50  0001 C CNN
F 3 "~" H 2625 2575 50  0001 C CNN
	1    2625 2575
	1    0    0    -1  
$EndComp
$Comp
L Device:Thermistor_NTC R?
U 1 1 5D4AB436
P 2275 2575
F 0 "R?" H 2350 2625 50  0000 L CNN
F 1 "1k" H 2350 2525 50  0000 L CNN
F 2 "" H 2275 2625 50  0001 C CNN
F 3 "~" H 2275 2625 50  0001 C CNN
	1    2275 2575
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D41CBAE
P 5650 2725
F 0 "R?" H 5720 2771 50  0000 L CNN
F 1 "1k" H 5720 2680 50  0000 L CNN
F 2 "" V 5580 2725 50  0001 C CNN
F 3 "~" H 5650 2725 50  0001 C CNN
	1    5650 2725
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5D41CBAF
P 6500 2275
F 0 "#PWR?" H 6500 2025 50  0001 C CNN
F 1 "GNDREF" H 6505 2102 50  0001 C CNN
F 2 "" H 6500 2275 50  0001 C CNN
F 3 "" H 6500 2275 50  0001 C CNN
	1    6500 2275
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2275 6500 2125
Wire Wire Line
	5150 3275 5350 3275
$Comp
L power:VCC #PWR?
U 1 1 5D41CBB2
P 5450 1375
F 0 "#PWR?" H 5450 1225 50  0001 C CNN
F 1 "VCC" H 5467 1548 50  0000 C CNN
F 2 "" H 5450 1375 50  0001 C CNN
F 3 "" H 5450 1375 50  0001 C CNN
	1    5450 1375
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D41CBB1
P 5450 1525
F 0 "R?" H 5520 1571 50  0000 L CNN
F 1 "100k" V 5450 1425 50  0000 L CNN
F 2 "" V 5380 1525 50  0001 C CNN
F 3 "~" H 5450 1525 50  0001 C CNN
	1    5450 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3175 4550 3175
$Comp
L power:VEE #PWR?
U 1 1 5CFF2176
P 1175 3675
F 0 "#PWR?" H 1175 3525 50  0001 C CNN
F 1 "VEE" H 1275 3750 50  0000 C CNN
F 2 "" H 1175 3675 50  0001 C CNN
F 3 "" H 1175 3675 50  0001 C CNN
	1    1175 3675
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5CFF25D9
P 1175 2975
F 0 "#PWR?" H 1175 2825 50  0001 C CNN
F 1 "VCC" H 1075 3050 50  0000 C CNN
F 2 "" H 1175 2975 50  0001 C CNN
F 3 "" H 1175 2975 50  0001 C CNN
	1    1175 2975
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 1475 7750 1475
Wire Wire Line
	7750 1475 7750 1825
$Comp
L power:GNDREF #PWR?
U 1 1 5CFF60BC
P 6900 2075
F 0 "#PWR?" H 6900 1825 50  0001 C CNN
F 1 "GNDREF" H 6905 1902 50  0001 C CNN
F 2 "" H 6900 2075 50  0001 C CNN
F 3 "" H 6900 2075 50  0001 C CNN
	1    6900 2075
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2075 6900 1925
Wire Wire Line
	6900 1925 7050 1925
Wire Wire Line
	6900 1725 6900 1475
Wire Wire Line
	6900 1475 7200 1475
Wire Wire Line
	7050 1725 6900 1725
Connection ~ 6900 1725
Text GLabel 7900 1825 2    50   Input ~ 0
V_expo
Wire Wire Line
	7750 1825 7650 1825
Wire Wire Line
	7900 1825 7750 1825
Connection ~ 7750 1825
$Comp
L power:GNDREF #PWR?
U 1 1 5D41CBBA
P 4350 3575
F 0 "#PWR?" H 4350 3325 50  0001 C CNN
F 1 "GNDREF" H 4355 3402 50  0001 C CNN
F 2 "" H 4350 3575 50  0001 C CNN
F 3 "" H 4350 3575 50  0001 C CNN
	1    4350 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3575 4350 3375
Wire Wire Line
	4350 3375 4550 3375
$Comp
L Device:C C?
U 1 1 5D41CBBB
P 4900 2900
F 0 "C?" V 4648 2900 50  0000 C CNN
F 1 "1n" V 4739 2900 50  0000 C CNN
F 2 "" H 4938 2750 50  0001 C CNN
F 3 "~" H 4900 2900 50  0001 C CNN
	1    4900 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 2875 5650 3275
Wire Wire Line
	4350 1725 4350 2900
Wire Wire Line
	4750 2900 4350 2900
Connection ~ 4350 2900
Wire Wire Line
	4350 2900 4350 3175
Wire Wire Line
	5050 2900 5350 2900
Wire Wire Line
	5350 3275 5350 4050
Wire Wire Line
	5350 2900 5350 3275
Connection ~ 5350 3275
Wire Wire Line
	5350 3275 5650 3275
Text Notes 5975 3925 0    50   ~ 0
for Q4, the following holds true:\nI_C = const * exp(V_B / VT) with VT=26mV\n(thermal voltage of a transistor)\nnow this means that Vout will double\nevery (log(2) * 26mV) = 18mV.\n\nNote that VT is temperature dependent.\nWhen the temperature rises, VT rises and so\nthe input voltage must rise too. The thermal\ncompensation consisting of TODO does that.\n\nAdditionally, Q3 and Q4 have a bulk resistance\nbetween their ideal and actual emitters. This\ncauses the VCO's tuning to drop a bit at high\nfrequencies. The Rossum compensation compensates\nfor this by measuring the current through R17 and\nfeeding back a small amount into Q3's base.
Text Notes 3950 1050 0    50   ~ 0
R16 determines the I_C current through\nQ4 when Q4's base is at GNDREF.\nTogether with V_tune, it determines the pitch.\nChoose R16 and V_tune such, that U8's output needs\nto be at around GNDREF for "sane" pitches.
$Comp
L Device:R R?
U 1 1 5D054E64
P 2025 1775
F 0 "R?" V 2125 1825 50  0000 R CNN
F 1 "12k2" V 2025 1875 50  0000 R CNN
F 2 "" V 1955 1775 50  0001 C CNN
F 3 "~" H 2025 1775 50  0001 C CNN
	1    2025 1775
	0    -1   -1   0   
$EndComp
Text GLabel 1150 2175 0    50   Input ~ 0
V_tune
$Comp
L Device:R R?
U 1 1 5D41CBC2
P 1300 2175
F 0 "R?" V 1300 2400 50  0000 C CNN
F 1 "220k" V 1300 2175 50  0000 C CNN
F 2 "" V 1230 2175 50  0001 C CNN
F 3 "~" H 1300 2175 50  0001 C CNN
	1    1300 2175
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 1775 2450 2125
Wire Wire Line
	1650 1775 1875 1775
Wire Wire Line
	1650 2025 1750 2025
Wire Wire Line
	1600 2225 1750 2225
Wire Wire Line
	1600 2375 1600 2225
$Comp
L power:GNDREF #PWR?
U 1 1 5D04FEE6
P 1600 2375
F 0 "#PWR?" H 1600 2125 50  0001 C CNN
F 1 "GNDREF" H 1605 2202 50  0000 C CNN
F 2 "" H 1600 2375 50  0001 C CNN
F 3 "" H 1600 2375 50  0001 C CNN
	1    1600 2375
	1    0    0    -1  
$EndComp
Connection ~ 2450 2125
Wire Wire Line
	2350 2125 2450 2125
Text GLabel 1150 2075 0    50   Input ~ 0
V_control_3
$Comp
L Amplifier_Operational:LM324 U?
U 1 1 5D5E9E8D
P 2050 2125
F 0 "U?" H 2150 1975 50  0000 C CNN
F 1 "LM324" H 2025 2125 50  0000 C CNN
F 2 "" H 2000 2225 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 2100 2325 50  0001 C CNN
	1    2050 2125
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 2 1 5D5EA9A1
P 4850 3275
F 0 "U?" H 4925 3125 50  0000 C CNN
F 1 "LM324" H 4825 3275 50  0000 C CNN
F 2 "" H 4800 3375 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 4900 3475 50  0001 C CNN
	2    4850 3275
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 3 1 5D5EBF6F
P 7350 1825
F 0 "U?" H 7450 1675 50  0000 C CNN
F 1 "LM324" H 7325 1825 50  0000 C CNN
F 2 "" H 7300 1925 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 7400 2025 50  0001 C CNN
	3    7350 1825
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 4 1 5D5ED4E4
P 1275 3325
F 0 "U?" H 1350 3475 50  0000 C CNN
F 1 "LM324" H 1275 3325 50  0000 C CNN
F 2 "" H 1225 3425 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1325 3525 50  0001 C CNN
	4    1275 3325
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 5 1 5D5EEA82
P 1275 3325
F 0 "U?" H 1450 3925 50  0001 L CNN
F 1 "LM324" H 1250 4075 50  0001 L CNN
F 2 "" H 1225 3425 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1325 3525 50  0001 C CNN
	5    1275 3325
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC847BDW1 Q?
U 1 1 5DD7C680
P 5350 2125
F 0 "Q?" H 5275 2275 50  0000 L CNN
F 1 "BCM847" H 5500 2225 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5550 2225 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC846BDW1T1-D.PDF" H 5350 2125 50  0001 C CNN
	1    5350 2125
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC847BDW1 Q?
U 2 1 5DD7EF3D
P 5950 2125
F 0 "Q?" H 5825 2275 50  0000 L CNN
F 1 "1/2 BCM847" H 5725 1850 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 6150 2225 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC846BDW1T1-D.PDF" H 5950 2125 50  0001 C CNN
	2    5950 2125
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5450 2325 5650 2325
Connection ~ 5650 2325
Wire Wire Line
	5650 2325 5850 2325
Wire Wire Line
	5650 2325 5650 2575
Wire Wire Line
	5850 1725 5850 1925
Wire Wire Line
	5850 1725 6275 1725
Wire Wire Line
	5450 1725 5450 1925
Wire Wire Line
	4350 1725 5450 1725
Wire Wire Line
	5450 1675 5450 1725
Connection ~ 5450 1725
Text GLabel 5450 1875 2    50   Input ~ 0
C1
Text GLabel 5850 1875 0    50   Input ~ 0
C2
Wire Wire Line
	6150 2125 6500 2125
Wire Wire Line
	3975 2125 5150 2125
Text GLabel 5100 2125 1    50   Input ~ 0
B1
Text GLabel 6200 2125 1    50   Input ~ 0
B2
Text GLabel 5650 2325 1    50   Input ~ 0
E
Wire Wire Line
	2175 1775 2450 1775
$Comp
L Jumper:Jumper_2_Bridged JP?
U 1 1 5E0B9FA6
P 4325 4050
F 0 "JP?" H 4325 4200 50  0000 C CNN
F 1 "Rossum connect" H 4325 4125 50  0000 C CNN
F 2 "" H 4325 4050 50  0001 C CNN
F 3 "~" H 4325 4050 50  0001 C CNN
	1    4325 4050
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP?
U 1 1 5E0BADDE
P 3475 2425
F 0 "JP?" H 3300 2475 50  0000 C CNN
F 1 "Rossum override" H 3475 2550 50  0000 C CNN
F 2 "" H 3475 2425 50  0001 C CNN
F 3 "~" H 3475 2425 50  0001 C CNN
	1    3475 2425
	1    0    0    -1  
$EndComp
Connection ~ 3125 2800
Wire Wire Line
	3125 2800 3250 2800
Connection ~ 3800 2925
Wire Wire Line
	3800 2925 3975 2925
Wire Wire Line
	4125 4050 3975 4050
Wire Wire Line
	3125 2425 3125 2800
Wire Wire Line
	3800 2425 3800 2925
$Comp
L Diode:1N4148 D?
U 1 1 5E16153A
P 3550 3350
F 0 "D?" H 3550 3250 50  0000 C CNN
F 1 "1N4148" H 3550 3450 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3550 3175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3550 3350 50  0001 C CNN
	1    3550 3350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E17C2C3
P 6650 1575
F 0 "R?" H 6700 1575 50  0000 L CNN
F 1 "TODO" V 6650 1475 50  0000 L CNN
F 2 "" V 6580 1575 50  0001 C CNN
F 3 "~" H 6650 1575 50  0001 C CNN
	1    6650 1575
	1    0    0    -1  
$EndComp
Connection ~ 6650 1725
Wire Wire Line
	6650 1725 6900 1725
$Comp
L Device:R R?
U 1 1 5E17FED4
P 6550 1575
F 0 "R?" H 6525 1350 50  0000 L CNN
F 1 "TODO" V 6550 1475 50  0000 L CNN
F 2 "" V 6480 1575 50  0001 C CNN
F 3 "~" H 6550 1575 50  0001 C CNN
	1    6550 1575
	1    0    0    -1  
$EndComp
Connection ~ 6550 1725
Wire Wire Line
	6550 1725 6650 1725
Text GLabel 6275 1425 1    50   Input ~ 0
V_lin_pitchmod_raw
$Comp
L Device:C_Small C?
U 1 1 5D631095
P 1325 3000
F 0 "C?" V 1275 3075 50  0000 C CNN
F 1 "100n" V 1200 3000 50  0000 C CNN
F 2 "" H 1325 3000 50  0001 C CNN
F 3 "~" H 1325 3000 50  0001 C CNN
	1    1325 3000
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5D63109B
P 1425 3000
F 0 "#PWR?" H 1425 2750 50  0001 C CNN
F 1 "GNDREF" H 1430 2827 50  0001 C CNN
F 2 "" H 1425 3000 50  0001 C CNN
F 3 "" H 1425 3000 50  0001 C CNN
	1    1425 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D63C62B
P 1325 3650
F 0 "C?" V 1275 3725 50  0000 C CNN
F 1 "100n" V 1200 3650 50  0000 C CNN
F 2 "" H 1325 3650 50  0001 C CNN
F 3 "~" H 1325 3650 50  0001 C CNN
	1    1325 3650
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5D63C631
P 1425 3650
F 0 "#PWR?" H 1425 3400 50  0001 C CNN
F 1 "GNDREF" H 1430 3477 50  0001 C CNN
F 2 "" H 1425 3650 50  0001 C CNN
F 3 "" H 1425 3650 50  0001 C CNN
	1    1425 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1175 3625 1175 3650
Wire Wire Line
	1175 3650 1225 3650
Connection ~ 1175 3650
Wire Wire Line
	1175 3650 1175 3675
Wire Wire Line
	1175 2975 1175 3000
Wire Wire Line
	1175 3000 1225 3000
Connection ~ 1175 3000
Wire Wire Line
	1175 3000 1175 3025
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5DDEFD28
P 3975 1575
F 0 "J?" V 4025 1450 50  0000 R CNN
F 1 "expo in" V 3900 1675 50  0000 R CNN
F 2 "" H 3975 1575 50  0001 C CNN
F 3 "~" H 3975 1575 50  0001 C CNN
	1    3975 1575
	0    -1   1    0   
$EndComp
Wire Wire Line
	3975 2125 3975 1775
Connection ~ 3975 2125
$Comp
L power:GNDREF #PWR?
U 1 1 5DDFE799
P 4075 1775
F 0 "#PWR?" H 4075 1525 50  0001 C CNN
F 1 "GNDREF" H 4080 1602 50  0001 C CNN
F 2 "" H 4075 1775 50  0001 C CNN
F 3 "" H 4075 1775 50  0001 C CNN
	1    4075 1775
	1    0    0    -1  
$EndComp
Text Notes 4500 1575 0    50   ~ 0
must be of same (or\nsimilar) size as the\nrossum resistor.\nalso change the vexpo\npotis value accordingly
Text Notes 7475 1375 0    50   ~ 0
10k is a reasonable value here.\nThe poti gives plenty room.
$Comp
L Device:R_Variable R?
U 1 1 5DEA3137
P 7350 1475
F 0 "R?" V 7525 1425 50  0000 C CNN
F 1 "50k" V 7450 1450 50  0000 C CNN
F 2 "" V 7280 1475 50  0001 C CNN
F 3 "~" H 7350 1475 50  0001 C CNN
	1    7350 1475
	0    1    -1   0   
$EndComp
$Comp
L Device:R_POT_TRIM R?
U 1 1 5E01D2A0
P 825 3225
F 0 "R?" H 750 3225 50  0000 R CNN
F 1 "10k" V 825 3300 50  0000 R CNN
F 2 "" H 825 3225 50  0001 C CNN
F 3 "~" H 825 3225 50  0001 C CNN
	1    825  3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	1575 3325 1575 3850
Wire Wire Line
	1575 3850 975  3850
Wire Wire Line
	975  3850 975  3425
$Comp
L power:VEE #PWR?
U 1 1 5E03FE83
P 825 3375
F 0 "#PWR?" H 825 3225 50  0001 C CNN
F 1 "VEE" H 925 3450 50  0000 C CNN
F 2 "" H 825 3375 50  0001 C CNN
F 3 "" H 825 3375 50  0001 C CNN
	1    825  3375
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E0402DF
P 825 3075
F 0 "#PWR?" H 825 2925 50  0001 C CNN
F 1 "VCC" H 725 3150 50  0000 C CNN
F 2 "" H 825 3075 50  0001 C CNN
F 3 "" H 825 3075 50  0001 C CNN
	1    825  3075
	1    0    0    -1  
$EndComp
Text GLabel 1700 3375 3    50   Input ~ 0
var_vsource
Wire Wire Line
	1700 3375 1700 3325
Wire Wire Line
	1700 3325 1575 3325
Connection ~ 1575 3325
$Comp
L Device:R R?
U 1 1 5E131D96
P 6450 1575
F 0 "R?" H 6300 1575 50  0000 L CNN
F 1 "TODO" V 6450 1475 50  0000 L CNN
F 2 "" V 6380 1575 50  0001 C CNN
F 3 "~" H 6450 1575 50  0001 C CNN
	1    6450 1575
	1    0    0    -1  
$EndComp
Connection ~ 6450 1725
Wire Wire Line
	6450 1725 6550 1725
Wire Wire Line
	6275 1425 6275 1725
Connection ~ 6275 1725
Wire Wire Line
	6275 1725 6450 1725
Text GLabel 6450 1425 1    50   Input ~ 0
V_lin_pitchmod_1
Text GLabel 6550 1425 1    50   Input ~ 0
V_lin_pitchmod_2
Text GLabel 6650 1425 1    50   Input ~ 0
V_lin_pitchmod_3
$Comp
L Device:R R?
U 1 1 5E193690
P 1300 1975
F 0 "R?" V 1300 2200 50  0000 C CNN
F 1 "147k" V 1300 1975 50  0000 C CNN
F 2 "" V 1230 1975 50  0001 C CNN
F 3 "~" H 1300 1975 50  0001 C CNN
	1    1300 1975
	0    1    1    0   
$EndComp
Text GLabel 1150 1975 0    50   Input ~ 0
V_control_2
$Comp
L Device:R R?
U 1 1 5E1A1AC9
P 1300 1875
F 0 "R?" V 1300 2100 50  0000 C CNN
F 1 "147k" V 1300 1875 50  0000 C CNN
F 2 "" V 1230 1875 50  0001 C CNN
F 3 "~" H 1300 1875 50  0001 C CNN
	1    1300 1875
	0    1    1    0   
$EndComp
Text GLabel 1150 1875 0    50   Input ~ 0
V_control
Text GLabel 1150 1775 0    50   Input ~ 0
V_control_raw
Wire Wire Line
	1150 1775 1450 1775
Wire Wire Line
	1450 1775 1450 1875
Wire Wire Line
	1450 1875 1450 1975
Connection ~ 1450 1875
Connection ~ 1450 1975
Connection ~ 1450 2075
Wire Wire Line
	1450 2075 1450 2175
Wire Wire Line
	1450 1975 1450 2075
Wire Wire Line
	1650 1775 1650 2025
Wire Wire Line
	1450 1775 1650 1775
Connection ~ 1450 1775
Connection ~ 1650 1775
Text Notes 6750 900  0    50   ~ 0
adjustable offset can be achieved by running a wire\nfrom the gnd adjust jumper to V_lin_pitchmod_3\n(TODO: set the resistor value accordingly)
Text Notes 650  1850 3    50   ~ 0
ca 290mV/oct
Text GLabel 9825 1500 2    50   Input ~ 0
V_tune
$Comp
L Device:R_POT R?
U 1 1 5D47F832
P 9675 1500
F 0 "R?" H 9606 1546 50  0000 R CNN
F 1 "R_POT" H 9606 1455 50  0000 R CNN
F 2 "" H 9675 1500 50  0001 C CNN
F 3 "~" H 9675 1500 50  0001 C CNN
	1    9675 1500
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR?
U 1 1 5D480B46
P 9675 1650
F 0 "#PWR?" H 9675 1500 50  0001 C CNN
F 1 "VEE" H 9693 1823 50  0000 C CNN
F 2 "" H 9675 1650 50  0001 C CNN
F 3 "" H 9675 1650 50  0001 C CNN
	1    9675 1650
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D4820BF
P 9675 1350
F 0 "#PWR?" H 9675 1200 50  0001 C CNN
F 1 "VCC" H 9692 1523 50  0000 C CNN
F 2 "" H 9675 1350 50  0001 C CNN
F 3 "" H 9675 1350 50  0001 C CNN
	1    9675 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3275 2425 3125 2425
Wire Wire Line
	3675 2425 3800 2425
$EndSCHEMATC
