EESchema Schematic File Version 4
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
$Comp
L power:VEE #PWR010
U 1 1 5D9809F3
P 4200 4375
F 0 "#PWR010" H 4200 4225 50  0001 C CNN
F 1 "VEE" H 4218 4548 50  0000 C CNN
F 2 "" H 4200 4375 50  0001 C CNN
F 3 "" H 4200 4375 50  0001 C CNN
	1    4200 4375
	-1   0    0    1   
$EndComp
$Comp
L power:VEE #PWR09
U 1 1 5D9813BC
P 3900 4375
F 0 "#PWR09" H 3900 4225 50  0001 C CNN
F 1 "VEE" H 3918 4548 50  0000 C CNN
F 2 "" H 3900 4375 50  0001 C CNN
F 3 "" H 3900 4375 50  0001 C CNN
	1    3900 4375
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR022
U 1 1 5CF0E364
P 10575 1075
F 0 "#PWR022" H 10575 925 50  0001 C CNN
F 1 "VCC" H 10592 1248 50  0000 C CNN
F 2 "" H 10575 1075 50  0001 C CNN
F 3 "" H 10575 1075 50  0001 C CNN
	1    10575 1075
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR023
U 1 1 5CF0FCB5
P 10575 2275
F 0 "#PWR023" H 10575 2125 50  0001 C CNN
F 1 "VEE" H 10593 2448 50  0000 C CNN
F 2 "" H 10575 2275 50  0001 C CNN
F 3 "" H 10575 2275 50  0001 C CNN
	1    10575 2275
	-1   0    0    1   
$EndComp
$Comp
L pspice:0 #GND01
U 1 1 5CF02FCA
P 10925 1725
F 0 "#GND01" H 10925 1625 50  0001 C CNN
F 1 "0" H 10875 1825 50  0000 C CNN
F 2 "" H 10925 1725 50  0001 C CNN
F 3 "~" H 10925 1725 50  0001 C CNN
	1    10925 1725
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V3
U 1 1 5E46A8BC
P 10575 1375
F 0 "V3" H 10175 1475 50  0000 L CNN
F 1 "5" H 10175 1225 50  0000 L CNN
F 2 "" H 10575 1375 50  0001 C CNN
F 3 "~" H 10575 1375 50  0001 C CNN
	1    10575 1375
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V4
U 1 1 5E46AAF2
P 10575 1975
F 0 "V4" H 10175 2075 50  0000 L CNN
F 1 "5" H 10175 1825 50  0000 L CNN
F 2 "" H 10575 1975 50  0001 C CNN
F 3 "~" H 10575 1975 50  0001 C CNN
	1    10575 1975
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5E46C3BD
P 11075 1675
F 0 "#PWR024" H 11075 1425 50  0001 C CNN
F 1 "GND" H 11080 1502 50  0000 C CNN
F 2 "" H 11075 1675 50  0001 C CNN
F 3 "" H 11075 1675 50  0001 C CNN
	1    11075 1675
	1    0    0    -1  
$EndComp
Wire Wire Line
	10925 1725 10925 1675
Wire Wire Line
	10925 1675 11075 1675
Wire Wire Line
	10925 1675 10575 1675
Connection ~ 10925 1675
Connection ~ 10575 1675
$Comp
L Device:R R5
U 1 1 5E4AA323
P 3525 3875
F 0 "R5" H 3600 3825 50  0000 L CNN
F 1 "1k" V 3525 3825 50  0000 L CNN
F 2 "" V 3455 3875 50  0001 C CNN
F 3 "~" H 3525 3875 50  0001 C CNN
	1    3525 3875
	1    0    0    1   
$EndComp
Wire Wire Line
	3425 3625 3525 3625
Wire Wire Line
	3525 3625 3525 3725
$Comp
L power:GND #PWR08
U 1 1 5E4DE552
P 3525 4025
F 0 "#PWR08" H 3525 3775 50  0001 C CNN
F 1 "GND" H 3530 3852 50  0001 C CNN
F 2 "" H 3525 4025 50  0001 C CNN
F 3 "" H 3525 4025 50  0001 C CNN
	1    3525 4025
	1    0    0    -1  
