EESchema Schematic File Version 4
LIBS:measure_vco-cache
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
Text GLabel 6400 4875 2    50   Input ~ 0
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
Text Notes 3550 6775 0    50   ~ 0
Because R8 is connected to GNDREF, the triangle would be\ncentered around GNDREF, but only if the output of the\ncomparator U3 would swing between Vcc and Vee.\nHowever, U3 swings between less-than-Vcc and\nexactly Vee, so the triangle isn't centered.
Text Notes 1350 7675 0    50   ~ 0
R3 * C1 should be 100µs, this affects the frequency range\nR3 : R5 must be 2:1, this affects the triangle shape\nR4 : R6 must be 1:1, this affects the triangle shape\nR8 : R9 should be 1:2, this affects the triangle amplitude and\nfrequency range. If R9 is too large, this may cause distortion
Text GLabel 950  1800 0    50   Input ~ 0
V_control
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
Text GLabel 7200 5225 2    50   Input ~ 0
V_tune
$Comp
L Device:R R20
U 1 1 5D054E64
P 1450 1650
F 0 "R20" V 1550 1700 50  0000 R CNN
F 1 "12k2" V 1450 1750 50  0000 R CNN
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
	2600 6400 2850 6400
Wire Wire Line
	2900 5650 2900 5900
Connection ~ 2900 5900
Text Notes 3000 5400 0    50   ~ 0
unused
$Comp
L Device:R_POT R10
U 1 1 5D1F262E
P 7050 5225
F 0 "R10" H 6980 5271 50  0000 R CNN
F 1 "1k" V 7050 5275 50  0000 R CNN
F 2 "" H 7050 5225 50  0001 C CNN
F 3 "~" H 7050 5225 50  0001 C CNN
	1    7050 5225
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR027
U 1 1 5D1F30D6
P 7050 5375
F 0 "#PWR027" H 7050 5225 50  0001 C CNN
F 1 "VEE" H 7068 5548 50  0000 C CNN
F 2 "" H 7050 5375 50  0001 C CNN
F 3 "" H 7050 5375 50  0001 C CNN
	1    7050 5375
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR014
U 1 1 5D1F38FD
P 7050 5075
F 0 "#PWR014" H 7050 4925 50  0001 C CNN
F 1 "VCC" H 7067 5248 50  0000 C CNN
F 2 "" H 7050 5075 50  0001 C CNN
F 3 "" H 7050 5075 50  0001 C CNN
	1    7050 5075
	1    0    0    -1  
$EndComp
Text Notes 7200 5575 0    50   ~ 0
middle\npositon\nis fine
$Comp
L Analog_DAC:MCP4822 U4
U 1 1 5D1F7952
P 5900 4975
F 0 "U4" H 5500 5425 50  0000 C CNN
F 1 "MCP4822" H 5600 5325 50  0000 C CNN
F 2 "" H 6700 4675 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 6700 4675 50  0001 C CNN
	1    5900 4975
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6300 5650 6300
Text GLabel 5400 4875 0    50   Input ~ 0
STM32_PE12
Text GLabel 5400 5075 0    50   Input ~ 0
STM32_PE14
Text GLabel 5400 5175 0    50   Input ~ 0
STM32_PE13
Wire Wire Line
	5400 4975 4800 4975
Wire Wire Line
	4800 4975 4800 5475
Wire Wire Line
	4800 5475 5900 5475
$Comp
L power:GNDREF #PWR013
U 1 1 5D1FFD8B
P 5900 5575
F 0 "#PWR013" H 5900 5325 50  0001 C CNN
F 1 "GNDREF" H 5905 5402 50  0000 C CNN
F 2 "" H 5900 5575 50  0001 C CNN
F 3 "" H 5900 5575 50  0001 C CNN
	1    5900 5575
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5575 5900 5475
Connection ~ 5900 5475
$Comp
L power:VCC #PWR012
U 1 1 5D20405E
P 5900 4575
F 0 "#PWR012" H 5900 4425 50  0001 C CNN
F 1 "VCC" H 5917 4748 50  0000 C CNN
F 2 "" H 5900 4575 50  0001 C CNN
F 3 "" H 5900 4575 50  0001 C CNN
	1    5900 4575
	1    0    0    -1  
