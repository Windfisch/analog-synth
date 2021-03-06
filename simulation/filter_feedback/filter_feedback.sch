EESchema Schematic File Version 4
LIBS:filter_feedback-cache
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
U 1 1 5D0FC229
P 3450 2150
F 0 "U1" H 3500 1900 50  0000 C CNN
F 1 "LM324" H 3550 2000 50  0000 C CNN
F 2 "" H 3450 2150 50  0001 C CNN
F 3 "~" H 3450 2150 50  0001 C CNN
F 4 "X" H 3450 2150 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 3450 2150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3450 2150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "1 2 4 5 3" H 3450 2150 50  0001 C CNN "Spice_Node_Sequence"
F 8 "/home/flo/kicad/synth/simulation/lib/LM324.ti.lib" H 3450 2150 50  0001 C CNN "Spice_Lib_File"
	1    3450 2150
	1    0    0    1   
$EndComp
$Comp
L pspice:VSOURCE V2
U 1 1 5D0FCB8D
P 950 1650
F 0 "V2" H 1178 1696 50  0000 L CNN
F 1 "5" H 1178 1605 50  0000 L CNN
F 2 "" H 950 1650 50  0001 C CNN
F 3 "~" H 950 1650 50  0001 C CNN
	1    950  1650
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V1
U 1 1 5D0FCDB1
P 950 1050
F 0 "V1" H 1178 1096 50  0000 L CNN
F 1 "5" H 1178 1005 50  0000 L CNN
F 2 "" H 950 1050 50  0001 C CNN
F 3 "~" H 950 1050 50  0001 C CNN
	1    950  1050
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND01
U 1 1 5D0FDA13
P 1300 1400
F 0 "#GND01" H 1300 1300 50  0001 C CNN
F 1 "0" H 1300 1489 50  0000 C CNN
F 2 "" H 1300 1400 50  0001 C CNN
F 3 "~" H 1300 1400 50  0001 C CNN
	1    1300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1400 1300 1350
Wire Wire Line
	1300 1350 950  1350
Connection ~ 950  1350
$Comp
L power:VCC #PWR01
U 1 1 5D0FDEA7
P 950 750
F 0 "#PWR01" H 950 600 50  0001 C CNN
F 1 "VCC" H 967 923 50  0000 C CNN
F 2 "" H 950 750 50  0001 C CNN
F 3 "" H 950 750 50  0001 C CNN
	1    950  750 
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR03
U 1 1 5D0FE266
P 3350 1850
F 0 "#PWR03" H 3350 1700 50  0001 C CNN
F 1 "VEE" H 3367 2023 50  0000 C CNN
F 2 "" H 3350 1850 50  0001 C CNN
F 3 "" H 3350 1850 50  0001 C CNN
	1    3350 1850
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V3
U 1 1 5D0FE7EB
P 1600 2350
F 0 "V3" H 1828 2396 50  0000 L CNN
F 1 "ac 2" H 1828 2305 50  0000 L CNN
F 2 "" H 1600 2350 50  0001 C CNN
F 3 "~" H 1600 2350 50  0001 C CNN
	1    1600 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5D0FF011
P 3450 1500
F 0 "C2" V 3198 1500 50  0000 C CNN
F 1 "10n" V 3289 1500 50  0000 C CNN
F 2 "" H 3488 1350 50  0001 C CNN
F 3 "~" H 3450 1500 50  0001 C CNN
	1    3450 1500
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 5D1010E5
P 3350 2450
F 0 "#PWR04" H 3350 2300 50  0001 C CNN
F 1 "VCC" H 3367 2623 50  0000 C CNN
F 2 "" H 3350 2450 50  0001 C CNN
F 3 "" H 3350 2450 50  0001 C CNN
	1    3350 2450
	-1   0    0    1   
$EndComp
$Comp
L power:VEE #PWR02
U 1 1 5D101641
P 950 1950
F 0 "#PWR02" H 950 1800 50  0001 C CNN
F 1 "VEE" H 968 2123 50  0000 C CNN
F 2 "" H 950 1950 50  0001 C CNN
F 3 "" H 950 1950 50  0001 C CNN
	1    950  1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 1500 3950 1500
