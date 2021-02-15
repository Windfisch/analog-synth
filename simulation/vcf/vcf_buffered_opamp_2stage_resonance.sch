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
Text Notes 3875 3850 0    50   ~ 0
input preattenuation.\ncontrols distortion
$Comp
L power:VCC #PWR01
U 1 1 5CF0E364
P 3425 875
F 0 "#PWR01" H 3425 725 50  0001 C CNN
F 1 "VCC" H 3442 1048 50  0000 C CNN
F 2 "" H 3425 875 50  0001 C CNN
F 3 "" H 3425 875 50  0001 C CNN
	1    3425 875 
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR02
U 1 1 5CF0FCB5
P 3425 2075
F 0 "#PWR02" H 3425 1925 50  0001 C CNN
F 1 "VEE" H 3443 2248 50  0000 C CNN
F 2 "" H 3425 2075 50  0001 C CNN
F 3 "" H 3425 2075 50  0001 C CNN
	1    3425 2075
	-1   0    0    1   
$EndComp
$Comp
L pspice:0 #GND01
U 1 1 5CF02FCA
P 3775 1525
F 0 "#GND01" H 3775 1425 50  0001 C CNN
F 1 "0" H 3725 1625 50  0000 C CNN
F 2 "" H 3775 1525 50  0001 C CNN
F 3 "~" H 3775 1525 50  0001 C CNN
	1    3775 1525
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5E46C3BD
P 3925 1475
F 0 "#PWR09" H 3925 1225 50  0001 C CNN
F 1 "GND" H 3930 1302 50  0000 C CNN
F 2 "" H 3925 1475 50  0001 C CNN
F 3 "" H 3925 1475 50  0001 C CNN
	1    3925 1475
	1    0    0    -1  
$EndComp
Wire Wire Line
	3775 1525 3775 1475
Wire Wire Line
	3775 1475 3925 1475
Wire Wire Line
	3775 1475 3425 1475
Connection ~ 3775 1475
Connection ~ 3425 1475
$Comp
L pspice:QPNP Q4
U 1 1 5E490B12
P 6375 5050
F 0 "Q4" H 6025 4850 50  0000 L CNN
F 1 "BC557B" V 6675 4900 50  0000 L CNN
F 2 "" H 6375 5050 50  0001 C CNN
F 3 "~" H 6375 5050 50  0001 C CNN
F 4 "Q" H 6375 5050 50  0001 C CNN "Spice_Primitive"
F 5 "BC557b" H 6375 5050 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6375 5050 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/BC547_557.lib" H 6375 5050 50  0001 C CNN "Spice_Lib_File"
	1    6375 5050
	-1   0    0    1   
$EndComp
$Comp
L pspice:QPNP Q2
U 1 1 5E49336A
P 5775 5050
F 0 "Q2" H 5775 4675 50  0000 L CNN
F 1 "BC557B" H 5325 5200 50  0001 L CNN
F 2 "" H 5775 5050 50  0001 C CNN
F 3 "~" H 5775 5050 50  0001 C CNN
F 4 "Q" H 5775 5050 50  0001 C CNN "Spice_Primitive"
F 5 "BC557b" H 5775 5050 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5775 5050 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/BC547_557.lib" H 5775 5050 50  0001 C CNN "Spice_Lib_File"
	1    5775 5050
	1    0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5E4AA323
P 4775 3775
F 0 "R3" H 4850 3725 50  0000 L CNN
F 1 "1k" V 4775 3725 50  0000 L CNN
F 2 "" V 4705 3775 50  0001 C CNN
F 3 "~" H 4775 3775 50  0001 C CNN
	1    4775 3775
	1    0    0    1   
$EndComp
Wire Wire Line
	4675 3525 4775 3525
Wire Wire Line
	4775 3525 4775 3625
Text GLabel 3850 3525 1    50   Input ~ 0
signal_in
$Comp
L power:GND #PWR08
U 1 1 5E4DE552
P 4775 3925
F 0 "#PWR08" H 4775 3675 50  0001 C CNN
F 1 "GND" H 4780 3752 50  0000 C CNN
F 2 "" H 4775 3925 50  0001 C CNN
F 3 "" H 4775 3925 50  0001 C CNN
	1    4775 3925
	1    0    0    -1  
$EndComp
Text GLabel 8150 5475 1    50   Input ~ 0
diff1
Text GLabel 8150 5675 3    50   Input ~ 0
diff2
$Comp
L power:GND #PWR04
U 1 1 5E4DF6C2
P 3650 4125
F 0 "#PWR04" H 3650 3875 50  0001 C CNN
F 1 "GND" H 3655 3952 50  0000 C CNN
F 2 "" H 3650 4125 50  0001 C CNN
F 3 "" H 3650 4125 50  0001 C CNN
	1    3650 4125
	1    0    0    -1  
