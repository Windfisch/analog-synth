EESchema Schematic File Version 4
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
$Comp
L pspice:OPAMP U1
U 1 1 5CEFFDD2
P 8150 1500
F 0 "U1" H 8300 1400 50  0000 L CNN
F 1 "LM324" H 8250 1300 50  0000 L CNN
F 2 "" H 8150 1500 50  0001 C CNN
F 3 "~" H 8150 1500 50  0001 C CNN
F 4 "X" H 8150 1500 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 8150 1500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 8150 1500 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LM324.ti.lib" H 8150 1500 50  0001 C CNN "Spice_Lib_File"
F 8 "1,2,4,5,3" H 8150 1500 50  0001 C CNN "Spice_Node_Sequence"
	1    8150 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5CF04A0E
P 7650 1150
F 0 "R1" H 7500 1200 50  0000 L CNN
F 1 "100k" V 7650 1050 50  0000 L CNN
F 2 "" V 7580 1150 50  0001 C CNN
F 3 "~" H 7650 1150 50  0001 C CNN
	1    7650 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5CF0529A
P 7650 1650
F 0 "R2" H 7500 1600 50  0000 L CNN
F 1 "100k" V 7650 1550 50  0000 L CNN
F 2 "" V 7580 1650 50  0001 C CNN
F 3 "~" H 7650 1650 50  0001 C CNN
	1    7650 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 900  7650 950 
Wire Wire Line
	7650 1300 7650 1400
Wire Wire Line
	7650 1400 7850 1400
Connection ~ 7650 1400
Wire Wire Line
	7650 1400 7650 1500
Wire Wire Line
	8050 1950 8050 1800
Wire Wire Line
	8050 950  8050 1200
Connection ~ 7650 950 
Wire Wire Line
	7650 950  7650 1000
Wire Wire Line
	8750 1650 8750 1500
Text Notes 8200 1200 0    50   ~ 0
Rail splitter:\nVirtual Ground
$Comp
L pspice:VSOURCE V1
U 1 1 5CF077E7
P 7250 1450
F 0 "V1" H 6850 1550 50  0000 L CNN
F 1 "9" H 6850 1300 50  0000 L CNN
F 2 "" H 7250 1450 50  0001 C CNN
F 3 "~" H 7250 1450 50  0001 C CNN
	1    7250 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 950  7250 1150
Wire Wire Line
	7250 1750 7250 1950
Wire Wire Line
	7650 950  7250 950 
Wire Wire Line
	7650 950  8050 950 
Wire Wire Line
	7650 1800 7650 1950
Wire Wire Line
	7250 1950 7650 1950
Connection ~ 7650 1950
Wire Wire Line
	8050 1950 7650 1950
Wire Wire Line
	7800 1850 7800 1600
Wire Wire Line
	7800 1600 7850 1600
Wire Wire Line
	7800 1850 8550 1850
$Comp
L power:VCC #PWR01
U 1 1 5CF0E364
P 7650 900
F 0 "#PWR01" H 7650 750 50  0001 C CNN
F 1 "VCC" H 7667 1073 50  0000 C CNN
F 2 "" H 7650 900 50  0001 C CNN
F 3 "" H 7650 900 50  0001 C CNN
	1    7650 900 
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR02
U 1 1 5CF0FCB5
P 7650 2000
F 0 "#PWR02" H 7650 1850 50  0001 C CNN
F 1 "VEE" H 7668 2173 50  0000 C CNN
F 2 "" H 7650 2000 50  0001 C CNN
F 3 "" H 7650 2000 50  0001 C CNN
	1    7650 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	7650 1950 7650 2000
Wire Wire Line
	8450 1500 8550 1500
Wire Wire Line
	8550 1500 8550 1850
Connection ~ 8550 1500
Wire Wire Line
	8550 1500 8750 1500
$Comp
L pspice:0 #GND01
U 1 1 5CF02FCA
P 7250 2100
F 0 "#GND01" H 7250 2000 50  0001 C CNN
F 1 "0" H 7200 2200 50  0000 C CNN
F 2 "" H 7250 2100 50  0001 C CNN
F 3 "~" H 7250 2100 50  0001 C CNN
	1    7250 2100
	1    0    0    -1  
$EndComp
Connection ~ 7250 1950
Wire Wire Line
	7250 2100 7250 1950
$Comp
L power:GNDREF #PWR08
U 1 1 5CF0644C
P 8750 1650
F 0 "#PWR08" H 8750 1400 50  0001 C CNN
F 1 "GNDREF" H 8755 1477 50  0001 C CNN
F 2 "" H 8750 1650 50  0001 C CNN
F 3 "" H 8750 1650 50  0001 C CNN
	1    8750 1650
	1    0    0    -1  
$EndComp
Text GLabel 7200 2950 1    50   Input ~ 0
V_control
$Comp
L Device:R R9001
U 1 1 5CF0C88B
P 7650 3350
F 0 "R9001" H 7720 3396 50  0000 L CNN
F 1 "1T" H 7720 3305 50  0000 L CNN
F 2 "" V 7580 3350 50  0001 C CNN
F 3 "~" H 7650 3350 50  0001 C CNN
	1    7650 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3050 7200 3000
Wire Wire Line
	7200 3000 7650 3000
Wire Wire Line
	7650 3000 7650 3200
Connection ~ 7200 3000
Wire Wire Line
	7200 3000 7200 2950
Wire Wire Line
	7200 3700 7650 3700
Wire Wire Line
	7650 3700 7650 3500