$EndComp
NoConn ~ 6400 5175
$Comp
L Diode:1N5817 D2
U 1 1 5D20D972
P 9150 5375
F 0 "D2" V 9104 5454 50  0000 L CNN
F 1 "1N5817" V 9195 5454 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 9150 5200 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 9150 5375 50  0001 C CNN
	1    9150 5375
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5D20E97C
P 9150 4975
F 0 "R11" H 9220 5021 50  0000 L CNN
F 1 "10k" V 9150 4900 50  0000 L CNN
F 2 "" V 9080 4975 50  0001 C CNN
F 3 "~" H 9150 4975 50  0001 C CNN
	1    9150 4975
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR011
U 1 1 5D20F2EC
P 9075 5550
F 0 "#PWR011" H 9075 5300 50  0001 C CNN
F 1 "GNDREF" H 9080 5377 50  0000 C CNN
F 2 "" H 9075 5550 50  0001 C CNN
F 3 "" H 9075 5550 50  0001 C CNN
	1    9075 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 5225 9150 5175
Text GLabel 9400 5175 2    50   Input ~ 0
STM32_PE7
Wire Wire Line
	9400 5175 9150 5175
Connection ~ 9150 5175
Wire Wire Line
	9150 5175 9150 5125
Text GLabel 8900 4825 0    50   Input ~ 0
square_ctl
Wire Wire Line
	8900 4825 9150 4825
Text Notes 9350 5075 0    50   ~ 0
measurement pin
Text Notes 8100 6425 0    50   ~ 0
square_ctl swings between Vee and Vcc - 1.5V (circa).\nGNDREF is at (Vcc+Vee)/2, i.e. PE7 sees at least 3V for\nVcc-Vee = 9V.\nThe diodes protect the MCU pin from overvoltage (D1)\nand undervoltage (D2): The schottky diode D2 clamps\naway negative voltages (to approx. -200mV), while the\nzener diode D1 limits. That's within the MCU specs.\nthe voltage to 3.3V
$Comp
L Device:R R8
U 1 1 5D41EF05
P 2600 6550
F 0 "R8" V 2500 6550 50  0000 C CNN
F 1 "50k" V 2600 6550 50  0000 C CNN
F 2 "" V 2530 6550 50  0001 C CNN
F 3 "~" H 2600 6550 50  0001 C CNN
	1    2600 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR07
U 1 1 5D42D378
P 2600 6700
F 0 "#PWR07" H 2600 6450 50  0001 C CNN
F 1 "GNDREF" H 2605 6527 50  0000 C CNN
F 2 "" H 2600 6700 50  0001 C CNN
F 3 "" H 2600 6700 50  0001 C CNN
	1    2600 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D1
U 1 1 5D432ACA
P 9000 5375
F 0 "D1" V 8950 5200 50  0000 L CNN
F 1 "3V3" V 9050 5150 50  0000 L CNN
F 2 "" H 9000 5375 50  0001 C CNN
F 3 "~" H 9000 5375 50  0001 C CNN
	1    9000 5375
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 5525 9075 5525
Wire Wire Line
	9075 5550 9075 5525
Connection ~ 9075 5525
Wire Wire Line
	9075 5525 9150 5525
Wire Wire Line
	9000 5225 9000 5175
Wire Wire Line
	9000 5175 9150 5175
Text Notes 3550 7175 0    50   ~ 0
Changing the R8/R9 ratio affects the maximum frequency\nand the triangle's amplitude. R8 = 16k has proved to work,\nproviding very high maximum frequencies.\nR8 = 5k and R9 = 10k works fine, too.
Wire Wire Line
	6150 2000 6300 2000
Text Notes 4500 950  0    50   ~ 0
R16 determines the I_C current through\nQ4 when Q4's base is at GNDREF.\nTogether with V_tune, it determines the pitch.\nChoose R16 and V_tune such, that U8's output needs\nto be at around GNDREF for "sane" pitches.
Text Notes 5775 3800 0    50   ~ 0
for Q4, the following holds true:\nI_C = const * exp(V_B / VT) with VT=26mV\n(thermal voltage of a transistor)\nnow this means that Vout will double\nevery (log(2) * 26mV) = 18mV.\n\nNote that VT is temperature dependent.\nWhen the temperature rises, VT rises and so\nthe input voltage must rise too. The thermal\ncompensation consisting of TODO does that.\n\nAdditionally, Q3 and Q4 have a bulk resistance\nbetween their ideal and actual emitters. This\ncauses the VCO's tuning to drop a bit at high\nfrequencies. The Rossum compensation compensates\nfor this by measuring the current through R17 and\nfeeding back a small amount into Q3's base.
Text Notes 5300 2050 0    50   ~ 0
or use\n2x BC547
$Comp
L Device:R R18
U 1 1 5CFF1629
P 7150 1050
F 0 "R18" V 7050 1050 50  0000 C CNN
F 1 "10k" V 7150 1050 50  0000 C CNN
F 2 "" V 7080 1050 50  0001 C CNN
F 3 "~" H 7150 1050 50  0001 C CNN
	1    7150 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 3150 5450 3150