Wire Wire Line
	3950 1500 3950 2150
Wire Wire Line
	3950 2150 3750 2150
Wire Wire Line
	3300 1500 3000 1500
Wire Wire Line
	3000 2050 3150 2050
$Comp
L Device:R R2
U 1 1 5D101FCC
P 3450 1100
F 0 "R2" V 3243 1100 50  0000 C CNN
F 1 "10k" V 3334 1100 50  0000 C CNN
F 2 "" V 3380 1100 50  0001 C CNN
F 3 "~" H 3450 1100 50  0001 C CNN
	1    3450 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 1500 3000 2050
Wire Wire Line
	3600 1100 3950 1100
Wire Wire Line
	3950 1100 3950 1500
Connection ~ 3950 1500
$Comp
L Device:R R1
U 1 1 5D1027BF
P 2150 2050
F 0 "R1" V 1943 2050 50  0000 C CNN
F 1 "10k" V 2034 2050 50  0000 C CNN
F 2 "" V 2080 2050 50  0001 C CNN
F 3 "~" H 2150 2050 50  0001 C CNN
	1    2150 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 2050 2400 2050
$Comp
L Device:C C1
U 1 1 5D1034C0
P 2400 2350
F 0 "C1" H 2600 2300 50  0000 R CNN
F 1 "10n" H 2700 2400 50  0000 R CNN
F 2 "" H 2438 2200 50  0001 C CNN
F 3 "~" H 2400 2350 50  0001 C CNN
	1    2400 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 2200 2400 2050
Connection ~ 2400 2050
Wire Wire Line
	2400 2050 2600 2050
$Comp
L pspice:0 #GND03
U 1 1 5D103CDB
P 2400 2700
F 0 "#GND03" H 2400 2600 50  0001 C CNN
F 1 "0" H 2400 2789 50  0000 C CNN
F 2 "" H 2400 2700 50  0001 C CNN
F 3 "~" H 2400 2700 50  0001 C CNN
	1    2400 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2700 2400 2500
$Comp
L pspice:0 #GND04
U 1 1 5D104030
P 3100 2400
F 0 "#GND04" H 3100 2300 50  0001 C CNN
F 1 "0" H 3100 2489 50  0000 C CNN
F 2 "" H 3100 2400 50  0001 C CNN
F 3 "~" H 3100 2400 50  0001 C CNN
	1    3100 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2400 3100 2250
Wire Wire Line
	3100 2250 3150 2250
$Comp
L pspice:0 #GND02
U 1 1 5D104AC2
P 1600 2650
F 0 "#GND02" H 1600 2550 50  0001 C CNN
F 1 "0" H 1600 2739 50  0000 C CNN
F 2 "" H 1600 2650 50  0001 C CNN
F 3 "~" H 1600 2650 50  0001 C CNN
	1    1600 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2050 2000 2050
Text GLabel 3950 2150 2    50   Input ~ 0
out
$Comp
L Device:R R3
U 1 1 5D106E7F
P 2750 2050
F 0 "R3" V 2543 2050 50  0000 C CNN
F 1 "10k" V 2634 2050 50  0000 C CNN
F 2 "" V 2680 2050 50  0001 C CNN
F 3 "~" H 2750 2050 50  0001 C CNN
	1    2750 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 2050 3000 2050
Connection ~ 3000 2050
Wire Wire Line
	2400 1100 2400 2050
Wire Wire Line
	2400 1100 3300 1100
$Comp
L pspice:OPAMP U2
U 1 1 5D108181
P 2200 4300
F 0 "U2" H 2250 4050 50  0000 C CNN
F 1 "LM324" H 2300 4150 50  0000 C CNN
F 2 "" H 2200 4300 50  0001 C CNN
F 3 "~" H 2200 4300 50  0001 C CNN
F 4 "X" H 2200 4300 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 2200 4300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2200 4300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "1 2 4 5 3" H 2200 4300 50  0001 C CNN "Spice_Node_Sequence"
F 8 "/home/flo/kicad/synth/simulation/lib/LM324.ti.lib" H 2200 4300 50  0001 C CNN "Spice_Lib_File"
	1    2200 4300
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR05
U 1 1 5D10818B
P 2100 4600
F 0 "#PWR05" H 2100 4450 50  0001 C CNN
F 1 "VEE" H 2117 4773 50  0000 C CNN
F 2 "" H 2100 4600 50  0001 C CNN
F 3 "" H 2100 4600 50  0001 C CNN
	1    2100 4600
	1    0    0    1   