Wire Wire Line
	7200 3700 7200 3650
Text Notes 7350 2850 0    50   ~ 0
Pitch\ncontrol\nvoltage
$Comp
L power:GNDREF #PWR011
U 1 1 5CF3D9DC
P 7200 3700
F 0 "#PWR011" H 7200 3450 50  0001 C CNN
F 1 "GNDREF" H 7205 3527 50  0001 C CNN
F 2 "" H 7200 3700 50  0001 C CNN
F 3 "" H 7200 3700 50  0001 C CNN
	1    7200 3700
	1    0    0    -1  
$EndComp
Connection ~ 7200 3700
$Comp
L pspice:OPAMP U2
U 1 1 5CF0F48E
P 2250 5900
F 0 "U2" H 2400 5800 50  0000 L CNN
F 1 "LM324" H 2350 5700 50  0000 L CNN
F 2 "" H 2250 5900 50  0001 C CNN
F 3 "~" H 2250 5900 50  0001 C CNN
F 4 "X" H 2250 5900 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 2250 5900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2250 5900 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LM324.ti.lib" H 2250 5900 50  0001 C CNN "Spice_Lib_File"
F 8 "1,2,4,5,3" H 2250 5900 50  0001 C CNN "Spice_Node_Sequence"
	1    2250 5900
	1    0    0    1   
$EndComp
$Comp
L power:VCC #PWR06
U 1 1 5CF1034A
P 2150 6200
F 0 "#PWR06" H 2150 6050 50  0001 C CNN
F 1 "VCC" H 2050 6250 50  0000 C CNN
F 2 "" H 2150 6200 50  0001 C CNN
F 3 "" H 2150 6200 50  0001 C CNN
	1    2150 6200
	-1   0    0    1   
$EndComp
$Comp
L power:VEE #PWR05
U 1 1 5CF108F1
P 2150 5600
F 0 "#PWR05" H 2150 5450 50  0001 C CNN
F 1 "VEE" H 2250 5650 50  0000 C CNN
F 2 "" H 2150 5600 50  0001 C CNN
F 3 "" H 2150 5600 50  0001 C CNN
	1    2150 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 5800 1950 5800
Wire Wire Line
	2650 5900 2550 5900
Connection ~ 1850 5800
Text GLabel 1050 5900 0    50   Input ~ 0
V_expo
Wire Wire Line
	1550 5800 1650 5800
Wire Wire Line
	1050 5900 1150 5900
Wire Wire Line
	1150 5900 1150 5800
Wire Wire Line
	1150 5800 1250 5800
Wire Wire Line
	1150 5900 1150 6000
Wire Wire Line
	1150 6000 1250 6000
Connection ~ 1150 5900
$Comp
L power:GNDREF #PWR04
U 1 1 5CF229F9
P 1850 6300
F 0 "#PWR04" H 1850 6050 50  0001 C CNN
F 1 "GNDREF" H 1855 6127 50  0001 C CNN
F 2 "" H 1850 6300 50  0001 C CNN
F 3 "" H 1850 6300 50  0001 C CNN
	1    1850 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 6100 1650 5800
Connection ~ 1650 5800
Wire Wire Line
	1650 5800 1850 5800
Wire Wire Line
	1550 6000 1850 6000
Connection ~ 1850 6000
Wire Wire Line
	1850 6000 1950 6000
Wire Wire Line
	2400 6750 2400 7000
$Comp
L power:GNDREF #PWR03
U 1 1 5CF3BC48
P 1650 7100
F 0 "#PWR03" H 1650 6850 50  0001 C CNN
F 1 "GNDREF" H 1655 6927 50  0001 C CNN
F 2 "" H 1650 7100 50  0001 C CNN
F 3 "" H 1650 7100 50  0001 C CNN
	1    1650 7100
	1    0    0    -1  
$EndComp
Text GLabel 5650 6300 2    50   Input ~ 0
square_ctl
Text GLabel 5700 4650 2    50   Input ~ 0
triangle
$Comp
L pspice:QNPN Q1
U 1 1 5CF31B1E
P 1800 6750
F 0 "Q1" H 2027 6796 50  0000 L CNN
F 1 "BC546" H 2027 6705 50  0000 L CNN
F 2 "" H 1800 6750 50  0001 C CNN
F 3 "~" H 1800 6750 50  0001 C CNN
F 4 "Q" H 1800 6750 50  0001 C CNN "Spice_Primitive"
F 5 "BC546B" H 1800 6750 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1800 6750 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "BC546.lib" H 1800 6750 50  0001 C CNN "Spice_Lib_File"
	1    1800 6750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1850 5250 2000 5250
Wire Wire Line
	1850 5250 1850 5800
Wire Wire Line
	2500 5250 2650 5250
Wire Wire Line
	2650 5250 2650 5900
$Comp
L Device:R R9
U 1 1 5CF3873D
P 3100 6850
F 0 "R9" V 3000 6850 50  0000 C CNN
F 1 "100k" V 3100 6850 50  0000 C CNN
F 2 "" V 3030 6850 50  0001 C CNN
F 3 "~" H 3100 6850 50  0001 C CNN
	1    3100 6850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5700 4650 4150 4650
Connection ~ 3500 6300
Wire Wire Line
	2400 7000 3500 7000
Wire Wire Line
	3500 7000 3500 6850
Wire Wire Line
	3500 6850 3500 6300
Connection ~ 3500 6850
Wire Wire Line
	3250 6850 3500 6850
Wire Wire Line
	2850 6850 2950 6850