$EndComp
$Comp
L pspice:QPNP Q12
U 1 1 5E56D8B8
P 6375 5950
F 0 "Q12" H 6025 5750 50  0000 L CNN
F 1 "BC557B" V 6675 5800 50  0000 L CNN
F 2 "" H 6375 5950 50  0001 C CNN
F 3 "~" H 6375 5950 50  0001 C CNN
F 4 "Q" H 6375 5950 50  0001 C CNN "Spice_Primitive"
F 5 "BC557b" H 6375 5950 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6375 5950 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/BC547_557.lib" H 6375 5950 50  0001 C CNN "Spice_Lib_File"
	1    6375 5950
	-1   0    0    1   
$EndComp
$Comp
L pspice:QPNP Q8
U 1 1 5E56D8C2
P 5775 5950
F 0 "Q8" H 5775 5575 50  0000 L CNN
F 1 "BC557B" H 5325 6100 50  0001 L CNN
F 2 "" H 5775 5950 50  0001 C CNN
F 3 "~" H 5775 5950 50  0001 C CNN
F 4 "Q" H 5775 5950 50  0001 C CNN "Spice_Primitive"
F 5 "BC557b" H 5775 5950 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5775 5950 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/BC547_557.lib" H 5775 5950 50  0001 C CNN "Spice_Lib_File"
	1    5775 5950
	1    0    0    1   
$EndComp
$Comp
L pspice:QPNP Q11
U 1 1 5E581D3A
P 6375 4250
F 0 "Q11" H 6025 4050 50  0000 L CNN
F 1 "BC557B" V 6675 4100 50  0000 L CNN
F 2 "" H 6375 4250 50  0001 C CNN
F 3 "~" H 6375 4250 50  0001 C CNN
F 4 "Q" H 6375 4250 50  0001 C CNN "Spice_Primitive"
F 5 "BC557b" H 6375 4250 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6375 4250 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/BC547_557.lib" H 6375 4250 50  0001 C CNN "Spice_Lib_File"
	1    6375 4250
	-1   0    0    1   
$EndComp
$Comp
L pspice:QPNP Q7
U 1 1 5E581D44
P 5775 4250
F 0 "Q7" H 5775 3875 50  0000 L CNN
F 1 "BC557B" H 5325 4400 50  0001 L CNN
F 2 "" H 5775 4250 50  0001 C CNN
F 3 "~" H 5775 4250 50  0001 C CNN
F 4 "Q" H 5775 4250 50  0001 C CNN "Spice_Primitive"
F 5 "BC557b" H 5775 4250 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5775 4250 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/BC547_557.lib" H 5775 4250 50  0001 C CNN "Spice_Lib_File"
	1    5775 4250
	1    0    0    1   
$EndComp
Wire Wire Line
	5925 4600 5925 4650
Connection ~ 5925 4650
Wire Wire Line
	5925 4650 5925 4700
Wire Wire Line
	6225 4600 6225 4650
Connection ~ 6225 4650
Wire Wire Line
	6225 4650 6225 4700
$Comp
L pspice:QPNP Q10
U 1 1 5E588661
P 6375 3450
F 0 "Q10" H 6025 3250 50  0000 L CNN
F 1 "BC557B" V 6675 3300 50  0000 L CNN
F 2 "" H 6375 3450 50  0001 C CNN
F 3 "~" H 6375 3450 50  0001 C CNN
F 4 "Q" H 6375 3450 50  0001 C CNN "Spice_Primitive"
F 5 "BC557b" H 6375 3450 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6375 3450 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/BC547_557.lib" H 6375 3450 50  0001 C CNN "Spice_Lib_File"
	1    6375 3450
	-1   0    0    1   
$EndComp
$Comp
L pspice:QPNP Q6
U 1 1 5E58866B
P 5775 3450
F 0 "Q6" H 5775 3075 50  0000 L CNN
F 1 "BC557B" H 5325 3600 50  0001 L CNN
F 2 "" H 5775 3450 50  0001 C CNN
F 3 "~" H 5775 3450 50  0001 C CNN
F 4 "Q" H 5775 3450 50  0001 C CNN "Spice_Primitive"
F 5 "BC557b" H 5775 3450 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5775 3450 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/BC547_557.lib" H 5775 3450 50  0001 C CNN "Spice_Lib_File"
	1    5775 3450
	1    0    0    1   
$EndComp
Wire Wire Line
	5925 3800 5925 3850
Connection ~ 5925 3850
Wire Wire Line
	5925 3850 5925 3900
Wire Wire Line
	6225 3800 6225 3850
