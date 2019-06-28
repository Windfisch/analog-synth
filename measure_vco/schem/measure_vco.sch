EESchema Schematic File Version 4
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
Text GLabel 9700 3700 2    50   Input ~ 0
V_control
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
Text GLabel 2900 5650 1    50   Input ~ 0
triangle
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
Text GLabel 10500 4050 2    50   Input ~ 0
V_tune
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
Text Notes 3500 2050 0    50   ~ 0
or use\nBCM847
Text Notes 900  1350 0    50   ~ 0
10k / 534k = 0.0187\ni.e. for 1V on V_control, the output\nwill change by 18.7mV.
Text Notes 3950 2850 0    50   ~ 0
for Q4, the following holds true:\nI_C = const * exp(V_B / VT) with VT=26mV\n(thermal voltage of a transistor)\nnow this means that Vout will double\nevery (log(2) * 26mV) = 18mV.
Text Notes 2700 950  0    50   ~ 0
R16 determines the I_C current through\nQ4 when Q4's base is at GNDREF.\nTogether with V_tune, it determines the pitch.\nChoose R16 and V_tune such, that U8's output needs\nto be at around GNDREF for "sane" pitches.
$Comp
L Transistor_FET:2N7000 Q1
U 1 1 5D1BA17F
P 1750 6750
F 0 "Q1" H 1956 6796 50  0000 L CNN
F 1 "2N7000" H 1956 6705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1950 6675 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 1750 6750 50  0001 L CNN
	1    1750 6750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1650 6400 1650 6550
Wire Wire Line
	1950 6750 2100 6750
Wire Wire Line
	1650 6950 1650 7100
Wire Wire Line
	2550 6600 2600 6600
$Comp
L Device:R_Small R15
U 1 1 5CFA6D5B
P 2650 6700
F 0 "R15" V 2550 6750 50  0000 R CNN
F 1 "100k" V 2650 6750 31  0000 R CNN
F 2 "" H 2650 6700 50  0001 C CNN
F 3 "~" H 2650 6700 50  0001 C CNN
	1    2650 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 6600 2600 6400
Wire Wire Line
	2600 6400 2850 6400
Connection ~ 2600 6600
Wire Wire Line
	2600 6600 2650 6600
Wire Wire Line
	2900 5650 2900 5900
Connection ~ 2900 5900
Text Notes 3000 5400 0    50   ~ 0
unused
$Comp
L Device:R_POT RV?
U 1 1 5D1F262E
P 10350 4050
F 0 "RV?" H 10280 4096 50  0000 R CNN
F 1 "1k" H 10280 4005 50  0000 R CNN
F 2 "" H 10350 4050 50  0001 C CNN
F 3 "~" H 10350 4050 50  0001 C CNN
	1    10350 4050
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR?
U 1 1 5D1F30D6
P 10350 4200
F 0 "#PWR?" H 10350 4050 50  0001 C CNN
F 1 "VEE" H 10368 4373 50  0000 C CNN
F 2 "" H 10350 4200 50  0001 C CNN
F 3 "" H 10350 4200 50  0001 C CNN
	1    10350 4200
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D1F38FD
P 10350 3900
F 0 "#PWR?" H 10350 3750 50  0001 C CNN
F 1 "VCC" H 10367 4073 50  0000 C CNN
F 2 "" H 10350 3900 50  0001 C CNN
F 3 "" H 10350 3900 50  0001 C CNN
	1    10350 3900
	1    0    0    -1  
$EndComp
Text Notes 10500 4400 0    50   ~ 0
middle\npositon\nis fine
$Comp
L Analog_DAC:MCP4822 U?
U 1 1 5D1F7952
P 9200 3800
F 0 "U?" H 8800 4250 50  0000 C CNN
F 1 "MCP4822" H 8900 4150 50  0000 C CNN
F 2 "" H 10000 3500 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 10000 3500 50  0001 C CNN
	1    9200 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2000 4500 2000
Wire Wire Line
	3500 6300 5650 6300
Text GLabel 8700 3700 0    50   Input ~ 0
STM32_PE12
Text GLabel 8700 3900 0    50   Input ~ 0
STM32_PE14
Text GLabel 8700 4000 0    50   Input ~ 0
STM32_PE13
Wire Wire Line
	8700 3800 8100 3800
Wire Wire Line
	8100 3800 8100 4300
Wire Wire Line
	8100 4300 9200 4300
$Comp
L power:GNDREF #PWR?
U 1 1 5D1FFD8B
P 9200 4400
F 0 "#PWR?" H 9200 4150 50  0001 C CNN
F 1 "GNDREF" H 9205 4227 50  0000 C CNN
F 2 "" H 9200 4400 50  0001 C CNN
F 3 "" H 9200 4400 50  0001 C CNN
	1    9200 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4400 9200 4300
Connection ~ 9200 4300
$Comp
L power:VCC #PWR?
U 1 1 5D20405E
P 9200 3400
F 0 "#PWR?" H 9200 3250 50  0001 C CNN
F 1 "VCC" H 9217 3573 50  0000 C CNN
F 2 "" H 9200 3400 50  0001 C CNN
F 3 "" H 9200 3400 50  0001 C CNN
	1    9200 3400
	1    0    0    -1  
$EndComp
NoConn ~ 9700 4000
$Comp
L Diode:1N5817 D?
U 1 1 5D20D972
P 9150 5650
F 0 "D?" V 9104 5729 50  0000 L CNN
F 1 "1N5817" V 9195 5729 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 9150 5475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 9150 5650 50  0001 C CNN
	1    9150 5650
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D20E97C
P 9150 5250
F 0 "R?" H 9220 5296 50  0000 L CNN
F 1 "10k" V 9150 5200 50  0000 L CNN
F 2 "" V 9080 5250 50  0001 C CNN
F 3 "~" H 9150 5250 50  0001 C CNN
	1    9150 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5D20F2EC
P 9150 5800
F 0 "#PWR?" H 9150 5550 50  0001 C CNN
F 1 "GNDREF" H 9155 5627 50  0000 C CNN
F 2 "" H 9150 5800 50  0001 C CNN
F 3 "" H 9150 5800 50  0001 C CNN
	1    9150 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 5500 9150 5450
Text GLabel 9400 5450 2    50   Input ~ 0
STM32_PE7
Wire Wire Line
	9400 5450 9150 5450
Connection ~ 9150 5450
Wire Wire Line
	9150 5450 9150 5400
Text GLabel 8900 5100 0    50   Input ~ 0
square_ctl
Wire Wire Line
	8900 5100 9150 5100
Text Notes 9350 5350 0    50   ~ 0
measurement pin
Text Notes 8250 6350 0    50   ~ 0
square_ctl swings between Vee and Vcc - 1.5V (circa).\nGNDREF is at (Vcc+Vee)/2, i.e. PE7 sees 3V for\nVcc-Vee = 9V.\nThe diode clamps away negative voltages.
$EndSCHEMATC