$EndComp
Text GLabel 3525 3625 1    50   Input ~ 0
signal_preatt
Text GLabel 4200 3850 0    50   Input ~ 0
diff1
Text GLabel 3900 3975 2    50   Input ~ 0
diff2
$Comp
L power:GND #PWR012
U 1 1 5E4E179B
P 4500 3625
F 0 "#PWR012" H 4500 3375 50  0001 C CNN
F 1 "GND" H 4625 3625 50  0001 C CNN
F 2 "" H 4500 3625 50  0001 C CNN
F 3 "" H 4500 3625 50  0001 C CNN
	1    4500 3625
	1    0    0    -1  
$EndComp
$Comp
L pspice:OPAMP U3
U 1 1 5CF0F48E
P 5150 3950
F 0 "U3" H 5275 3850 50  0000 L CNN
F 1 "LM324" H 5150 3750 50  0000 L CNN
F 2 "" H 5150 3950 50  0001 C CNN
F 3 "~" H 5150 3950 50  0001 C CNN
F 4 "X" H 5150 3950 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 5150 3950 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5150 3950 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/LM324.ti.lib" H 5150 3950 50  0001 C CNN "Spice_Lib_File"
F 8 "1,2,4,5,3" H 5150 3950 50  0001 C CNN "Spice_Node_Sequence"
	1    5150 3950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR014
U 1 1 5CF1034A
P 5050 3650
F 0 "#PWR014" H 5050 3500 50  0001 C CNN
F 1 "VCC" H 4950 3700 50  0000 C CNN
F 2 "" H 5050 3650 50  0001 C CNN
F 3 "" H 5050 3650 50  0001 C CNN
	1    5050 3650
	-1   0    0    -1  
$EndComp
$Comp
L power:VEE #PWR015
U 1 1 5CF108F1
P 5050 4250
F 0 "#PWR015" H 5050 4100 50  0001 C CNN
F 1 "VEE" H 5150 4300 50  0000 C CNN
F 2 "" H 5050 4250 50  0001 C CNN
F 3 "" H 5050 4250 50  0001 C CNN
	1    5050 4250
	1    0    0    1   
$EndComp
Text Notes 5300 3775 0    50   ~ 0
differential to\nsingle-ended
Wire Wire Line
	4775 3850 4700 3850
Connection ~ 4775 3850
Wire Wire Line
	4775 3750 4775 3850
Wire Wire Line
	5450 4450 5450 3950
Wire Wire Line
	5275 4450 5450 4450
Wire Wire Line
	4775 4050 4850 4050
Connection ~ 4775 4050
Wire Wire Line
	4775 4450 4975 4450
Wire Wire Line
	4775 4050 4775 4450
Wire Wire Line
	4700 4050 4775 4050
Wire Wire Line
	4850 3850 4775 3850
$Comp
L power:VCC #PWR06
U 1 1 603B8389
P 3500 2275
F 0 "#PWR06" H 3500 2125 50  0001 C CNN
F 1 "VCC" H 3600 2325 50  0000 C CNN
F 2 "" H 3500 2275 50  0001 C CNN
F 3 "" H 3500 2275 50  0001 C CNN
	1    3500 2275
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 603B786E
P 3500 2875
F 0 "#PWR07" H 3500 2625 50  0001 C CNN
F 1 "GND" H 3350 2800 50  0001 C CNN
F 2 "" H 3500 2875 50  0001 C CNN
F 3 "" H 3500 2875 50  0001 C CNN
	1    3500 2875
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 603B65D2
P 3500 2425
F 0 "R3" H 3575 2450 50  0000 L CNN
F 1 "2.2k" V 3500 2350 50  0000 L CNN
F 2 "" V 3430 2425 50  0001 C CNN
F 3 "~" H 3500 2425 50  0001 C CNN
	1    3500 2425
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3150 3075 3800 3075
Connection ~ 3150 3075
Wire Wire Line
	3150 2975 3150 3075