Connection ~ 6225 3850
Wire Wire Line
	6225 3850 6225 3900
Wire Wire Line
	5925 3000 5925 3050
Connection ~ 5925 3050
Wire Wire Line
	5925 3050 5925 3100
Wire Wire Line
	6225 3000 6225 3050
Connection ~ 6225 3050
Wire Wire Line
	6225 3050 6225 3100
$Comp
L Device:R R11
U 1 1 5E5F7CB4
P 5475 3950
F 0 "R11" H 5275 4025 50  0000 L CNN
F 1 "150" V 5475 3875 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5405 3950 50  0001 C CNN
F 3 "~" H 5475 3950 50  0001 C CNN
	1    5475 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5475 4250 5475 4100
Wire Wire Line
	5475 3800 5475 3650
Wire Wire Line
	6675 3450 6675 3650
Wire Wire Line
	6675 3650 5475 3650
Connection ~ 5475 3650
Wire Wire Line
	5475 3650 5475 3450
$Comp
L Device:R R12
U 1 1 5E6209B4
P 5475 4750
F 0 "R12" H 5275 4825 50  0000 L CNN
F 1 "150" V 5475 4675 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5405 4750 50  0001 C CNN
F 3 "~" H 5475 4750 50  0001 C CNN
	1    5475 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5E620DF1
P 5475 5600
F 0 "R13" H 5275 5675 50  0000 L CNN
F 1 "150" V 5475 5525 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5405 5600 50  0001 C CNN
F 3 "~" H 5475 5600 50  0001 C CNN
	1    5475 5600
	1    0    0    -1  
$EndComp
Connection ~ 5475 5050
Wire Wire Line
	5475 5050 5475 4900
Wire Wire Line
	5475 4600 5475 4450
Connection ~ 5475 4250
Wire Wire Line
	6675 4250 6675 4450
Wire Wire Line
	6675 4450 5475 4450
Connection ~ 5475 4450
Wire Wire Line
	5475 4450 5475 4250
Wire Wire Line
	6675 5050 6675 5250
Wire Wire Line
	6675 5250 5475 5250
Connection ~ 5475 5250
Wire Wire Line
	5475 5250 5475 5050
$Comp
L Device:R R14
U 1 1 5E648DC2
P 5475 6350
F 0 "R14" H 5275 6425 50  0000 L CNN
F 1 "220" V 5475 6275 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5405 6350 50  0001 C CNN
F 3 "~" H 5475 6350 50  0001 C CNN
	1    5475 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5475 6200 5475 6150
Connection ~ 5475 5950
Wire Wire Line
	6675 5950 6675 6150
Wire Wire Line
	6675 6150 5475 6150
Connection ~ 5475 6150
Wire Wire Line
	5475 6150 5475 5950
Connection ~ 5925 5550
Wire Wire Line
	5925 5550 5925 5600
Wire Wire Line
	6225 5400 6225 5550
Connection ~ 6225 5550
Wire Wire Line
	6225 5550 6225 5600
Wire Wire Line
	5475 5250 5475 5450
Wire Wire Line
	5475 5750 5475 5950
Wire Wire Line
	6675 2950 5475 2950
Wire Wire Line
	5475 2950 5475 3050
Connection ~ 5475 3450
Wire Wire Line
	5475 3350 5475 3450
$Comp
L Device:R R6
U 1 1 5E7B578C
P 5475 3200
F 0 "R6" H 5525 3300 50  0000 L CNN
F 1 "150" V 5475 3125 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5405 3200 50  0001 C CNN
F 3 "~" H 5475 3200 50  0001 C CNN
	1    5475 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5E7CAAFA
P 5325 3200
F 0 "R4" H 5125 3125 50  0000 L CNN
F 1 "180" V 5325 3125 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5255 3200 50  0001 C CNN
F 3 "~" H 5325 3200 50  0001 C CNN
	1    5325 3200
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5E7CDEFA
P 5325 3350
F 0 "#PWR010" H 5325 3100 50  0001 C CNN
F 1 "GND" H 5330 3177 50  0000 C CNN
F 2 "" H 5325 3350 50  0001 C CNN
F 3 "" H 5325 3350 50  0001 C CNN
	1    5325 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5475 3050 5325 3050
Connection ~ 5475 3050
Wire Wire Line
	5475 2650 5475 2600
Wire Wire Line
	4775 2600 4775 3525