Connection ~ 5150 3150
Wire Wire Line
	5150 2550 5150 3150
Wire Wire Line
	4850 2550 5150 2550
Wire Wire Line
	4150 2550 4150 3050
Connection ~ 4150 2550
Wire Wire Line
	4550 2550 4150 2550
Wire Wire Line
	4150 1600 4150 2550
Wire Wire Line
	5450 2750 5450 3150
$Comp
L Device:C C2
U 1 1 5D01007D
P 4700 2550
F 0 "C2" V 4448 2550 50  0000 C CNN
F 1 "1n" V 4539 2550 50  0000 C CNN
F 2 "" H 4738 2400 50  0001 C CNN
F 3 "~" H 4700 2550 50  0001 C CNN
	1    4700 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 3250 4350 3250
Wire Wire Line
	4150 3450 4150 3250
$Comp
L power:GNDREF #PWR016
U 1 1 5D0032F1
P 4150 3450
F 0 "#PWR016" H 4150 3200 50  0001 C CNN
F 1 "GNDREF" H 4155 3277 50  0001 C CNN
F 2 "" H 4150 3450 50  0001 C CNN
F 3 "" H 4150 3450 50  0001 C CNN
	1    4150 3450
	1    0    0    -1  
$EndComp
Connection ~ 7550 1700
Wire Wire Line
	7700 1700 7550 1700
Text GLabel 8150 2425 1    50   Input ~ 0
V_expo
Connection ~ 6700 1600
Wire Wire Line
	5700 1600 5700 1650
Wire Wire Line
	6700 1600 5700 1600
Wire Wire Line
	6700 1050 7000 1050
Wire Wire Line
	6700 1600 6700 1050
Wire Wire Line
	6850 1600 6700 1600
Wire Wire Line
	6700 1800 6850 1800
Wire Wire Line
	6700 1950 6700 1800
$Comp
L power:GNDREF #PWR021
U 1 1 5CFF60BC
P 6700 1950
F 0 "#PWR021" H 6700 1700 50  0001 C CNN
F 1 "GNDREF" H 6705 1777 50  0001 C CNN
F 2 "" H 6700 1950 50  0001 C CNN
F 3 "" H 6700 1950 50  0001 C CNN
	1    6700 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 1700 7450 1700
Wire Wire Line
	7550 1050 7550 1700
Wire Wire Line
	7300 1050 7550 1050
$Comp
L power:VCC #PWR023
U 1 1 5CFF2C24
P 7900 2100
F 0 "#PWR023" H 7900 1950 50  0001 C CNN
F 1 "VCC" H 7918 2273 50  0000 C CNN
F 2 "" H 7900 2100 50  0001 C CNN
F 3 "" H 7900 2100 50  0001 C CNN
	1    7900 2100
	1    0    0    1   
$EndComp
$Comp
L power:VCC #PWR018
U 1 1 5CFF25D9
P 4550 3450
F 0 "#PWR018" H 4550 3300 50  0001 C CNN
F 1 "VCC" H 4568 3623 50  0000 C CNN
F 2 "" H 4550 3450 50  0001 C CNN
F 3 "" H 4550 3450 50  0001 C CNN
	1    4550 3450
	-1   0    0    1   
$EndComp
$Comp
L power:VEE #PWR017
U 1 1 5CFF2176
P 4550 2850
F 0 "#PWR017" H 4550 2700 50  0001 C CNN
F 1 "VEE" H 4567 3023 50  0000 C CNN
F 2 "" H 4550 2850 50  0001 C CNN
F 3 "" H 4550 2850 50  0001 C CNN
	1    4550 2850
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR022
U 1 1 5CFF1E9C
P 7900 1500
F 0 "#PWR022" H 7900 1350 50  0001 C CNN
F 1 "VEE" H 7917 1673 50  0000 C CNN
F 2 "" H 7900 1500 50  0001 C CNN
F 3 "" H 7900 1500 50  0001 C CNN
	1    7900 1500
	-1   0    0    -1  
