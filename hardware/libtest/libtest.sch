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
L Jumper:Jumper_2_Bridged JP1
U 1 1 5E4162F1
P 2975 3025
F 0 "JP1" H 2975 3220 50  0000 C CNN
F 1 "Jumper_2_Bridged" H 2975 3129 50  0000 C CNN
F 2 "mine:SolderDipJumper" H 2975 3025 50  0001 C CNN
F 3 "~" H 2975 3025 50  0001 C CNN
	1    2975 3025
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E4165E9
P 3000 3325
F 0 "R1" V 2793 3325 50  0000 C CNN
F 1 "R" V 2884 3325 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2930 3325 50  0001 C CNN
F 3 "~" H 3000 3325 50  0001 C CNN
	1    3000 3325
	0    1    1    0   
$EndComp
Wire Wire Line
	3175 3025 3175 3325
Wire Wire Line
	3175 3325 3150 3325
Wire Wire Line
	2850 3325 2775 3325
Wire Wire Line
	2775 3325 2775 3025
$EndSCHEMATC