Connection ~ 4775 3525
Text GLabel 4775 2800 0    50   Input ~ 0
signal_preatt
$Comp
L pspice:QPNP Q5
U 1 1 5E5A7AAF
P 5775 2650
F 0 "Q5" H 5775 2275 50  0000 L CNN
F 1 "BC557B" H 5325 2800 50  0001 L CNN
F 2 "" H 5775 2650 50  0001 C CNN
F 3 "~" H 5775 2650 50  0001 C CNN
F 4 "Q" H 5775 2650 50  0001 C CNN "Spice_Primitive"
F 5 "BC557b" H 5775 2650 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5775 2650 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/BC547_557.lib" H 5775 2650 50  0001 C CNN "Spice_Lib_File"
	1    5775 2650
	1    0    0    1   
$EndComp
Connection ~ 5475 2650
Connection ~ 5475 2950
Text Notes 8575 6400 0    50   ~ 0
differential to\nsingle-ended
Wire Wire Line
	9025 6175 9200 6175
Wire Wire Line
	8525 5675 8600 5675
Wire Wire Line
	8525 6175 8725 6175
Wire Wire Line
	8525 5675 8525 6175
$Comp
L Device:R R10
U 1 1 5D992BCF
P 8875 6175
F 0 "R10" V 8775 6150 50  0000 L CNN
F 1 "22k" V 8875 6075 50  0000 L CNN
F 2 "" V 8805 6175 50  0001 C CNN
F 3 "~" H 8875 6175 50  0001 C CNN
	1    8875 6175
	0    1    1    0   
$EndComp
Connection ~ 8525 5675
Wire Wire Line
	8450 5675 8525 5675
$Comp
L pspice:QPNP Q9
U 1 1 5E5A7AA5
P 6375 2650
F 0 "Q9" H 6025 2450 50  0000 L CNN
F 1 "BC557B" V 6675 2500 50  0000 L CNN
F 2 "" H 6375 2650 50  0001 C CNN
F 3 "~" H 6375 2650 50  0001 C CNN
F 4 "Q" H 6375 2650 50  0001 C CNN "Spice_Primitive"
F 5 "BC557b" H 6375 2650 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6375 2650 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/BC547_557.lib" H 6375 2650 50  0001 C CNN "Spice_Lib_File"
	1    6375 2650
	-1   0    0    1   
$EndComp
$Comp
L pspice:0 #GND02
U 1 1 5E50138F
P 6075 1500
F 0 "#GND02" H 6075 1400 50  0001 C CNN
F 1 "0" H 6075 1589 50  0000 C CNN
F 2 "" H 6075 1500 50  0001 C CNN
F 3 "~" H 6075 1500 50  0001 C CNN
	1    6075 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5925 2300 6075 2300
Connection ~ 6075 2300
Wire Wire Line
	6075 2300 6225 2300
Wire Wire Line
	5300 2600 5475 2600
Wire Wire Line
	5000 2600 4775 2600
$Comp
L Device:R R2
U 1 1 5E4ABD6D
P 4525 3525
F 0 "R2" V 4425 3475 50  0000 L CNN
F 1 "100k" V 4525 3425 50  0000 L CNN
F 2 "" V 4455 3525 50  0001 C CNN
F 3 "~" H 4525 3525 50  0001 C CNN
	1    4525 3525
	0    -1   1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 5E770C21
P 6675 2800
F 0 "R15" H 6525 2800 50  0000 L CNN
F 1 "470" V 6675 2725 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6605 2800 50  0001 C CNN
F 3 "~" H 6675 2800 50  0001 C CNN
	1    6675 2800
	1    0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5E795EB8
P 5475 2800
F 0 "R5" H 5325 2800 50  0000 L CNN
F 1 "470" V 5475 2725 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5405 2800 50  0001 C CNN
F 3 "~" H 5475 2800 50  0001 C CNN
	1    5475 2800
	1    0    0    1   
$EndComp
Connection ~ 6075 6500
$Comp
L power:VEE #PWR011
U 1 1 5E671F11
P 6075 6500
F 0 "#PWR011" H 6075 6350 50  0001 C CNN
F 1 "VEE" H 6092 6673 50  0000 C CNN
F 2 "" H 6075 6500 50  0001 C CNN
F 3 "" H 6075 6500 50  0001 C CNN
	1    6075 6500
	1    0    0    1   
$EndComp
Wire Wire Line
	6075 6300 6225 6300
Connection ~ 6075 6300
Wire Wire Line
	6075 6500 5475 6500
Wire Wire Line
	6075 6300 6075 6500
Wire Wire Line
	5925 6300 6075 6300
$Comp
L Device:C C5
U 1 1 5E566114
P 6075 5550
F 0 "C5" V 6025 5775 50  0000 C CNN
F 1 "47n" V 6100 5800 50  0000 C CNN
F 2 "footprints:C_rect_smd_combo" H 6113 5400 50  0001 C CNN
F 3 "~" H 6075 5550 50  0001 C CNN
	1    6075 5550
	0    1    1    0   