$EndComp
$Comp
L pspice:OPAMP U7
U 1 1 5CFF0C3A
P 7150 1700
F 0 "U7" H 7300 1600 50  0000 L CNN
F 1 "LM324" H 7250 1500 50  0000 L CNN
F 2 "" H 7150 1700 50  0001 C CNN
F 3 "~" H 7150 1700 50  0001 C CNN
F 4 "X" H 7150 1700 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 7150 1700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7150 1700 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LM324.ti.lib" H 7150 1700 50  0001 C CNN "Spice_Lib_File"
F 8 "1,2,4,5,3" H 7150 1700 50  0001 C CNN "Spice_Node_Sequence"
	1    7150 1700
	1    0    0    1   
$EndComp
Wire Wire Line
	5200 1600 5200 1650
Connection ~ 5200 1600
Wire Wire Line
	4150 3050 4350 3050
Wire Wire Line
	5200 1600 4150 1600
$Comp
L Device:R R16
U 1 1 5CFE3C94
P 5200 1400
F 0 "R16" H 5270 1446 50  0000 L CNN
F 1 "100k" V 5200 1300 50  0000 L CNN
F 2 "" V 5130 1400 50  0001 C CNN
F 3 "~" H 5200 1400 50  0001 C CNN
	1    5200 1400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR019
U 1 1 5CFE7146
P 5200 1250
F 0 "#PWR019" H 5200 1100 50  0001 C CNN
F 1 "VCC" H 5217 1423 50  0000 C CNN
F 2 "" H 5200 1250 50  0001 C CNN
F 3 "" H 5200 1250 50  0001 C CNN
	1    5200 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1550 5200 1600
Wire Wire Line
	4950 3150 5150 3150
$Comp
L pspice:OPAMP U6
U 1 1 5CFDF76A
P 4650 3150
F 0 "U6" H 4800 3050 50  0000 L CNN
F 1 "LM324" H 4750 2950 50  0000 L CNN
F 2 "" H 4650 3150 50  0001 C CNN
F 3 "~" H 4650 3150 50  0001 C CNN
F 4 "X" H 4650 3150 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 4650 3150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4650 3150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LM324.ti.lib" H 4650 3150 50  0001 C CNN "Spice_Lib_File"
F 8 "1,2,4,5,3" H 4650 3150 50  0001 C CNN "Spice_Node_Sequence"
	1    4650 3150
	1    0    0    1   
$EndComp
Wire Wire Line
	6300 2150 6300 2000
$Comp
L power:GNDREF #PWR020
U 1 1 5CFD577B
P 6300 2150
F 0 "#PWR020" H 6300 1900 50  0001 C CNN
F 1 "GNDREF" H 6305 1977 50  0001 C CNN
F 2 "" H 6300 2150 50  0001 C CNN
F 3 "" H 6300 2150 50  0001 C CNN
	1    6300 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5CFD4C91
P 5450 2600
F 0 "R17" H 5520 2646 50  0000 L CNN
F 1 "1k" H 5520 2555 50  0000 L CNN
F 2 "" V 5380 2600 50  0001 C CNN
F 3 "~" H 5450 2600 50  0001 C CNN
	1    5450 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2350 5700 2350
Connection ~ 5450 2350
Wire Wire Line
	5450 2350 5450 2450
Wire Wire Line
	5200 2350 5450 2350
$Comp
L pspice:QNPN Q4
U 1 1 5CFCE8C0
P 5850 2000
F 0 "Q4" H 5550 2300 50  0000 L CNN
F 1 "1/2 BCM847" H 5400 2200 50  0000 L CNN
F 2 "" H 5850 2000 50  0001 C CNN
F 3 "~" H 5850 2000 50  0001 C CNN
F 4 "Q" H 5850 2000 50  0001 C CNN "Spice_Primitive"
F 5 "BC546B" H 5850 2000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5850 2000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "BC546.lib" H 5850 2000 50  0001 C CNN "Spice_Lib_File"
	1    5850 2000
	-1   0    0    -1  