Wire Wire Line
	3150 2550 3150 2675
Connection ~ 3150 2550
Wire Wire Line
	3150 2075 3150 2550
$Comp
L power:VEE #PWR05
U 1 1 603585FF
P 2750 2850
F 0 "#PWR05" H 2750 2700 50  0001 C CNN
F 1 "VEE" H 2850 2900 50  0000 C CNN
F 2 "" H 2750 2850 50  0001 C CNN
F 3 "" H 2750 2850 50  0001 C CNN
	1    2750 2850
	1    0    0    1   
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 603585F5
P 2750 2250
F 0 "#PWR04" H 2750 2100 50  0001 C CNN
F 1 "VCC" H 2650 2300 50  0000 C CNN
F 2 "" H 2750 2250 50  0001 C CNN
F 3 "" H 2750 2250 50  0001 C CNN
	1    2750 2250
	-1   0    0    -1  
$EndComp
$Comp
L power:VEE #PWR02
U 1 1 60396BF2
P 2100 2650
F 0 "#PWR02" H 2100 2500 50  0001 C CNN
F 1 "VEE" H 1975 2700 50  0000 C CNN
F 2 "" H 2100 2650 50  0001 C CNN
F 3 "" H 2100 2650 50  0001 C CNN
	1    2100 2650
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 60390EE7
P 2550 2450
F 0 "#PWR03" H 2550 2200 50  0001 C CNN
F 1 "GND" H 2450 2500 50  0001 C CNN
F 2 "" H 2550 2450 50  0001 C CNN
F 3 "" H 2550 2450 50  0001 C CNN
	1    2550 2450
	1    0    0    -1  
$EndComp
Text GLabel 2475 3025 2    50   Input ~ 0
opampminus
Text GLabel 3150 2125 2    50   Input ~ 0
opampout
Wire Wire Line
	2475 3075 3150 3075
Wire Wire Line
	3150 2075 3925 2075
Wire Wire Line
	2475 2650 2550 2650
Connection ~ 2475 2650
Wire Wire Line
	2475 2650 2475 3075
Wire Wire Line
	2400 2650 2475 2650
Text GLabel 4050 2375 1    50   Input ~ 0
approx_3.1V
Wire Wire Line
	3925 2375 4050 2375
Connection ~ 3925 2375
Wire Wire Line
	3800 2375 3925 2375
$Comp
L power:GND #PWR021
U 1 1 5E4DFBDC
P 6375 3275
F 0 "#PWR021" H 6375 3025 50  0001 C CNN
F 1 "GND" H 6380 3102 50  0001 C CNN
F 2 "" H 6375 3275 50  0001 C CNN
F 3 "" H 6375 3275 50  0001 C CNN
	1    6375 3275
	-1   0    0    -1  
$EndComp
Text GLabel 6375 2675 2    50   Input ~ 0
cv_pregain
$Comp
L Device:R R7
U 1 1 6031E760
P 3925 2225
F 0 "R7" H 3995 2271 50  0000 L CNN
F 1 "100" V 3925 2150 50  0000 L CNN
F 2 "" V 3855 2225 50  0001 C CNN
F 3 "~" H 3925 2225 50  0001 C CNN
	1    3925 2225
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5D992BCF
P 5125 4450
F 0 "R14" V 5225 4375 50  0000 L CNN
F 1 "10k" V 5125 4400 50  0000 L CNN
F 2 "" V 5055 4450 50  0001 C CNN
F 3 "~" H 5125 4450 50  0001 C CNN
	1    5125 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5D9941E7
P 4775 3600
F 0 "R13" H 4600 3550 50  0000 L CNN
F 1 "10k" V 4775 3550 50  0000 L CNN
F 2 "" V 4705 3600 50  0001 C CNN
F 3 "~" H 4775 3600 50  0001 C CNN
	1    4775 3600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R12