$EndComp
$Comp
L pspice:VSOURCE V1
U 1 1 5E46A8BC
P 3425 1175
F 0 "V1" H 3025 1275 50  0000 L CNN
F 1 "5" H 3875 1175 50  0000 L CNN
F 2 "" H 3425 1175 50  0001 C CNN
F 3 "~" H 3425 1175 50  0001 C CNN
	1    3425 1175
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V2
U 1 1 5E46AAF2
P 3425 1775
F 0 "V2" H 3025 1875 50  0000 L CNN
F 1 "5" H 3725 1425 50  0000 L CNN
F 2 "" H 3425 1775 50  0001 C CNN
F 3 "~" H 3425 1775 50  0001 C CNN
	1    3425 1775
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5E581D4A
P 6075 4650
F 0 "C4" V 6025 4875 50  0000 C CNN
F 1 "47n" V 6100 4900 50  0000 C CNN
F 2 "footprints:C_rect_smd_combo" H 6113 4500 50  0001 C CNN
F 3 "~" H 6075 4650 50  0001 C CNN
	1    6075 4650
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5E588671
P 6075 3850
F 0 "C3" V 6025 4075 50  0000 C CNN
F 1 "47n" V 6100 4100 50  0000 C CNN
F 2 "footprints:C_rect_smd_combo" H 6113 3700 50  0001 C CNN
F 3 "~" H 6075 3850 50  0001 C CNN
	1    6075 3850
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5E5A7AB5
P 6075 3050
F 0 "C2" V 6025 3275 50  0000 C CNN
F 1 "47n" V 6100 3300 50  0000 C CNN
F 2 "footprints:C_rect_smd_combo" H 6113 2900 50  0001 C CNN
F 3 "~" H 6075 3050 50  0001 C CNN
	1    6075 3050
	0    1    1    0   
$EndComp
$Comp
L pspice:ISOURCE I1
U 1 1 5E5006E5
P 6075 1900
F 0 "I1" H 6305 1946 50  0000 L CNN
F 1 "0.01m" H 6305 1855 50  0000 L CNN
F 2 "" H 6075 1900 50  0001 C CNN
F 3 "~" H 6075 1900 50  0001 C CNN
	1    6075 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8525 5375 8525 5475
Connection ~ 8525 5475
Wire Wire Line
	8525 5475 8600 5475
$Comp
L Device:C C6
U 1 1 5E50CBFF
P 5150 2600
F 0 "C6" V 4898 2600 50  0000 C CNN
F 1 "10u" V 4989 2600 50  0000 C CNN
F 2 "" H 5188 2450 50  0001 C CNN
F 3 "~" H 5150 2600 50  0001 C CNN
	1    5150 2600
	0    1    1    0   
$EndComp
$Comp
L power:VEE #PWR05
U 1 1 5CF108F1
P 8800 5875
F 0 "#PWR05" H 8800 5725 50  0001 C CNN
F 1 "VEE" H 8900 5925 50  0000 C CNN
F 2 "" H 8800 5875 50  0001 C CNN
F 3 "" H 8800 5875 50  0001 C CNN
	1    8800 5875
	1    0    0    1   
$EndComp
$Comp
L power:VCC #PWR06
U 1 1 5CF1034A
P 8800 5275
F 0 "#PWR06" H 8800 5125 50  0001 C CNN
F 1 "VCC" H 8700 5325 50  0000 C CNN
F 2 "" H 8800 5275 50  0001 C CNN
F 3 "" H 8800 5275 50  0001 C CNN
	1    8800 5275
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5E6BBA9A
P 8525 5100
F 0 "#PWR012" H 8525 4850 50  0001 C CNN
F 1 "GND" H 8530 4927 50  0000 C CNN
F 2 "" H 8525 5100 50  0001 C CNN
F 3 "" H 8525 5100 50  0001 C CNN
	1    8525 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	8525 5100 8525 5075
Wire Wire Line
	3650 3525 4375 3525
$Comp
L Device:R R9
U 1 1 5D9941E7
P 8525 5225
F 0 "R9" H 8575 5175 50  0000 L CNN
F 1 "22k" V 8525 5125 50  0000 L CNN
F 2 "" V 8455 5225 50  0001 C CNN
F 3 "~" H 8525 5225 50  0001 C CNN
	1    8525 5225
	-1   0    0    1   
$EndComp
Wire Wire Line
	9200 6175 9200 5575