Wire Wire Line
	2500 6400 2450 6400
Wire Wire Line
	2850 6400 2800 6400
Wire Wire Line
	2900 6400 2850 6400
Connection ~ 2850 6400
Wire Wire Line
	2850 6400 2850 6850
$Comp
L power:VCC #PWR010
U 1 1 5CF357C9
P 3100 6600
F 0 "#PWR010" H 3100 6450 50  0001 C CNN
F 1 "VCC" H 3000 6650 50  0000 C CNN
F 2 "" H 3100 6600 50  0001 C CNN
F 3 "" H 3100 6600 50  0001 C CNN
	1    3100 6600
	-1   0    0    1   
$EndComp
$Comp
L power:VEE #PWR09
U 1 1 5CF354CF
P 3100 6000
F 0 "#PWR09" H 3100 5850 50  0001 C CNN
F 1 "VEE" H 3200 6050 50  0000 C CNN
F 2 "" H 3100 6000 50  0001 C CNN
F 3 "" H 3100 6000 50  0001 C CNN
	1    3100 6000
	1    0    0    -1  
$EndComp
$Comp
L pspice:OPAMP U3
U 1 1 5CF325BB
P 3200 6300
F 0 "U3" H 3350 6200 50  0000 L CNN
F 1 "LM324" H 3300 6100 50  0000 L CNN
F 2 "" H 3200 6300 50  0001 C CNN
F 3 "~" H 3200 6300 50  0001 C CNN
F 4 "X" H 3200 6300 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 3200 6300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3200 6300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LM324.ti.lib" H 3200 6300 50  0001 C CNN "Spice_Lib_File"
F 8 "1,2,4,5,3" H 3200 6300 50  0001 C CNN "Spice_Node_Sequence"
	1    3200 6300
	1    0    0    1   
$EndComp
Wire Wire Line
	2650 5900 2900 5900
Connection ~ 2650 5900
Wire Wire Line
	2900 5900 2900 6200
$Comp
L power:VCC #PWR014
U 1 1 5CF66BD1
P 4900 5600
F 0 "#PWR014" H 4900 5450 50  0001 C CNN
F 1 "VCC" H 4800 5650 50  0000 C CNN
F 2 "" H 4900 5600 50  0001 C CNN
F 3 "" H 4900 5600 50  0001 C CNN
	1    4900 5600
	-1   0    0    1   
$EndComp
$Comp
L power:VEE #PWR013
U 1 1 5CF66BDB
P 4900 5000
F 0 "#PWR013" H 4900 4850 50  0001 C CNN
F 1 "VEE" H 5000 5050 50  0000 C CNN
F 2 "" H 4900 5000 50  0001 C CNN
F 3 "" H 4900 5000 50  0001 C CNN
	1    4900 5000
	1    0    0    -1  
$EndComp
$Comp
L pspice:OPAMP U4
U 1 1 5CF66BEA
P 5000 5300
F 0 "U4" H 5150 5200 50  0000 L CNN
F 1 "LM324" H 5100 5100 50  0000 L CNN
F 2 "" H 5000 5300 50  0001 C CNN
F 3 "~" H 5000 5300 50  0001 C CNN
F 4 "X" H 5000 5300 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 5000 5300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5000 5300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LM324.ti.lib" H 5000 5300 50  0001 C CNN "Spice_Lib_File"
F 8 "1,2,4,5,3" H 5000 5300 50  0001 C CNN "Spice_Node_Sequence"
	1    5000 5300
	1    0    0    1   
$EndComp
Wire Wire Line
	4600 5200 4650 5200
Wire Wire Line
	4650 5150 4650 5200
Connection ~ 4650 5200
Wire Wire Line
	4650 5200 4700 5200
Wire Wire Line
	4650 4850 4650 4800
Wire Wire Line
	4650 4800 5400 4800
Wire Wire Line
	5400 4800 5400 5300
Wire Wire Line
	5400 5300 5300 5300
Wire Wire Line
	4150 5200 4300 5200
$Comp
L power:GNDREF #PWR012
U 1 1 5CF85DC5
P 4650 6100
F 0 "#PWR012" H 4650 5850 50  0001 C CNN
F 1 "GNDREF" H 4655 5927 50  0001 C CNN
F 2 "" H 4650 6100 50  0001 C CNN
F 3 "" H 4650 6100 50  0001 C CNN
	1    4650 6100
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5CF81086
P 4450 5400
F 0 "R13" V 4350 5400 50  0000 C CNN
F 1 "100k" V 4450 5400 50  0000 C CNN
F 2 "" V 4380 5400 50  0001 C CNN
F 3 "~" H 4450 5400 50  0001 C CNN
	1    4450 5400
	0    1    -1   0   
$EndComp
Text GLabel 5700 5300 2    50   Input ~ 0
sawtooth
Wire Wire Line
	5700 5300 5400 5300
Connection ~ 5400 5300
Wire Wire Line
	3500 6300 3800 6300
Wire Wire Line
	3800 6150 3800 6300
Connection ~ 3800 6300
Wire Wire Line
	3800 6300 5650 6300
$Comp
L pspice:QNPN Q2
U 1 1 5CF6A60E
P 4500 5750
F 0 "Q2" H 4200 5600 50  0000 L CNN
F 1 "BC546" H 4050 5500 50  0000 L CNN
F 2 "" H 4500 5750 50  0001 C CNN
F 3 "~" H 4500 5750 50  0001 C CNN
F 4 "Q" H 4500 5750 50  0001 C CNN "Spice_Primitive"
F 5 "BC546B" H 4500 5750 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4500 5750 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "BC546.lib" H 4500 5750 50  0001 C CNN "Spice_Lib_File"
	1    4500 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 5200 4150 4650