U 1 1 5D9923C5
P 4550 4050
F 0 "R12" V 4650 4025 50  0000 L CNN
F 1 "10k" V 4550 3975 50  0000 L CNN
F 2 "" V 4480 4050 50  0001 C CNN
F 3 "~" H 4550 4050 50  0001 C CNN
	1    4550 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5D98E38E
P 4550 3850
F 0 "R11" V 4450 3825 50  0000 L CNN
F 1 "10k" V 4550 3775 50  0000 L CNN
F 2 "" V 4480 3850 50  0001 C CNN
F 3 "~" H 4550 3850 50  0001 C CNN
	1    4550 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5E49C74E
P 4050 3025
F 0 "R8" H 3900 3100 50  0000 L CNN
F 1 "100" V 4050 2950 50  0000 L CNN
F 2 "" V 3980 3025 50  0001 C CNN
F 3 "~" H 4050 3025 50  0001 C CNN
	1    4050 3025
	-1   0    0    -1  
$EndComp
Text Notes 10225 675  0    50   ~ 0
.temp 30\n.tran 1u 10m
$Comp
L Device:R R6
U 1 1 5D97C329
P 3900 4225
F 0 "R6" H 3970 4271 50  0000 L CNN
F 1 "10k" V 3900 4150 50  0000 L CNN
F 2 "" V 3830 4225 50  0001 C CNN
F 3 "~" H 3900 4225 50  0001 C CNN
	1    3900 4225
	1    0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 5D97C9D7
P 4200 4225
F 0 "R10" H 4270 4271 50  0000 L CNN
F 1 "10k" V 4200 4150 50  0000 L CNN
F 2 "" V 4130 4225 50  0001 C CNN
F 3 "~" H 4200 4225 50  0001 C CNN
	1    4200 4225
	1    0    0    1   
$EndComp
Wire Wire Line
	3900 3425 4050 3425
Connection ~ 4050 3425
Wire Wire Line
	4050 3425 4200 3425
$Comp
L power:GND #PWR011
U 1 1 6044FF5D
P 4350 3275
F 0 "#PWR011" H 4350 3025 50  0001 C CNN
F 1 "GND" H 4500 3200 50  0001 C CNN
F 2 "" H 4350 3275 50  0001 C CNN
F 3 "" H 4350 3275 50  0001 C CNN
	1    4350 3275
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60363D99
P 2250 2650
F 0 "R1" V 2350 2575 50  0000 L CNN
F 1 "100k" V 2250 2575 50  0000 L CNN
F 2 "" V 2180 2650 50  0001 C CNN
F 3 "~" H 2250 2650 50  0001 C CNN
	1    2250 2650
	0    1    -1   0   
$EndComp
$Comp
L pspice:VSOURCE V2
U 1 1 5E4D9344
P 6375 2975
F 0 "V2" H 5975 3075 50  0000 L CNN
F 1 "PULSE(5 0 0 10m 10m 0.01m 20m)" H 4675 2650 50  0000 L CNN
F 2 "" H 6375 2975 50  0001 C CNN
F 3 "~" H 6375 2975 50  0001 C CNN
	1    6375 2975
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 6043EEE6
P 4200 3275
F 0 "R9" V 4100 3150 50  0000 L CNN
F 1 "33k" V 4200 3200 50  0000 L CNN
F 2 "" V 4130 3275 50  0001 C CNN
F 3 "~" H 4200 3275 50  0001 C CNN
	1    4200 3275
	0    -1   1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 603B6C93
P 3500 2725
F 0 "R4" H 3575 2725 50  0000 L CNN
F 1 "2.2k" V 3500 2650 50  0000 L CNN
F 2 "" V 3430 2725 50  0001 C CNN
F 3 "~" H 3500 2725 50  0001 C CNN
	1    3500 2725
	-1   0    0    -1  
$EndComp
Text Notes 4375 3300 0    50   ~ 0
pinch off.\napprox 0.6mA
Text GLabel 3950 3425 1    50   Input ~ 0
approx_0.6V
Wire Wire Line
	4050 2775 4050 2875