$Comp
L pspice:OPAMP U2
U 1 1 5CF0F48E
P 8900 5575
F 0 "U2" H 9025 5475 50  0000 L CNN
F 1 "TL074" H 8900 5375 50  0000 L CNN
F 2 "" H 8900 5575 50  0001 C CNN
F 3 "~" H 8900 5575 50  0001 C CNN
F 4 "X" H 8900 5575 50  0001 C CNN "Spice_Primitive"
F 5 "TL074" H 8900 5575 50  0001 C CNN "Spice_Model"
F 6 "Y" H 8900 5575 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/TL074.ti.lib" H 8900 5575 50  0001 C CNN "Spice_Lib_File"
F 8 "1,2,4,5,3" H 8900 5575 50  0001 C CNN "Spice_Node_Sequence"
	1    8900 5575
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 5475 8525 5475
Text Notes 7050 3975 0    50   ~ 0
resonance control.\n(good resonance at 50k-100k)
$Comp
L Device:R R7
U 1 1 5D98E38E
P 8300 5475
F 0 "R7" V 8200 5450 50  0000 L CNN
F 1 "1k" V 8300 5375 50  0000 L CNN
F 2 "" V 8230 5475 50  0001 C CNN
F 3 "~" H 8300 5475 50  0001 C CNN
	1    8300 5475
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5D9923C5
P 8300 5675
F 0 "R8" V 8400 5650 50  0000 L CNN
F 1 "1k" V 8300 5575 50  0000 L CNN
F 2 "" V 8230 5675 50  0001 C CNN
F 3 "~" H 8300 5675 50  0001 C CNN
	1    8300 5675
	0    1    1    0   
$EndComp
Text Notes 7175 6300 0    50   ~ 0
ca 6 uA
Text Notes 6375 6325 0    50   ~ 0
ca 0.5* I1 each
Text Notes 6650 6475 0    50   ~ 0
diff1,2 = -3.3V ca
Text GLabel 5475 5950 0    50   Input ~ 0
foo
Text Notes 5050 5975 0    50   ~ 0
-3.9V
Wire Wire Line
	8150 5475 8150 5525
Wire Wire Line
	8150 5625 8150 5675
Wire Wire Line
	7225 6075 7825 6075
Wire Wire Line
	7825 6075 7825 5650
$Comp
L pspice:OPAMP U101
U 1 1 6012261D
P 7525 4725
F 0 "U101" H 7625 4625 50  0000 L CNN
F 1 "TL074" H 7525 4525 50  0000 L CNN
F 2 "" H 7525 4725 50  0001 C CNN
F 3 "~" H 7525 4725 50  0001 C CNN
F 4 "X" H 7525 4725 50  0001 C CNN "Spice_Primitive"
F 5 "TL074" H 7525 4725 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7525 4725 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/TL074.ti.lib" H 7525 4725 50  0001 C CNN "Spice_Lib_File"
F 8 "1,2,4,5,3" H 7525 4725 50  0001 C CNN "Spice_Node_Sequence"
	1    7525 4725
	1    0    0    -1  
$EndComp
Wire Wire Line
	7225 4825 7225 5150
Wire Wire Line
	7225 5150 7825 5150
Wire Wire Line
	7825 5150 7825 4725
$Comp
L power:VEE #PWR0102
U 1 1 601229C8
P 7425 5025
F 0 "#PWR0102" H 7425 4875 50  0001 C CNN
F 1 "VEE" H 7525 5075 50  0000 C CNN
F 2 "" H 7425 5025 50  0001 C CNN
F 3 "" H 7425 5025 50  0001 C CNN
	1    7425 5025
	1    0    0    1   
$EndComp
$Comp
L power:VCC #PWR0101
U 1 1 601229D2
P 7425 4425
F 0 "#PWR0101" H 7425 4275 50  0001 C CNN
F 1 "VCC" H 7325 4475 50  0000 C CNN
F 2 "" H 7425 4425 50  0001 C CNN
F 3 "" H 7425 4425 50  0001 C CNN
	1    7425 4425
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0103
U 1 1 6011FF1E
P 7425 5350
F 0 "#PWR0103" H 7425 5200 50  0001 C CNN
F 1 "VCC" H 7325 5400 50  0000 C CNN
F 2 "" H 7425 5350 50  0001 C CNN
F 3 "" H 7425 5350 50  0001 C CNN
	1    7425 5350
	-1   0    0    -1  
$EndComp
$Comp
L power:VEE #PWR0104
U 1 1 6011FB49
P 7425 5950
F 0 "#PWR0104" H 7425 5800 50  0001 C CNN
F 1 "VEE" H 7525 6000 50  0000 C CNN
F 2 "" H 7425 5950 50  0001 C CNN
F 3 "" H 7425 5950 50  0001 C CNN
	1    7425 5950
	1    0    0    1   
$EndComp
Wire Wire Line
	7225 5750 7225 6075