$EndComp
$Comp
L pspice:QNPN Q3
U 1 1 5CFCE26D
P 5050 2000
F 0 "Q3" H 4750 2300 50  0000 L CNN
F 1 "1/2 BCM847" H 4600 2200 50  0000 L CNN
F 2 "" H 5050 2000 50  0001 C CNN
F 3 "~" H 5050 2000 50  0001 C CNN
F 4 "Q" H 5050 2000 50  0001 C CNN "Spice_Primitive"
F 5 "BC546B" H 5050 2000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5050 2000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "BC546.lib" H 5050 2000 50  0001 C CNN "Spice_Lib_File"
	1    5050 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR08
U 1 1 5CF0644C
P 10775 1650
F 0 "#PWR08" H 10775 1400 50  0001 C CNN
F 1 "GNDREF" H 10780 1477 50  0001 C CNN
F 2 "" H 10775 1650 50  0001 C CNN
F 3 "" H 10775 1650 50  0001 C CNN
	1    10775 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9275 2100 9275 1950
Connection ~ 9275 1950
$Comp
L pspice:0 #GND01
U 1 1 5CF02FCA
P 9275 2100
F 0 "#GND01" H 9275 2000 50  0001 C CNN
F 1 "0" H 9225 2200 50  0000 C CNN
F 2 "" H 9275 2100 50  0001 C CNN
F 3 "~" H 9275 2100 50  0001 C CNN
	1    9275 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10575 1500 10775 1500
Connection ~ 10575 1500
Wire Wire Line
	10575 1500 10575 1850
Wire Wire Line
	10475 1500 10575 1500
Wire Wire Line
	9675 1950 9675 2000
$Comp
L power:VEE #PWR02
U 1 1 5CF0FCB5
P 9675 2000
F 0 "#PWR02" H 9675 1850 50  0001 C CNN
F 1 "VEE" H 9693 2173 50  0000 C CNN
F 2 "" H 9675 2000 50  0001 C CNN
F 3 "" H 9675 2000 50  0001 C CNN
	1    9675 2000
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5CF0E364
P 9675 900
F 0 "#PWR01" H 9675 750 50  0001 C CNN
F 1 "VCC" H 9692 1073 50  0000 C CNN
F 2 "" H 9675 900 50  0001 C CNN
F 3 "" H 9675 900 50  0001 C CNN
	1    9675 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9825 1850 10575 1850
Wire Wire Line
	9825 1600 9875 1600
Wire Wire Line
	9825 1850 9825 1600
Wire Wire Line
	10075 1950 9675 1950
Connection ~ 9675 1950
Wire Wire Line
	9275 1950 9675 1950
Wire Wire Line
	9675 1800 9675 1950
Wire Wire Line
	9675 950  10075 950 
Wire Wire Line
	9675 950  9275 950 
Wire Wire Line
	9275 1750 9275 1950
Wire Wire Line
	9275 950  9275 1150
$Comp
L pspice:VSOURCE V1
U 1 1 5CF077E7
P 9275 1450
F 0 "V1" H 8875 1550 50  0000 L CNN
F 1 "9" H 8875 1300 50  0000 L CNN
F 2 "" H 9275 1450 50  0001 C CNN
F 3 "~" H 9275 1450 50  0001 C CNN
	1    9275 1450
	1    0    0    -1  
$EndComp
Text Notes 10225 1200 0    50   ~ 0
Rail splitter:\nVirtual Ground
Wire Wire Line
	10775 1650 10775 1500
Wire Wire Line
	9675 950  9675 1000
Connection ~ 9675 950 
Wire Wire Line
	10075 950  10075 1200
Wire Wire Line
	10075 1950 10075 1800
Wire Wire Line
	9675 1400 9675 1500
Connection ~ 9675 1400
Wire Wire Line
	9675 1400 9875 1400
Wire Wire Line
	9675 1300 9675 1400
Wire Wire Line
	9675 900  9675 950 
$Comp
L Device:R R2
U 1 1 5CF0529A
P 9675 1650
F 0 "R2" H 9525 1600 50  0000 L CNN
F 1 "100k" V 9675 1550 50  0000 L CNN
F 2 "" V 9605 1650 50  0001 C CNN
F 3 "~" H 9675 1650 50  0001 C CNN
	1    9675 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5CF04A0E