Connection ~ 3500 2575
Wire Wire Line
	3800 2775 3800 3075
$Comp
L Device:Q_PNP_CBE Q3
U 1 1 6046EF6E
P 4150 2575
F 0 "Q3" H 4025 2400 50  0000 L CNN
F 1 "PNP" H 4000 2750 50  0000 L CNN
F 2 "" H 4350 2675 50  0001 C CNN
F 3 "~" H 4150 2575 50  0001 C CNN
F 4 "Q" H 4150 2575 50  0001 C CNN "Spice_Primitive"
F 5 "BC557b" H 4150 2575 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4150 2575 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/BC547_557.lib" H 4150 2575 50  0001 C CNN "Spice_Lib_File"
	1    4150 2575
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_PNP_CBE Q1
U 1 1 6047C1A3
P 3700 2575
F 0 "Q1" H 3625 2400 50  0000 L CNN
F 1 "PNP" H 3600 2750 50  0000 L CNN
F 2 "" H 3900 2675 50  0001 C CNN
F 3 "~" H 3700 2575 50  0001 C CNN
F 4 "Q" H 3700 2575 50  0001 C CNN "Spice_Primitive"
F 5 "BC557b" H 3700 2575 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3700 2575 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/BC547_557.lib" H 3700 2575 50  0001 C CNN "Spice_Lib_File"
	1    3700 2575
	1    0    0    1   
$EndComp
$Comp
L Device:Q_PNP_CBE Q2
U 1 1 604ACF48
P 3800 3625
F 0 "Q2" H 3725 3450 50  0000 L CNN
F 1 "PNP" H 3700 3800 50  0000 L CNN
F 2 "" H 4000 3725 50  0001 C CNN
F 3 "~" H 3800 3625 50  0001 C CNN
F 4 "Q" H 3800 3625 50  0001 C CNN "Spice_Primitive"
F 5 "BC557b" H 3800 3625 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3800 3625 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/BC547_557.lib" H 3800 3625 50  0001 C CNN "Spice_Lib_File"
	1    3800 3625
	1    0    0    1   
$EndComp
$Comp
L Device:Q_PNP_CBE Q4
U 1 1 604AD909
P 4300 3625
F 0 "Q4" H 4175 3450 50  0000 L CNN
F 1 "PNP" H 4150 3800 50  0000 L CNN
F 2 "" H 4500 3725 50  0001 C CNN
F 3 "~" H 4300 3625 50  0001 C CNN
F 4 "Q" H 4300 3625 50  0001 C CNN "Spice_Primitive"
F 5 "BC557b" H 4300 3625 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4300 3625 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/BC547_557.lib" H 4300 3625 50  0001 C CNN "Spice_Lib_File"
	1    4300 3625
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 3625 3525 3625
Connection ~ 3525 3625
$Comp
L pspice:VSOURCE V1
U 1 1 5E4DBEAC
P 1375 3925
F 0 "V1" H 975 4025 50  0000 L CNN
F 1 "PULSE(-1 1 0 0.1m 0.1m 0.001m 0.2m)" H -400 3375 50  0000 L CNN
F 2 "" H 1375 3925 50  0001 C CNN
F 3 "~" H 1375 3925 50  0001 C CNN
	1    1375 3925
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5E4DF6C2
P 1375 4225
F 0 "#PWR01" H 1375 3975 50  0001 C CNN
F 1 "GND" H 1380 4052 50  0001 C CNN
F 2 "" H 1375 4225 50  0001 C CNN
F 3 "" H 1375 4225 50  0001 C CNN
	1    1375 4225
	1    0    0    -1  
$EndComp
Text GLabel 1375 3625 0    50   Input ~ 0
signal_in
$Comp
L power:GND #PWR013
U 1 1 5E4E0951
P 4875 3375
F 0 "#PWR013" H 4875 3125 50  0001 C CNN
F 1 "GND" H 5025 3325 50  0001 C CNN
F 2 "" H 4875 3375 50  0001 C CNN
F 3 "" H 4875 3375 50  0001 C CNN
	1    4875 3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3175 4050 3275