$Comp
L pspice:OPAMP U102
U 1 1 6011D9BF
P 7525 5650
F 0 "U102" H 7625 5550 50  0000 L CNN
F 1 "TL074" H 7525 5450 50  0000 L CNN
F 2 "" H 7525 5650 50  0001 C CNN
F 3 "~" H 7525 5650 50  0001 C CNN
F 4 "X" H 7525 5650 50  0001 C CNN "Spice_Primitive"
F 5 "TL074" H 7525 5650 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7525 5650 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/TL074.ti.lib" H 7525 5650 50  0001 C CNN "Spice_Lib_File"
F 8 "1,2,4,5,3" H 7525 5650 50  0001 C CNN "Spice_Node_Sequence"
	1    7525 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7025 5450 7025 4625
Wire Wire Line
	7025 4625 7225 4625
Wire Wire Line
	7825 4725 7950 4725
Wire Wire Line
	7950 4725 7950 5525
Wire Wire Line
	7950 5525 8150 5525
Connection ~ 7825 4725
Wire Wire Line
	7825 5625 7825 5650
Wire Wire Line
	7825 5625 8150 5625
Connection ~ 7825 5650
$Comp
L Device:R R101
U 1 1 6017C0BD
P 9400 5575
F 0 "R101" V 9500 5550 50  0000 L CNN
F 1 "1k" V 9400 5475 50  0000 L CNN
F 2 "" V 9330 5575 50  0001 C CNN
F 3 "~" H 9400 5575 50  0001 C CNN
	1    9400 5575
	0    1    1    0   
$EndComp
$Comp
L pspice:OPAMP U103
U 1 1 6017C0A8
P 10000 5475
F 0 "U103" H 10125 5375 50  0000 L CNN
F 1 "TL074" H 10000 5275 50  0000 L CNN
F 2 "" H 10000 5475 50  0001 C CNN
F 3 "~" H 10000 5475 50  0001 C CNN
F 4 "X" H 10000 5475 50  0001 C CNN "Spice_Primitive"
F 5 "TL074" H 10000 5475 50  0001 C CNN "Spice_Model"
F 6 "Y" H 10000 5475 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/TL074.ti.lib" H 10000 5475 50  0001 C CNN "Spice_Lib_File"
F 8 "1,2,4,5,3" H 10000 5475 50  0001 C CNN "Spice_Node_Sequence"
	1    10000 5475
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 6075 10300 5475
$Comp
L power:GND #PWR0105
U 1 1 6017C08D
P 9700 5375
F 0 "#PWR0105" H 9700 5125 50  0001 C CNN
F 1 "GND" H 9550 5375 50  0000 C CNN
F 2 "" H 9700 5375 50  0001 C CNN
F 3 "" H 9700 5375 50  0001 C CNN
	1    9700 5375
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0106
U 1 1 6017C083
P 9900 5175
F 0 "#PWR0106" H 9900 5025 50  0001 C CNN
F 1 "VCC" H 9800 5225 50  0000 C CNN
F 2 "" H 9900 5175 50  0001 C CNN
F 3 "" H 9900 5175 50  0001 C CNN
	1    9900 5175
	-1   0    0    -1  
$EndComp
$Comp
L power:VEE #PWR0107
U 1 1 6017C079
P 9900 5775
F 0 "#PWR0107" H 9900 5625 50  0001 C CNN
F 1 "VEE" H 10000 5825 50  0000 C CNN
F 2 "" H 9900 5775 50  0001 C CNN
F 3 "" H 9900 5775 50  0001 C CNN
	1    9900 5775
	1    0    0    1   
$EndComp
Wire Wire Line
	9550 5575 9625 5575
Connection ~ 9625 5575
$Comp
L Device:R R102
U 1 1 6017C06A
P 9975 6075
F 0 "R102" V 9875 6050 50  0000 L CNN
F 1 "23k" V 9975 5975 50  0000 L CNN
F 2 "" V 9905 6075 50  0001 C CNN
F 3 "~" H 9975 6075 50  0001 C CNN
	1    9975 6075
	0    1    1    0   
$EndComp
Wire Wire Line
	9625 5575 9625 6075
Wire Wire Line
	9625 6075 9825 6075
Wire Wire Line
	9625 5575 9700 5575
Wire Wire Line
	10125 6075 10300 6075
Text GLabel 10425 5475 2    50   Input ~ 0
signal_out
Wire Wire Line
	9250 5575 9200 5575
Connection ~ 9200 5575
$Comp
L Device:R R121
U 1 1 60810091
P 8975 2750
F 0 "R121" V 9075 2725 50  0000 L CNN
F 1 "100k" V 8975 2650 50  0000 L CNN
F 2 "" V 8905 2750 50  0001 C CNN
F 3 "~" H 8975 2750 50  0001 C CNN
	1    8975 2750
	0    -1   1    0   