$EndComp
$Comp
L power:VCC #PWR06
U 1 1 5D108195
P 2100 4000
F 0 "#PWR06" H 2100 3850 50  0001 C CNN
F 1 "VCC" H 2117 4173 50  0000 C CNN
F 2 "" H 2100 4000 50  0001 C CNN
F 3 "" H 2100 4000 50  0001 C CNN
	1    2100 4000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5D109646
P 1400 4200
F 0 "R4" V 1193 4200 50  0000 C CNN
F 1 "100k" V 1284 4200 50  0000 C CNN
F 2 "" V 1330 4200 50  0001 C CNN
F 3 "~" H 1400 4200 50  0001 C CNN
	1    1400 4200
	0    1    1    0   
$EndComp
$Comp
L pspice:VSOURCE V4
U 1 1 5D10A20D
P 4300 2950
F 0 "V4" H 4528 2996 50  0000 L CNN
F 1 "ac 10" H 4528 2905 50  0000 L CNN
F 2 "" H 4300 2950 50  0001 C CNN
F 3 "~" H 4300 2950 50  0001 C CNN
	1    4300 2950
	-1   0    0    -1  
$EndComp
$Comp
L pspice:0 #GND05
U 1 1 5D10ABB0
P 4300 3250
F 0 "#GND05" H 4300 3150 50  0001 C CNN
F 1 "0" H 4300 3339 50  0000 C CNN
F 2 "" H 4300 3250 50  0001 C CNN
F 3 "~" H 4300 3250 50  0001 C CNN
	1    4300 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1900 4400 1900 4850
Wire Wire Line
	1900 4850 2500 4850
Wire Wire Line
	2500 4850 2500 4300
Wire Wire Line
	1550 4200 1650 4200
Wire Wire Line
	1650 4200 1650 4300
Wire Wire Line
	1900 4200 1650 4200
Connection ~ 1650 4200
$Comp
L pspice:0 #GND06
U 1 1 5D12AA77
P 1650 4600
F 0 "#GND06" H 1650 4500 50  0001 C CNN
F 1 "0" H 1650 4689 50  0000 C CNN
F 2 "" H 1650 4600 50  0001 C CNN
F 3 "~" H 1650 4600 50  0001 C CNN
	1    1650 4600
	1    0    0    -1  
$EndComp
Text GLabel 2500 4850 2    50   Input ~ 0
o1
Wire Wire Line
	2500 4300 2550 4300
Wire Wire Line
	2550 4300 2550 4200
Connection ~ 2500 4300
$Comp
L pspice:OPAMP U3
U 1 1 5D12CD58
P 3500 4300
F 0 "U3" H 3550 4050 50  0000 C CNN
F 1 "LM324" H 3600 4150 50  0000 C CNN
F 2 "" H 3500 4300 50  0001 C CNN
F 3 "~" H 3500 4300 50  0001 C CNN
F 4 "X" H 3500 4300 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 3500 4300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3500 4300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "1 2 4 5 3" H 3500 4300 50  0001 C CNN "Spice_Node_Sequence"
F 8 "/home/flo/kicad/synth/simulation/lib/LM324.ti.lib" H 3500 4300 50  0001 C CNN "Spice_Lib_File"
	1    3500 4300
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR08
U 1 1 5D12CD5E
P 3400 4600
F 0 "#PWR08" H 3400 4450 50  0001 C CNN
F 1 "VEE" H 3417 4773 50  0000 C CNN
F 2 "" H 3400 4600 50  0001 C CNN
F 3 "" H 3400 4600 50  0001 C CNN
	1    3400 4600
	1    0    0    1   
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 5D12CD64
P 3400 4000
F 0 "#PWR07" H 3400 3850 50  0001 C CNN
F 1 "VCC" H 3417 4173 50  0000 C CNN
F 2 "" H 3400 4000 50  0001 C CNN
F 3 "" H 3400 4000 50  0001 C CNN
	1    3400 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3200 4400 3200 4850