P 9675 1150
F 0 "R1" H 9525 1200 50  0000 L CNN
F 1 "100k" V 9675 1050 50  0000 L CNN
F 2 "" V 9605 1150 50  0001 C CNN
F 3 "~" H 9675 1150 50  0001 C CNN
	1    9675 1150
	1    0    0    -1  
$EndComp
$Comp
L pspice:OPAMP U1
U 1 1 5CEFFDD2
P 10175 1500
F 0 "U1" H 10325 1400 50  0000 L CNN
F 1 "LM324" H 10275 1300 50  0000 L CNN
F 2 "" H 10175 1500 50  0001 C CNN
F 3 "~" H 10175 1500 50  0001 C CNN
F 4 "X" H 10175 1500 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 10175 1500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 10175 1500 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LM324.ti.lib" H 10175 1500 50  0001 C CNN "Spice_Lib_File"
F 8 "1,2,4,5,3" H 10175 1500 50  0001 C CNN "Spice_Node_Sequence"
	1    10175 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:Thermistor_NTC R13
U 1 1 5D4AB436
P 2075 2450
F 0 "R13" H 2150 2500 50  0000 L CNN
F 1 "1k" H 2150 2400 50  0000 L CNN
F 2 "" H 2075 2500 50  0001 C CNN
F 3 "~" H 2075 2500 50  0001 C CNN
	1    2075 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5D4A95E2
P 2425 2450
F 0 "R14" H 2475 2500 50  0000 L CNN
F 1 "1k" V 2425 2400 50  0000 L CNN
F 2 "" V 2355 2450 50  0001 C CNN
F 3 "~" H 2425 2450 50  0001 C CNN
	1    2425 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2075 2300 2250 2300
$Comp
L Device:R R15
U 1 1 5D4B330E
P 2250 2875
F 0 "R15" H 2320 2921 50  0000 L CNN
F 1 "2.2k" V 2250 2800 50  0000 L CNN
F 2 "" V 2180 2875 50  0001 C CNN
F 3 "~" H 2250 2875 50  0001 C CNN
	1    2250 2875
	1    0    0    -1  
$EndComp
Connection ~ 2250 2300
Wire Wire Line
	2250 2300 2425 2300
$Comp
L power:GNDREF #PWR015
U 1 1 5D4D9682
P 2250 3025
F 0 "#PWR015" H 2250 2775 50  0001 C CNN
F 1 "GNDREF" H 2255 2852 50  0000 C CNN
F 2 "" H 2250 3025 50  0001 C CNN
F 3 "" H 2250 3025 50  0001 C CNN
	1    2250 3025
	1    0    0    -1  
$EndComp
Wire Wire Line
	2075 2600 2250 2600
Wire Wire Line
	2250 2725 2250 2675
Connection ~ 2250 2600
Wire Wire Line
	2250 2600 2425 2600
Connection ~ 2250 2000
Wire Wire Line
	2250 2675 3050 2675
Connection ~ 2250 2675
Wire Wire Line
	2250 2675 2250 2600
Wire Notes Line
	2325 1850 2625 1850
Wire Notes Line
	2625 3500 1900 3500
Wire Notes Line
	1900 2275 2325 1850
Wire Notes Line
	1900 2275 1900 3500
Wire Notes Line
	2625 1850 2625 3500
Text Notes 1925 3475 0    50   ~ 0
thermal\ncompensation
$Comp
L Device:R R22
U 1 1 5D5DBBAB
P 3200 2675
F 0 "R22" V 3100 2675 50  0000 C CNN
F 1 "4.7k" V 3200 2675 50  0000 C CNN
F 2 "" V 3130 2675 50  0001 C CNN
F 3 "~" H 3200 2675 50  0001 C CNN
	1    3200 2675
	0    1    1    0   
$EndComp
$Comp
L Device:R R23
U 1 1 5D5DCAB9
P 3200 2925
F 0 "R23" V 3100 2925 50  0000 C CNN
F 1 "100k" V 3200 2925 50  0000 C CNN
F 2 "" V 3130 2925 50  0001 C CNN
F 3 "~" H 3200 2925 50  0001 C CNN
	1    3200 2925
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 3150 5150 3925
Wire Wire Line
	5150 3925 3775 3925