Connection ~ 4150 4650
Wire Wire Line
	4150 4650 2900 4650
$Comp
L Device:R R11
U 1 1 5CF775B1
P 4450 5200
F 0 "R11" V 4350 5200 50  0000 C CNN
F 1 "100k" V 4450 5200 50  0000 C CNN
F 2 "" V 4380 5200 50  0001 C CNN
F 3 "~" H 4450 5200 50  0001 C CNN
	1    4450 5200
	0    -1   1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5CF782B8
P 4650 5000
F 0 "R12" V 4550 5000 50  0000 C CNN
F 1 "100k" V 4650 5000 50  0000 C CNN
F 2 "" V 4580 5000 50  0001 C CNN
F 3 "~" H 4650 5000 50  0001 C CNN
	1    4650 5000
	1    0    0    1   
$EndComp
Connection ~ 2900 5900
Wire Wire Line
	2900 4650 2900 5900
$Comp
L Device:R R8
U 1 1 5CF3696D
P 2650 6400
F 0 "R8" V 2750 6400 50  0000 C CNN
F 1 "50k" V 2650 6400 50  0000 C CNN
F 2 "" V 2580 6400 50  0001 C CNN
F 3 "~" H 2650 6400 50  0001 C CNN
	1    2650 6400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5CF9A0F2
P 3800 6000
F 0 "R10" V 3700 6000 50  0000 C CNN
F 1 "10k" V 3800 6000 50  0000 C CNN
F 2 "" V 3730 6000 50  0001 C CNN
F 3 "~" H 3800 6000 50  0001 C CNN
	1    3800 6000
	1    0    0    -1  
$EndComp
Text Notes 3550 6850 0    50   ~ 0
If R8 was connected to GNDREF, the triangle would be\ncentered around GNDREF, but only if the output of the\ncomparator U3 would swing between Vcc and Vee.\nHowever, U3 swings between less-than-Vcc and\nexactly Vee, so the triangle isn't centered.\nR14 and R15 comprise a poti to compensate for that.
$Comp
L Device:R_Small R14
U 1 1 5CFA586D
P 2550 6700
F 0 "R14" V 2600 6750 50  0000 R CNN
F 1 "100k" V 2550 6750 31  0000 R CNN
F 2 "" H 2550 6700 50  0001 C CNN
F 3 "~" H 2550 6700 50  0001 C CNN
	1    2550 6700
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R15
U 1 1 5CFA6D5B
P 2650 6700
F 0 "R15" V 2550 6750 50  0000 R CNN
F 1 "146k" V 2650 6750 31  0000 R CNN
F 2 "" H 2650 6700 50  0001 C CNN
F 3 "~" H 2650 6700 50  0001 C CNN
	1    2650 6700
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 5CFA7531
P 2550 6800
F 0 "#PWR07" H 2550 6650 50  0001 C CNN
F 1 "VCC" H 2600 6950 50  0000 C CNN
F 2 "" H 2550 6800 50  0001 C CNN
F 3 "" H 2550 6800 50  0001 C CNN
	1    2550 6800
	-1   0    0    1   
$EndComp
$Comp
L power:VEE #PWR015
U 1 1 5CFA7D23
P 2650 6800
F 0 "#PWR015" H 2650 6650 50  0001 C CNN
F 1 "VEE" H 2600 6950 50  0000 C CNN
F 2 "" H 2650 6800 50  0001 C CNN
F 3 "" H 2650 6800 50  0001 C CNN
	1    2650 6800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 6600 2600 6600
Wire Wire Line
	2600 6600 2600 6550
Wire Wire Line
	2600 6550 2450 6550
Wire Wire Line
	2450 6400 2450 6550
Connection ~ 2600 6600
Wire Wire Line
	2600 6600 2550 6600
Text Notes 2500 6850 0    50   ~ 0
Poti
$Comp
L power:VCC #PWR0101
U 1 1 5CFB0A95
P 4900 3850
F 0 "#PWR0101" H 4900 3700 50  0001 C CNN
F 1 "VCC" H 4800 3900 50  0000 C CNN
F 2 "" H 4900 3850 50  0001 C CNN
F 3 "" H 4900 3850 50  0001 C CNN
	1    4900 3850
	-1   0    0    -1  
$EndComp
$Comp
L power:VEE #PWR0102
U 1 1 5CFB0A9F
P 4900 4450
F 0 "#PWR0102" H 4900 4300 50  0001 C CNN
F 1 "VEE" H 5000 4500 50  0000 C CNN
F 2 "" H 4900 4450 50  0001 C CNN
F 3 "" H 4900 4450 50  0001 C CNN
	1    4900 4450
	1    0    0    1   
$EndComp
$Comp
L pspice:OPAMP U5
U 1 1 5CFB0AAE
P 5000 4150
F 0 "U5" H 5150 4050 50  0000 L CNN
F 1 "LM324" H 5100 3950 50  0000 L CNN
F 2 "" H 5000 4150 50  0001 C CNN
F 3 "~" H 5000 4150 50  0001 C CNN
F 4 "X" H 5000 4150 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 5000 4150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5000 4150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LM324.ti.lib" H 5000 4150 50  0001 C CNN "Spice_Lib_File"
F 8 "1,2,4,5,3" H 5000 4150 50  0001 C CNN "Spice_Node_Sequence"
	1    5000 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4250 4150 4250