Wire Wire Line
	3200 4850 3800 4850
Wire Wire Line
	3800 4850 3800 4300
$Comp
L Device:C C4
U 1 1 5D12CD73
P 2950 4450
F 0 "C4" H 3065 4496 50  0000 L CNN
F 1 "10n" H 3065 4405 50  0000 L CNN
F 2 "" H 2988 4300 50  0001 C CNN
F 3 "~" H 2950 4450 50  0001 C CNN
	1    2950 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4200 2950 4200
Wire Wire Line
	2950 4200 2950 4300
Wire Wire Line
	3200 4200 2950 4200
Connection ~ 2950 4200
$Comp
L pspice:0 #GND07
U 1 1 5D12CD7D
P 2950 4600
F 0 "#GND07" H 2950 4500 50  0001 C CNN
F 1 "0" H 2950 4689 50  0000 C CNN
F 2 "" H 2950 4600 50  0001 C CNN
F 3 "~" H 2950 4600 50  0001 C CNN
	1    2950 4600
	1    0    0    -1  
$EndComp
Text GLabel 3800 4850 2    50   Input ~ 0
o2
Wire Wire Line
	3800 4300 3850 4300
Wire Wire Line
	3850 4300 3850 4200
Connection ~ 3800 4300
$Comp
L pspice:OPAMP U4
U 1 1 5D12EB73
P 4800 4300
F 0 "U4" H 4850 4050 50  0000 C CNN
F 1 "LM324" H 4900 4150 50  0000 C CNN
F 2 "" H 4800 4300 50  0001 C CNN
F 3 "~" H 4800 4300 50  0001 C CNN
F 4 "X" H 4800 4300 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 4800 4300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4800 4300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "1 2 4 5 3" H 4800 4300 50  0001 C CNN "Spice_Node_Sequence"
F 8 "/home/flo/kicad/synth/simulation/lib/LM324.ti.lib" H 4800 4300 50  0001 C CNN "Spice_Lib_File"
	1    4800 4300
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR010
U 1 1 5D12EB79
P 4700 4600
F 0 "#PWR010" H 4700 4450 50  0001 C CNN
F 1 "VEE" H 4717 4773 50  0000 C CNN
F 2 "" H 4700 4600 50  0001 C CNN
F 3 "" H 4700 4600 50  0001 C CNN
	1    4700 4600
	1    0    0    1   
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 5D12EB7F
P 4700 4000
F 0 "#PWR09" H 4700 3850 50  0001 C CNN
F 1 "VCC" H 4717 4173 50  0000 C CNN
F 2 "" H 4700 4000 50  0001 C CNN
F 3 "" H 4700 4000 50  0001 C CNN
	1    4700 4000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5D12EB85
P 4000 4200
F 0 "R6" V 3793 4200 50  0000 C CNN
F 1 "100k" V 3884 4200 50  0000 C CNN
F 2 "" V 3930 4200 50  0001 C CNN
F 3 "~" H 4000 4200 50  0001 C CNN
	1    4000 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 4400 4500 4850
Wire Wire Line
	4500 4850 5100 4850
Wire Wire Line
	5100 4850 5100 4300
$Comp
L Device:C C5
U 1 1 5D12EB8E
P 4250 4450
F 0 "C5" H 4365 4496 50  0000 L CNN
F 1 "10n" H 4365 4405 50  0000 L CNN
F 2 "" H 4288 4300 50  0001 C CNN
F 3 "~" H 4250 4450 50  0001 C CNN
	1    4250 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4200 4250 4200
Wire Wire Line
	4250 4200 4250 4300
Wire Wire Line
	4500 4200 4250 4200