Connection ~ 4050 3275
Wire Wire Line
	4050 3275 4050 3425
Text GLabel 6175 3950 2    50   Input ~ 0
signal_out
Wire Wire Line
	6175 3950 5450 3950
Connection ~ 5450 3950
Text Notes 4375 2675 0    50   ~ 0
2.4-2.5V
$Comp
L power:VCC #PWR016
U 1 1 604D5886
P 5200 2275
F 0 "#PWR016" H 5200 2125 50  0001 C CNN
F 1 "VCC" H 5100 2325 50  0000 C CNN
F 2 "" H 5200 2275 50  0001 C CNN
F 3 "" H 5200 2275 50  0001 C CNN
	1    5200 2275
	1    0    0    -1  
$EndComp
$Comp
L pspice:OPAMP U2
U 1 1 604D5895
P 5100 2575
F 0 "U2" H 5225 2475 50  0000 L CNN
F 1 "LM324" H 5100 2375 50  0000 L CNN
F 2 "" H 5100 2575 50  0001 C CNN
F 3 "~" H 5100 2575 50  0001 C CNN
F 4 "X" H 5100 2575 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 5100 2575 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5100 2575 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/LM324.ti.lib" H 5100 2575 50  0001 C CNN "Spice_Lib_File"
F 8 "1,2,4,5,3" H 5100 2575 50  0001 C CNN "Spice_Node_Sequence"
	1    5100 2575
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 604D589F
P 5575 2425
F 0 "#PWR019" H 5575 2175 50  0001 C CNN
F 1 "GND" H 5475 2475 50  0001 C CNN
F 2 "" H 5575 2425 50  0001 C CNN
F 3 "" H 5575 2425 50  0001 C CNN
	1    5575 2425
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 604DA322
P 5150 3050
F 0 "R15" V 5250 2975 50  0000 L CNN
F 1 "2.2k" V 5150 2975 50  0000 L CNN
F 2 "" V 5080 3050 50  0001 C CNN
F 3 "~" H 5150 3050 50  0001 C CNN
	1    5150 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 2575 4800 3050
Wire Wire Line
	4800 3050 5000 3050
Wire Wire Line
	5300 3050 5450 3050
Wire Wire Line
	5450 2675 5400 2675
Wire Wire Line
	5500 2675 5450 2675
Connection ~ 5450 2675
Wire Wire Line
	6375 2675 5800 2675
$Comp
L power:VEE #PWR017
U 1 1 604D5590
P 5200 2875
F 0 "#PWR017" H 5200 2725 50  0001 C CNN
F 1 "VEE" H 5300 2925 50  0000 C CNN
F 2 "" H 5200 2875 50  0001 C CNN
F 3 "" H 5200 2875 50  0001 C CNN
	1    5200 2875
	-1   0    0    1   
$EndComp
Text GLabel 4525 2575 1    50   Input ~ 0
cv_pregain2
$Comp
L Device:R R17
U 1 1 604E3B44
P 5575 2275
F 0 "R17" V 5675 2200 50  0000 L CNN
F 1 "2.2k" V 5575 2200 50  0000 L CNN
F 2 "" V 5505 2275 50  0001 C CNN
F 3 "~" H 5575 2275 50  0001 C CNN
	1    5575 2275
	-1   0    0    1   
$EndComp
$Comp
L Device:R R16
U 1 1 604E4385
P 5575 1975
F 0 "R16" V 5675 1900 50  0000 L CNN
F 1 "2.2k" V 5575 1900 50  0000 L CNN
F 2 "" V 5505 1975 50  0001 C CNN
F 3 "~" H 5575 1975 50  0001 C CNN
	1    5575 1975
	-1   0    0    1   
$EndComp
Wire Wire Line
	5575 2125 5400 2125
Wire Wire Line
	5400 2125 5400 2475