Wire Wire Line
	4150 4250 4150 4650
Text GLabel 1050 4050 0    50   Input ~ 0
V_pwm
Wire Wire Line
	4700 4050 1050 4050
Text GLabel 5700 4150 2    50   Input ~ 0
pulse
Wire Wire Line
	5700 4150 5300 4150
Text Notes 5650 6250 0    50   ~ 0
do not use
Text GLabel 8600 2950 1    50   Input ~ 0
V_pwm
$Comp
L Device:R R9002
U 1 1 5CFC3976
P 9050 3350
F 0 "R9002" H 9120 3396 50  0000 L CNN
F 1 "1T" H 9120 3305 50  0000 L CNN
F 2 "" V 8980 3350 50  0001 C CNN
F 3 "~" H 9050 3350 50  0001 C CNN
	1    9050 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3050 8600 3000
Wire Wire Line
	8600 3000 9050 3000
Wire Wire Line
	9050 3000 9050 3200
Connection ~ 8600 3000
Wire Wire Line
	8600 3000 8600 2950
Wire Wire Line
	8600 3700 9050 3700
Wire Wire Line
	9050 3700 9050 3500
Wire Wire Line
	8600 3700 8600 3650
Text Notes 8750 2850 0    50   ~ 0
PWM\ncontrol\nvoltage
$Comp
L power:GNDREF #PWR0103
U 1 1 5CFC3989
P 8600 3700
F 0 "#PWR0103" H 8600 3450 50  0001 C CNN
F 1 "GNDREF" H 8605 3527 50  0001 C CNN
F 2 "" H 8600 3700 50  0001 C CNN
F 3 "" H 8600 3700 50  0001 C CNN
	1    8600 3700
	1    0    0    -1  
$EndComp
Connection ~ 8600 3700
$Comp
L Device:R R9003
U 1 1 5CFC8E62
P 10900 3450
F 0 "R9003" H 10970 3496 50  0000 L CNN
F 1 "1T" H 10970 3405 50  0000 L CNN
F 2 "" V 10830 3450 50  0001 C CNN
F 3 "~" H 10900 3450 50  0001 C CNN
	1    10900 3450
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND0101
U 1 1 5CFC8916
P 10900 3600
F 0 "#GND0101" H 10900 3500 50  0001 C CNN
F 1 "0" H 10850 3700 50  0000 C CNN
F 2 "" H 10900 3600 50  0001 C CNN
F 3 "~" H 10900 3600 50  0001 C CNN
	1    10900 3600
	1    0    0    -1  
$EndComp
Text GLabel 10900 3300 1    50   Input ~ 0
pulse
Text Notes 1350 7750 0    50   ~ 0
R3 * C1 should be 100µs, this affects the frequency range\nR3 : R5 must be 2:1, this affects the triangle shape\nR4 : R6 must be 1:1, this affects the triangle shape\nR8 : R9 should be 1:2, this affects the triangle amplitude and\nfrequency range. If R9 is too large, this may cause distortion\nR11 : R12 should be 1:1, this affects sawtooth amplitude
$Comp
L pspice:QNPN Q3
U 1 1 5CFCE26D
P 3250 2000
F 0 "Q3" H 2950 2300 50  0000 L CNN
F 1 "BC546" H 2950 2200 50  0000 L CNN
F 2 "" H 3250 2000 50  0001 C CNN
F 3 "~" H 3250 2000 50  0001 C CNN
F 4 "Q" H 3250 2000 50  0001 C CNN "Spice_Primitive"
F 5 "BC546B" H 3250 2000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3250 2000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "BC546.lib" H 3250 2000 50  0001 C CNN "Spice_Lib_File"
	1    3250 2000
	1    0    0    -1  
$EndComp
$Comp
L pspice:QNPN Q4
U 1 1 5CFCE8C0
P 4050 2000
F 0 "Q4" H 3750 2300 50  0000 L CNN
F 1 "BC546" H 3750 2200 50  0000 L CNN
F 2 "" H 4050 2000 50  0001 C CNN
F 3 "~" H 4050 2000 50  0001 C CNN
F 4 "Q" H 4050 2000 50  0001 C CNN "Spice_Primitive"
F 5 "BC546B" H 4050 2000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4050 2000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "BC546.lib" H 4050 2000 50  0001 C CNN "Spice_Lib_File"
	1    4050 2000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3400 2350 3650 2350
Wire Wire Line
	3650 2350 3650 2450
Connection ~ 3650 2350
Wire Wire Line
	3650 2350 3900 2350
$Comp
L Device:R R17
U 1 1 5CFD4C91
P 3650 2600
F 0 "R17" H 3720 2646 50  0000 L CNN
F 1 "1k" H 3720 2555 50  0000 L CNN
F 2 "" V 3580 2600 50  0001 C CNN
F 3 "~" H 3650 2600 50  0001 C CNN
	1    3650 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR020
U 1 1 5CFD577B
P 4500 2150
F 0 "#PWR020" H 4500 1900 50  0001 C CNN
F 1 "GNDREF" H 4505 1977 50  0001 C CNN
F 2 "" H 4500 2150 50  0001 C CNN
F 3 "" H 4500 2150 50  0001 C CNN
	1    4500 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2150 4500 2000
Wire Wire Line
	4500 2000 4350 2000