$Comp
L Device:R_POT_TRIM R24
U 1 1 5D5E850B
P 3050 3225
F 0 "R24" V 2935 3225 50  0000 C CNN
F 1 "1k" V 3050 3225 50  0000 C CNN
F 2 "" H 3050 3225 50  0001 C CNN
F 3 "~" H 3050 3225 50  0001 C CNN
	1    3050 3225
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3050 3075 3050 2925
Wire Wire Line
	2900 3300 2900 3225
Wire Wire Line
	3350 2925 3350 2800
Wire Wire Line
	3775 3225 3775 3925
Wire Wire Line
	3350 2800 3775 2800
Wire Wire Line
	3775 2800 3775 2000
Wire Wire Line
	3775 2000 4750 2000
Connection ~ 3350 2800
Wire Wire Line
	3350 2800 3350 2675
Text Notes 2800 3700 0    50   ~ 0
Rossum\ncompensation
Wire Notes Line
	3525 2500 3525 3725
Wire Notes Line
	2750 2500 2750 3725
$Comp
L Device:D D3
U 1 1 5D65851A
P 3350 3225
F 0 "D3" H 3350 3441 50  0000 C CNN
F 1 "D" H 3350 3350 50  0000 C CNN
F 2 "" H 3350 3225 50  0001 C CNN
F 3 "~" H 3350 3225 50  0001 C CNN
	1    3350 3225
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3500 3225 3775 3225
Wire Notes Line
	2750 2500 3525 2500
Wire Notes Line
	2750 3725 3525 3725
$Comp
L power:GNDREF #PWR028
U 1 1 5D61694C
P 2900 3300
F 0 "#PWR028" H 2900 3050 50  0001 C CNN
F 1 "GNDREF" H 2905 3127 50  0000 C CNN
F 2 "" H 2900 3300 50  0001 C CNN
F 3 "" H 2900 3300 50  0001 C CNN
	1    2900 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 5D054548
P 1100 1800
F 0 "R19" V 1000 1800 50  0000 C CNN
F 1 "147k" V 1100 1800 50  0000 C CNN
F 2 "" V 1030 1800 50  0001 C CNN
F 3 "~" H 1100 1800 50  0001 C CNN
	1    1100 1800
	0    1    1    0   
$EndComp
Text Notes 625  7200 0    50   ~ 0
replace this GNDREF by a\nvoltage source ca. 1mV-\n1.5mV below GNDREF for\nbest results.
$Comp
L Regulator_Linear:LM317L_TO92 U5
U 1 1 5D6A27BB
P 9575 2725
F 0 "U5" H 9575 2967 50  0000 C CNN
F 1 "LM317L_TO92" H 9575 2876 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9575 2950 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/snvs775k/snvs775k.pdf" H 9575 2725 50  0001 C CNN
	1    9575 2725
	1    0    0    -1  
$EndComp
Wire Wire Line
	9575 3025 9975 3025
Wire Wire Line
	9975 2725 9875 2725
$Comp
L Device:R_POT_TRIM R26
U 1 1 5D6D06D7
P 9975 3175
F 0 "R26" H 9905 3221 50  0000 R CNN
F 1 "1k" V 9975 3225 50  0000 R CNN
F 2 "" H 9975 3175 50  0001 C CNN
F 3 "~" H 9975 3175 50  0001 C CNN
	1    9975 3175
	1    0    0    -1  
$EndComp
Connection ~ 9975 3025
Wire Wire Line
	10125 3175 10125 3325
Wire Wire Line
	10125 3325 9975 3325
Text Notes 10200 3250 0    50   ~ 0
364 Ohm for 9V\n892 Ohm for 12V
Connection ~ 9975 3325
$Comp
L power:VEE #PWR032
U 1 1 5D6D5E08
P 10450 3625
F 0 "#PWR032" H 10450 3475 50  0001 C CNN
F 1 "VEE" H 10468 3798 50  0000 C CNN
F 2 "" H 10450 3625 50  0001 C CNN
F 3 "" H 10450 3625 50  0001 C CNN
	1    10450 3625
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR031
U 1 1 5D6D75B2
P 10450 2725
F 0 "#PWR031" H 10450 2575 50  0001 C CNN
F 1 "VCC" H 10467 2898 50  0000 C CNN
F 2 "" H 10450 2725 50  0001 C CNN
F 3 "" H 10450 2725 50  0001 C CNN
	1    10450 2725
	1    0    0    -1  