Connection ~ 5575 2125
$Comp
L power:VCC #PWR018
U 1 1 604E6AC6
P 5575 1825
F 0 "#PWR018" H 5575 1675 50  0001 C CNN
F 1 "VCC" H 5590 1998 50  0000 C CNN
F 2 "" H 5575 1825 50  0001 C CNN
F 3 "" H 5575 1825 50  0001 C CNN
	1    5575 1825
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2675 5450 3050
Connection ~ 5450 3050
$Comp
L power:VCC #PWR020
U 1 1 604E7D9A
P 5750 3050
F 0 "#PWR020" H 5750 2900 50  0001 C CNN
F 1 "VCC" H 5765 3223 50  0000 C CNN
F 2 "" H 5750 3050 50  0001 C CNN
F 3 "" H 5750 3050 50  0001 C CNN
	1    5750 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 604DCA8D
P 5650 2675
F 0 "R19" V 5550 2650 50  0000 L CNN
F 1 "100k" V 5650 2575 50  0000 L CNN
F 2 "" V 5580 2675 50  0001 C CNN
F 3 "~" H 5650 2675 50  0001 C CNN
	1    5650 2675
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 604E79B3
P 5600 3050
F 0 "R18" V 5500 3025 50  0000 L CNN
F 1 "470k" V 5600 2950 50  0000 L CNN
F 2 "" V 5530 3050 50  0001 C CNN
F 3 "~" H 5600 3050 50  0001 C CNN
	1    5600 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	1375 3625 3125 3625
Wire Wire Line
	4350 2575 4800 2575
Connection ~ 4800 2575
Wire Wire Line
	3900 3825 3900 4050
Wire Wire Line
	4200 3825 4200 3850
Wire Wire Line
	4400 3850 4200 3850
Connection ~ 4200 3850
Wire Wire Line
	4200 3850 4200 4075
Wire Wire Line
	4400 4050 3900 4050
Connection ~ 3900 4050
Wire Wire Line
	3900 4050 3900 4075
Wire Wire Line
	4875 3375 4775 3375
Wire Wire Line
	4775 3375 4775 3450
$Comp
L pspice:OPAMP U1
U 1 1 6035806F
P 2850 2550
F 0 "U1" H 2975 2450 50  0000 L CNN
F 1 "LM324" H 2750 2550 50  0000 L CNN
F 2 "" H 2850 2550 50  0001 C CNN
F 3 "~" H 2850 2550 50  0001 C CNN
F 4 "X" H 2850 2550 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 2850 2550 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2850 2550 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/LM324.ti.lib" H 2850 2550 50  0001 C CNN "Spice_Lib_File"
F 8 "1,2,4,5,3" H 2850 2550 50  0001 C CNN "Spice_Node_Sequence"
	1    2850 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 603AC914
P 3150 2825
F 0 "C1" H 3050 2900 50  0000 L CNN
F 1 "10n" H 3000 2750 50  0000 L CNN
F 2 "" H 3188 2675 50  0001 C CNN
F 3 "~" H 3150 2825 50  0001 C CNN
	1    3150 2825
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E4ABD6D
P 3275 3625
F 0 "R2" V 3175 3575 50  0000 L CNN
F 1 "50k" V 3275 3525 50  0000 L CNN
F 2 "" V 3205 3625 50  0001 C CNN
F 3 "~" H 3275 3625 50  0001 C CNN
	1    3275 3625
	0    -1   1    0   
$EndComp
Text Notes 2325 5050 0    50   ~ 0
trimming:\nR18: too low values lead to no amplification, because diff1/diff2 approach 0.6V, thus clipping.\nR18: too high values lead to quiet sounds\nR9: set to infinity initially. Then slowly increase until at cv=0, the amplifier completely shuts off.\nR19 / R15: control the VCA slope.
Text Notes 2325 5425 0    50   ~ 0
signal_in should have 1V amplitude\nat cv_pregain = 5V, signal_out is approx. 1V\nat cv_pregain = 0V, signal_out is zero
$EndSCHEMATC