$Comp
L pspice:OPAMP U6
U 1 1 5CFDF76A
P 2850 3150
F 0 "U6" H 3000 3050 50  0000 L CNN
F 1 "LM324" H 2950 2950 50  0000 L CNN
F 2 "" H 2850 3150 50  0001 C CNN
F 3 "~" H 2850 3150 50  0001 C CNN
F 4 "X" H 2850 3150 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 2850 3150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2850 3150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LM324.ti.lib" H 2850 3150 50  0001 C CNN "Spice_Lib_File"
F 8 "1,2,4,5,3" H 2850 3150 50  0001 C CNN "Spice_Node_Sequence"
	1    2850 3150
	1    0    0    1   
$EndComp
Wire Wire Line
	3150 3150 3350 3150
Wire Wire Line
	3400 1550 3400 1600
$Comp
L power:VCC #PWR019
U 1 1 5CFE7146
P 3400 1250
F 0 "#PWR019" H 3400 1100 50  0001 C CNN
F 1 "VCC" H 3417 1423 50  0000 C CNN
F 2 "" H 3400 1250 50  0001 C CNN
F 3 "" H 3400 1250 50  0001 C CNN
	1    3400 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5CFE3C94
P 3400 1400
F 0 "R16" H 3470 1446 50  0000 L CNN
F 1 "100k" H 3470 1355 50  0000 L CNN
F 2 "" V 3330 1400 50  0001 C CNN
F 3 "~" H 3400 1400 50  0001 C CNN
	1    3400 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1600 2350 1600
Wire Wire Line
	2350 3050 2550 3050
Connection ~ 3400 1600
Wire Wire Line
	3400 1600 3400 1650
$Comp
L pspice:OPAMP U7
U 1 1 5CFF0C3A
P 5350 1700
F 0 "U7" H 5500 1600 50  0000 L CNN
F 1 "LM324" H 5450 1500 50  0000 L CNN
F 2 "" H 5350 1700 50  0001 C CNN
F 3 "~" H 5350 1700 50  0001 C CNN
F 4 "X" H 5350 1700 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 5350 1700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5350 1700 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LM324.ti.lib" H 5350 1700 50  0001 C CNN "Spice_Lib_File"
F 8 "1,2,4,5,3" H 5350 1700 50  0001 C CNN "Spice_Node_Sequence"
	1    5350 1700
	1    0    0    1   
$EndComp
$Comp
L power:VEE #PWR022
U 1 1 5CFF1E9C
P 5250 1400
F 0 "#PWR022" H 5250 1250 50  0001 C CNN
F 1 "VEE" H 5267 1573 50  0000 C CNN
F 2 "" H 5250 1400 50  0001 C CNN
F 3 "" H 5250 1400 50  0001 C CNN
	1    5250 1400
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR017
U 1 1 5CFF2176
P 2750 2850
F 0 "#PWR017" H 2750 2700 50  0001 C CNN
F 1 "VEE" H 2767 3023 50  0000 C CNN
F 2 "" H 2750 2850 50  0001 C CNN
F 3 "" H 2750 2850 50  0001 C CNN
	1    2750 2850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR018
U 1 1 5CFF25D9
P 2750 3450
F 0 "#PWR018" H 2750 3300 50  0001 C CNN
F 1 "VCC" H 2768 3623 50  0000 C CNN
F 2 "" H 2750 3450 50  0001 C CNN
F 3 "" H 2750 3450 50  0001 C CNN
	1    2750 3450
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR023
U 1 1 5CFF2C24
P 5250 2000
F 0 "#PWR023" H 5250 1850 50  0001 C CNN
F 1 "VCC" H 5268 2173 50  0000 C CNN
F 2 "" H 5250 2000 50  0001 C CNN
F 3 "" H 5250 2000 50  0001 C CNN
	1    5250 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 1050 5750 1050
Wire Wire Line
	5750 1050 5750 1700
Wire Wire Line
	5750 1700 5650 1700
$Comp
L power:GNDREF #PWR021
U 1 1 5CFF60BC
P 4900 1950
F 0 "#PWR021" H 4900 1700 50  0001 C CNN
F 1 "GNDREF" H 4905 1777 50  0001 C CNN
F 2 "" H 4900 1950 50  0001 C CNN
F 3 "" H 4900 1950 50  0001 C CNN
	1    4900 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1950 4900 1800
Wire Wire Line
	4900 1800 5050 1800
Wire Wire Line
	5050 1600 4900 1600
Wire Wire Line
	4900 1600 4900 1050
Wire Wire Line
	4900 1050 5200 1050
Wire Wire Line
	4900 1600 3900 1600
Wire Wire Line
	3900 1600 3900 1650
Connection ~ 4900 1600
Text GLabel 5900 1700 2    50   Input ~ 0
V_expo
Wire Wire Line
	5900 1700 5750 1700
Connection ~ 5750 1700
Text GLabel 950  1800 0    50   Input ~ 0
V_control
$Comp
L power:GNDREF #PWR016
U 1 1 5D0032F1
P 2350 3450
F 0 "#PWR016" H 2350 3200 50  0001 C CNN
F 1 "GNDREF" H 2355 3277 50  0001 C CNN
F 2 "" H 2350 3450 50  0001 C CNN
F 3 "" H 2350 3450 50  0001 C CNN
	1    2350 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3450 2350 3250
Wire Wire Line
	2350 3250 2550 3250
$Comp
L pspice:VSOURCE V3
U 1 1 5CFC396B
P 8600 3350
F 0 "V3" H 8200 3450 50  0000 L CNN
F 1 "1" H 8200 3200 50  0000 L CNN
F 2 "" H 8600 3350 50  0001 C CNN
F 3 "~" H 8600 3350 50  0001 C CNN
	1    8600 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5D01007D