$EndComp
$Comp
L pspice:OPAMP U104
U 1 1 608104CC
P 8375 2650
F 0 "U104" H 8450 2550 50  0000 L CNN
F 1 "TL074" H 8375 2450 50  0000 L CNN
F 2 "" H 8375 2650 50  0001 C CNN
F 3 "~" H 8375 2650 50  0001 C CNN
F 4 "X" H 8375 2650 50  0001 C CNN "Spice_Primitive"
F 5 "TL074" H 8375 2650 50  0001 C CNN "Spice_Model"
F 6 "Y" H 8375 2650 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/flo/analog-synth/simulation/lib/TL074.ti.lib" H 8375 2650 50  0001 C CNN "Spice_Lib_File"
F 8 "1,2,4,5,3" H 8375 2650 50  0001 C CNN "Spice_Node_Sequence"
	1    8375 2650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 608104D7
P 8675 2550
F 0 "#PWR0108" H 8675 2300 50  0001 C CNN
F 1 "GND" H 8525 2550 50  0000 C CNN
F 2 "" H 8675 2550 50  0001 C CNN
F 3 "" H 8675 2550 50  0001 C CNN
	1    8675 2550
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0109
U 1 1 608104E1
P 8475 2350
F 0 "#PWR0109" H 8475 2200 50  0001 C CNN
F 1 "VCC" H 8375 2400 50  0000 C CNN
F 2 "" H 8475 2350 50  0001 C CNN
F 3 "" H 8475 2350 50  0001 C CNN
	1    8475 2350
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR0110
U 1 1 608104EB
P 8475 2950
F 0 "#PWR0110" H 8475 2800 50  0001 C CNN
F 1 "VEE" H 8575 3000 50  0000 C CNN
F 2 "" H 8475 2950 50  0001 C CNN
F 3 "" H 8475 2950 50  0001 C CNN
	1    8475 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	8825 2750 8750 2750
Connection ~ 8750 2750
$Comp
L Device:R R122
U 1 1 608104F7
P 8400 3250
F 0 "R122" V 8300 3225 50  0000 L CNN
F 1 "10k" V 8400 3150 50  0000 L CNN
F 2 "" V 8330 3250 50  0001 C CNN
F 3 "~" H 8400 3250 50  0001 C CNN
	1    8400 3250
	0    -1   1    0   
$EndComp
Wire Wire Line
	8750 2750 8750 3250
Wire Wire Line
	8750 3250 8550 3250
Wire Wire Line
	8750 2750 8675 2750
Wire Wire Line
	8250 3250 8075 3250
Wire Wire Line
	8075 3250 8075 2650
Connection ~ 8075 2650
Wire Wire Line
	10300 5475 10425 5475
Connection ~ 10300 5475
Wire Wire Line
	10300 5475 10300 2750
Wire Wire Line
	10300 2750 9125 2750
Wire Wire Line
	5925 5400 5925 5450
Connection ~ 5925 5450
Wire Wire Line
	5925 5450 5925 5550
Connection ~ 6675 2650
Wire Wire Line
	7700 2650 8075 2650
$Comp
L Device:R R123
U 1 1 6084C380
P 7550 2650
F 0 "R123" V 7450 2625 50  0000 L CNN
F 1 "1k" V 7550 2550 50  0000 L CNN
F 2 "" V 7480 2650 50  0001 C CNN
F 3 "~" H 7550 2650 50  0001 C CNN
	1    7550 2650
	0    -1   1    0   
$EndComp
$Comp
L Device:C C121
U 1 1 60822DFB
P 6825 2650
F 0 "C121" V 6573 2650 50  0000 C CNN
F 1 "100u" V 6664 2650 50  0000 C CNN
F 2 "" H 6863 2500 50  0001 C CNN
F 3 "~" H 6825 2650 50  0001 C CNN
	1    6825 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	6975 2650 7400 2650
Wire Wire Line
	7225 5550 6750 5550
Wire Wire Line
	6650 5550 6225 5550
Wire Wire Line
	7025 5450 6750 5450
Wire Wire Line
	6650 5450 5925 5450
Wire Wire Line
	6650 5450 6750 5550
Wire Wire Line
	6750 5450 6650 5550
$Comp
L pspice:VSOURCE V4
U 1 1 5E4DBEAC
P 3650 3825
F 0 "V4" H 3250 3925 50  0000 L CNN
F 1 "SIN(0 2 1000)" H 3225 3175 50  0000 L CNN
F 2 "" H 3650 3825 50  0001 C CNN
F 3 "~" H 3650 3825 50  0001 C CNN
	1    3650 3825
	1    0    0    -1  
$EndComp
$EndSCHEMATC