Connection ~ 4250 4200
$Comp
L pspice:0 #GND08
U 1 1 5D12EB98
P 4250 4600
F 0 "#GND08" H 4250 4500 50  0001 C CNN
F 1 "0" H 4250 4689 50  0000 C CNN
F 2 "" H 4250 4600 50  0001 C CNN
F 3 "~" H 4250 4600 50  0001 C CNN
	1    4250 4600
	1    0    0    -1  
$EndComp
Text GLabel 5100 4850 2    50   Input ~ 0
o3
Wire Wire Line
	5100 4300 5150 4300
Connection ~ 5100 4300
$Comp
L Device:R R7
U 1 1 5D13284F
P 4150 2650
F 0 "R7" V 3943 2650 50  0000 C CNN
F 1 "1Meg" V 4034 2650 50  0000 C CNN
F 2 "" V 4080 2650 50  0001 C CNN
F 3 "~" H 4150 2650 50  0001 C CNN
	1    4150 2650
	0    -1   1    0   
$EndComp
$Comp
L pspice:OPAMP U5
U 1 1 5D13CAAF
P 6100 4300
F 0 "U5" H 6150 4050 50  0000 C CNN
F 1 "LM324" H 6200 4150 50  0000 C CNN
F 2 "" H 6100 4300 50  0001 C CNN
F 3 "~" H 6100 4300 50  0001 C CNN
F 4 "X" H 6100 4300 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 6100 4300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6100 4300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "1 2 4 5 3" H 6100 4300 50  0001 C CNN "Spice_Node_Sequence"
F 8 "/home/flo/kicad/synth/simulation/lib/LM324.ti.lib" H 6100 4300 50  0001 C CNN "Spice_Lib_File"
	1    6100 4300
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR012
U 1 1 5D13CAB5
P 6000 4600
F 0 "#PWR012" H 6000 4450 50  0001 C CNN
F 1 "VEE" H 6017 4773 50  0000 C CNN
F 2 "" H 6000 4600 50  0001 C CNN
F 3 "" H 6000 4600 50  0001 C CNN
	1    6000 4600
	1    0    0    1   
$EndComp
$Comp
L power:VCC #PWR011
U 1 1 5D13CABB
P 6000 4000
F 0 "#PWR011" H 6000 3850 50  0001 C CNN
F 1 "VCC" H 6017 4173 50  0000 C CNN
F 2 "" H 6000 4000 50  0001 C CNN
F 3 "" H 6000 4000 50  0001 C CNN
	1    6000 4000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5D13CAC1
P 5300 4200
F 0 "R9" V 5093 4200 50  0000 C CNN
F 1 "100k" V 5184 4200 50  0000 C CNN
F 2 "" V 5230 4200 50  0001 C CNN
F 3 "~" H 5300 4200 50  0001 C CNN
	1    5300 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 4400 5800 4850
Wire Wire Line
	5800 4850 6400 4850
Wire Wire Line
	6400 4850 6400 4300
$Comp
L Device:C C6
U 1 1 5D13CACA
P 5550 4450
F 0 "C6" H 5665 4496 50  0000 L CNN
F 1 "10n" H 5665 4405 50  0000 L CNN
F 2 "" H 5588 4300 50  0001 C CNN
F 3 "~" H 5550 4450 50  0001 C CNN
	1    5550 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4200 5550 4200
Wire Wire Line
	5550 4200 5550 4300
Wire Wire Line
	5800 4200 5550 4200
Connection ~ 5550 4200
$Comp
L pspice:0 #GND09
U 1 1 5D13CAD4
P 5550 4600
F 0 "#GND09" H 5550 4500 50  0001 C CNN
F 1 "0" H 5550 4689 50  0000 C CNN
F 2 "" H 5550 4600 50  0001 C CNN
F 3 "~" H 5550 4600 50  0001 C CNN
	1    5550 4600
	1    0    0    -1  
$EndComp
Text GLabel 6400 4850 2    50   Input ~ 0
o4
Wire Wire Line
	6400 4300 6450 4300
Connection ~ 6400 4300
Wire Wire Line
	6450 3550 6450 4300
Wire Wire Line
	1050 4200 1250 4200