P 2900 2550
F 0 "C2" V 2648 2550 50  0000 C CNN
F 1 "1n" V 2739 2550 50  0000 C CNN
F 2 "" H 2938 2400 50  0001 C CNN
F 3 "~" H 2900 2550 50  0001 C CNN
	1    2900 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 2750 3650 3150
Wire Wire Line
	2350 1600 2350 2550
Wire Wire Line
	2750 2550 2350 2550
Connection ~ 2350 2550
Wire Wire Line
	2350 2550 2350 3050
Wire Wire Line
	3050 2550 3350 2550
Wire Wire Line
	3350 2550 3350 3150
Connection ~ 3350 3150
Wire Wire Line
	3350 3150 3650 3150
$Comp
L pspice:OPAMP U8
U 1 1 5D02E19C
P 1850 2000
F 0 "U8" H 2000 1900 50  0000 L CNN
F 1 "LM324" H 1950 1800 50  0000 L CNN
F 2 "" H 1850 2000 50  0001 C CNN
F 3 "~" H 1850 2000 50  0001 C CNN
F 4 "X" H 1850 2000 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 1850 2000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1850 2000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LM324.ti.lib" H 1850 2000 50  0001 C CNN "Spice_Lib_File"
F 8 "1,2,4,5,3" H 1850 2000 50  0001 C CNN "Spice_Node_Sequence"
	1    1850 2000
	1    0    0    1   
$EndComp
Wire Wire Line
	2150 2000 2250 2000
$Comp
L power:VEE #PWR025
U 1 1 5D04F33D
P 1750 1700
F 0 "#PWR025" H 1750 1550 50  0001 C CNN
F 1 "VEE" H 1767 1873 50  0000 C CNN
F 2 "" H 1750 1700 50  0001 C CNN
F 3 "" H 1750 1700 50  0001 C CNN
	1    1750 1700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR026
U 1 1 5D04F683
P 1750 2300
F 0 "#PWR026" H 1750 2150 50  0001 C CNN
F 1 "VCC" H 1768 2473 50  0000 C CNN
F 2 "" H 1750 2300 50  0001 C CNN
F 3 "" H 1750 2300 50  0001 C CNN
	1    1750 2300
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR024
U 1 1 5D04FEE6
P 1400 2250
F 0 "#PWR024" H 1400 2000 50  0001 C CNN
F 1 "GNDREF" H 1405 2077 50  0000 C CNN
F 2 "" H 1400 2250 50  0001 C CNN
F 3 "" H 1400 2250 50  0001 C CNN
	1    1400 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2250 1400 2100
Wire Wire Line
	1400 2100 1550 2100
$Comp
L Device:R R19
U 1 1 5D054548
P 1100 1800
F 0 "R19" V 1000 1800 50  0000 C CNN
F 1 "534k" V 1100 1800 50  0000 C CNN
F 2 "" V 1030 1800 50  0001 C CNN
F 3 "~" H 1100 1800 50  0001 C CNN
	1    1100 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 1900 1450 1900
Wire Wire Line
	1450 1900 1450 1800
Connection ~ 1450 1900
Wire Wire Line
	1450 1900 1550 1900
Wire Wire Line
	1450 1500 1450 1400
Wire Wire Line
	1450 1400 2250 1400
Wire Wire Line
	2250 1400 2250 2000
Connection ~ 2250 2000
Wire Wire Line
	2250 2000 2950 2000
$Comp
L Device:R R21
U 1 1 5D062744
P 1100 2000
F 0 "R21" V 1200 2000 50  0000 C CNN
F 1 "220k" V 1100 2000 50  0000 C CNN
F 2 "" V 1030 2000 50  0001 C CNN
F 3 "~" H 1100 2000 50  0001 C CNN
	1    1100 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 1800 1350 1800
Wire Wire Line
	1350 1800 1350 1900
Wire Wire Line
	1350 1900 1350 2000
Wire Wire Line
	1350 2000 1250 2000
Connection ~ 1350 1900
Text GLabel 950  2000 0    50   Input ~ 0
V_tune
$Comp
L pspice:VSOURCE V4
U 1 1 5D06C0EC
P 9900 3350
F 0 "V4" H 9500 3450 50  0000 L CNN
F 1 "0" H 9500 3200 50  0000 L CNN
F 2 "" H 9900 3350 50  0001 C CNN
F 3 "~" H 9900 3350 50  0001 C CNN
	1    9900 3350
	1    0    0    -1  
$EndComp
Text GLabel 9900 2950 1    50   Input ~ 0
V_tune
$Comp
L Device:R R22
U 1 1 5D06C0F7
P 10350 3350
F 0 "R22" H 10420 3396 50  0000 L CNN
F 1 "1T" H 10420 3305 50  0000 L CNN
F 2 "" V 10280 3350 50  0001 C CNN
F 3 "~" H 10350 3350 50  0001 C CNN
	1    10350 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 3050 9900 3000
Wire Wire Line
	9900 3000 10350 3000
Wire Wire Line
	10350 3000 10350 3200
Connection ~ 9900 3000
Wire Wire Line
	9900 3000 9900 2950
Wire Wire Line
	9900 3700 10350 3700
Wire Wire Line
	10350 3700 10350 3500
Wire Wire Line
	9900 3700 9900 3650