$EndComp
Connection ~ 9975 2725
$Comp
L power:+VDC #PWR030
U 1 1 5D6DC2C9
P 9275 2725
F 0 "#PWR030" H 9275 2625 50  0001 C CNN
F 1 "+VDC" V 9150 2750 50  0000 L CNN
F 2 "" H 9275 2725 50  0001 C CNN
F 3 "" H 9275 2725 50  0001 C CNN
	1    9275 2725
	0    -1   -1   0   
$EndComp
$Comp
L power:-VDC #PWR029
U 1 1 5D6E27EB
P 9150 3625
F 0 "#PWR029" H 9150 3525 50  0001 C CNN
F 1 "-VDC" H 9150 3900 50  0000 C CNN
F 2 "" H 9150 3625 50  0001 C CNN
F 3 "" H 9150 3625 50  0001 C CNN
	1    9150 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3625 9975 3625
Text Notes 8675 3200 0    50   ~ 0
To power supply.\nE.g. a 12V LiPo\nor a lab PSU
Wire Wire Line
	9975 2725 10450 2725
Wire Wire Line
	9975 3625 10450 3625
Connection ~ 9975 3625
Text Notes 9400 4125 0    50   ~ 0
Symmetric power supply
Wire Notes Line
	8625 600  10925 600 
Wire Notes Line
	10925 600  10925 4175
Wire Notes Line
	10925 4175 8625 4175
Wire Notes Line
	8625 600  8625 4175
$Comp
L Device:R R12
U 1 1 5D4A8D8A
P 2250 2150
F 0 "R12" H 2320 2196 50  0000 L CNN
F 1 "150" V 2250 2075 50  0000 L CNN
F 2 "" V 2180 2150 50  0001 C CNN
F 3 "~" H 2250 2150 50  0001 C CNN
	1    2250 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R25
U 1 1 5D6C5D45
P 9975 2875
F 0 "R25" H 10045 2921 50  0000 L CNN
F 1 "220" V 9975 2800 50  0000 L CNN
F 2 "" V 9905 2875 50  0001 C CNN
F 3 "~" H 9975 2875 50  0001 C CNN
	1    9975 2875
	1    0    0    -1  
$EndComp
$Comp
L Device:R R27
U 1 1 5D6D52B0
P 9975 3475
F 0 "R27" H 10045 3521 50  0000 L CNN
F 1 "1k" V 9975 3425 50  0000 L CNN
F 2 "" V 9905 3475 50  0001 C CNN
F 3 "~" H 9975 3475 50  0001 C CNN
	1    9975 3475
	1    0    0    -1  
$EndComp
Text Notes 3850 2525 1    50   ~ 0
ca 18mV/oct
Text Notes 2725 2675 1    50   ~ 0
ca 19mV/Oct
Text Notes 2250 1650 0    50   ~ 0
ca 24mV/oct
Text Notes 475  1750 0    50   ~ 0
ca 290mV/oct
$Comp
L pspice:OPAMP U?
U 1 1 5D421CD1
P 8000 1800
F 0 "U?" H 8150 1700 50  0000 L CNN
F 1 "LM324" H 8100 1600 50  0000 L CNN
F 2 "" H 8000 1800 50  0001 C CNN
F 3 "~" H 8000 1800 50  0001 C CNN
F 4 "X" H 8000 1800 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 8000 1800 50  0001 C CNN "Spice_Model"
F 6 "Y" H 8000 1800 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LM324.ti.lib" H 8000 1800 50  0001 C CNN "Spice_Lib_File"
F 8 "1,2,4,5,3" H 8000 1800 50  0001 C CNN "Spice_Node_Sequence"
	1    8000 1800
	1    0    0    1   
$EndComp
Wire Wire Line
	8300 1800 8300 2425
Wire Wire Line
	8300 2425 7700 2425
Wire Wire Line
	7700 2425 7700 1900
Text Notes 7675 3250 0    50   ~ 0
This buffer is not\nneccessary, but it\nwas on my bread-\nboard. So for the\nsake of documen-\ntation...\nActually, tuning\naccuracy might\nbe a bit better\nwithout.
Wire Notes Line
	7650 3275 8400 3275
Wire Notes Line
	8400 3275 8400 1225
Wire Notes Line
	8400 1225 7650 1225
Wire Notes Line
	7650 1225 7650 3275
$EndSCHEMATC