Wire Wire Line
	5150 4200 5150 4300
$Comp
L pspice:OPAMP U6
U 1 1 5D143408
P 2400 3250
F 0 "U6" H 2450 3000 50  0000 C CNN
F 1 "LM324" H 2500 3100 50  0000 C CNN
F 2 "" H 2400 3250 50  0001 C CNN
F 3 "~" H 2400 3250 50  0001 C CNN
F 4 "X" H 2400 3250 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 2400 3250 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2400 3250 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "1 2 4 5 3" H 2400 3250 50  0001 C CNN "Spice_Node_Sequence"
F 8 "/home/flo/kicad/synth/simulation/lib/LM324.ti.lib" H 2400 3250 50  0001 C CNN "Spice_Lib_File"
	1    2400 3250
	-1   0    0    1   
$EndComp
$Comp
L power:VEE #PWR013
U 1 1 5D143412
P 2500 2950
F 0 "#PWR013" H 2500 2800 50  0001 C CNN
F 1 "VEE" H 2517 3123 50  0000 C CNN
F 2 "" H 2500 2950 50  0001 C CNN
F 3 "" H 2500 2950 50  0001 C CNN
	1    2500 2950
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR014
U 1 1 5D14341C
P 2500 3550
F 0 "#PWR014" H 2500 3400 50  0001 C CNN
F 1 "VCC" H 2517 3723 50  0000 C CNN
F 2 "" H 2500 3550 50  0001 C CNN
F 3 "" H 2500 3550 50  0001 C CNN
	1    2500 3550
	1    0    0    1   
$EndComp
$Comp
L pspice:0 #GND010
U 1 1 5D1491D3
P 2700 3350
F 0 "#GND010" H 2700 3250 50  0001 C CNN
F 1 "0" H 2700 3439 50  0000 C CNN
F 2 "" H 2700 3350 50  0001 C CNN
F 3 "~" H 2700 3350 50  0001 C CNN
	1    2700 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 3150 2900 3150
Wire Wire Line
	2900 3150 2900 3550
Wire Wire Line
	2900 3150 2900 2800
Wire Wire Line
	2900 2800 2100 2800
Connection ~ 2900 3150
$Comp
L Device:R R11
U 1 1 5D14BB41
P 2100 3000
F 0 "R11" H 2030 2954 50  0000 R CNN
F 1 "100k" H 2030 3045 50  0000 R CNN
F 2 "" V 2030 3000 50  0001 C CNN
F 3 "~" H 2100 3000 50  0001 C CNN
	1    2100 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	2100 2800 2100 2850
Wire Wire Line
	2100 3150 2100 3250
Connection ~ 2100 3250
Wire Wire Line
	1050 3250 1050 4200
Text GLabel 2000 3250 3    50   Input ~ 0
fbk
Wire Wire Line
	4000 2650 3550 2650
Wire Wire Line
	3550 2650 3550 3150
Wire Wire Line
	3550 3150 2900 3150
Wire Wire Line
	1050 3250 2100 3250
$Comp
L Device:R R8
U 1 1 5D13E54D
P 3350 3550
F 0 "R8" V 3143 3550 50  0000 C CNN
F 1 "29.5k" V 3234 3550 50  0000 C CNN
F 2 "" V 3280 3550 50  0001 C CNN
F 3 "~" H 3350 3550 50  0001 C CNN
	1    3350 3550
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5D12940A
P 1650 4450
F 0 "C3" H 1765 4496 50  0000 L CNN
F 1 "10n" H 1765 4405 50  0000 L CNN
F 2 "" H 1688 4300 50  0001 C CNN
F 3 "~" H 1650 4450 50  0001 C CNN
	1    1650 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D12CD6A
P 2700 4200
F 0 "R5" V 2493 4200 50  0000 C CNN
F 1 "100k" V 2584 4200 50  0000 C CNN
F 2 "" V 2630 4200 50  0001 C CNN
F 3 "~" H 2700 4200 50  0001 C CNN
	1    2700 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 3550 6450 3550
Wire Wire Line
	2900 3550 3200 3550
$EndSCHEMATC