Text Notes 10050 2850 0    50   ~ 0
Pitch\ntune\nvoltage
$Comp
L power:GNDREF #PWR027
U 1 1 5D06C10A
P 9900 3700
F 0 "#PWR027" H 9900 3450 50  0001 C CNN
F 1 "GNDREF" H 9905 3527 50  0001 C CNN
F 2 "" H 9900 3700 50  0001 C CNN
F 3 "" H 9900 3700 50  0001 C CNN
	1    9900 3700
	1    0    0    -1  
$EndComp
Connection ~ 9900 3700
Text Notes 7050 600  0    50   ~ 0
.tran 10u 10m
$Comp
L Device:R R20
U 1 1 5D054E64
P 1450 1650
F 0 "R20" V 1550 1700 50  0000 R CNN
F 1 "10k" V 1450 1700 50  0000 R CNN
F 2 "" V 1380 1650 50  0001 C CNN
F 3 "~" H 1450 1650 50  0001 C CNN
	1    1450 1650
	-1   0    0    1   
$EndComp
$Comp
L pspice:VSOURCE V2
U 1 1 5CF0AB02
P 7200 3350
F 0 "V2" H 6800 3450 50  0000 L CNN
F 1 "1" H 6800 3200 50  0000 L CNN
F 2 "" H 7200 3350 50  0001 C CNN
F 3 "~" H 7200 3350 50  0001 C CNN
	1    7200 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5CF3A8E6
P 2250 6750
F 0 "R7" V 2150 6750 50  0000 C CNN
F 1 "10k" V 2250 6750 50  0000 C CNN
F 2 "" V 2180 6750 50  0001 C CNN
F 3 "~" H 2250 6750 50  0001 C CNN
	1    2250 6750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5CF221B6
P 1850 6150
F 0 "R6" V 1750 6150 50  0000 C CNN
F 1 "47k" V 1850 6150 50  0000 C CNN
F 2 "" V 1780 6150 50  0001 C CNN
F 3 "~" H 1850 6150 50  0001 C CNN
	1    1850 6150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5CF2E04E
P 1650 6250
F 0 "R5" V 1750 6250 50  0000 C CNN
F 1 "47k" V 1650 6250 50  0000 C CNN
F 2 "" V 1580 6250 50  0001 C CNN
F 3 "~" H 1650 6250 50  0001 C CNN
	1    1650 6250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5CF2012A
P 1400 6000
F 0 "R4" V 1500 6000 50  0000 C CNN
F 1 "47k" V 1400 6000 50  0000 C CNN
F 2 "" V 1330 6000 50  0001 C CNN
F 3 "~" H 1400 6000 50  0001 C CNN
	1    1400 6000
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5CF1806F
P 1400 5800
F 0 "R3" V 1300 5800 50  0000 C CNN
F 1 "100k" V 1400 5800 50  0000 C CNN
F 2 "" V 1330 5800 50  0001 C CNN
F 3 "~" H 1400 5800 50  0001 C CNN
	1    1400 5800
	0    -1   1    0   
$EndComp
$Comp
L pspice:C C1
U 1 1 5CF42B86
P 2250 5250
F 0 "C1" V 1935 5250 50  0000 C CNN
F 1 "1n" V 2026 5250 50  0000 C CNN
F 2 "" H 2250 5250 50  0001 C CNN
F 3 "~" H 2250 5250 50  0001 C CNN
	1    2250 5250
	0    -1   1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 5CFF1629
P 5350 1050
F 0 "R18" V 5250 1050 50  0000 C CNN
F 1 "10k" V 5350 1050 50  0000 C CNN
F 2 "" V 5280 1050 50  0001 C CNN
F 3 "~" H 5350 1050 50  0001 C CNN
	1    5350 1050
	0    1    1    0   
$EndComp
Text Notes 3950 7750 0    50   ~ 0
Note that V_expo should be at least 250mV above GND to\navoid a distorted shape and a wrong frequency. This is because\nQ1, when turned on, still has a voltage about 25mV between C and E.\nThis reduces the current through R5, and thus reduces the discharge\nrate of C1. As a mitigation, either use large-enough control voltages,\nor put Q1's emitter at GND - 25mV.\nOr, preferably, replace Q1 with a MOSFET like the 2N7000.
Text Notes 800  6900 0    50   ~ 0
use 2N7000\nMOSFET instead
Wire Wire Line
	4600 5400 4650 5400
Wire Wire Line
	4300 5400 4150 5400
Wire Wire Line
	4150 5400 4150 5200
Connection ~ 4150 5200
Connection ~ 4650 5400
Wire Wire Line
	4650 5400 4700 5400
Wire Wire Line
	4200 5750 3800 5750
Wire Wire Line
	3800 5750 3800 5850
Text Notes 3500 2050 0    50   ~ 0
or use\nBCM847
Text Notes 900  1350 0    50   ~ 0
10k / 534k = 0.0187\ni.e. for 1V on V_control, the output\nwill change by 18.7mV.
Text Notes 3950 2850 0    50   ~ 0
for Q4, the following holds true:\nI_C = const * exp(V_B / VT) with VT=26mV\n(thermal voltage of a transistor)\nnow this means that Vout will double\nevery (log(2) * 26mV) = 18mV.
Text Notes 2700 950  0    50   ~ 0
R16 determines the I_C current through\nQ4 when Q4's base is at GNDREF.\nTogether with V_tune, it determines the pitch.\nChoose R16 and V_tune such, that U8's output needs\nto be at around GNDREF for "sane" pitches.
$EndSCHEMATC
