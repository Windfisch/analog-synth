EESchema Schematic File Version 4
LIBS:measure_vco-cache
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
Text GLabel 5300 5375 2    50   Input ~ 0
V_control
Text GLabel 7200 5225 2    50   Input ~ 0
V_tune
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
P 3900 5325
F 0 "U4" H 3500 5775 50  0000 C CNN
F 1 "MCP4822" H 3600 5675 50  0000 C CNN
F 2 "" H 4700 5025 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 4700 5025 50  0001 C CNN
	1    3900 5325
	1    0    0    -1  
$EndComp
Text GLabel 3400 5225 0    50   Input ~ 0
STM32_PE12
Text GLabel 3400 5425 0    50   Input ~ 0
STM32_PE14
Text GLabel 3400 5525 0    50   Input ~ 0
STM32_PE13
Wire Wire Line
	3400 5325 2800 5325
Wire Wire Line
	2800 5325 2800 5825
Wire Wire Line
	2800 5825 3900 5825
$Comp
L power:GNDREF #PWR013
U 1 1 5D1FFD8B
P 3900 5925
F 0 "#PWR013" H 3900 5675 50  0001 C CNN
F 1 "GNDREF" H 3905 5752 50  0000 C CNN
F 2 "" H 3900 5925 50  0001 C CNN
F 3 "" H 3900 5925 50  0001 C CNN
	1    3900 5925
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5925 3900 5825
Connection ~ 3900 5825
$Comp
L power:VCC #PWR012
U 1 1 5D20405E
P 3900 4925
F 0 "#PWR012" H 3900 4775 50  0001 C CNN
F 1 "VCC" H 3917 5098 50  0000 C CNN
F 2 "" H 3900 4925 50  0001 C CNN
F 3 "" H 3900 4925 50  0001 C CNN
	1    3900 4925
	1    0    0    -1  
$EndComp
NoConn ~ 4400 5525
$Comp
L Diode:1N5817 D2
U 1 1 5D20D972
P 10225 5325
F 0 "D2" V 10179 5404 50  0000 L CNN
F 1 "1N5817" V 10270 5404 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 10225 5150 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 10225 5325 50  0001 C CNN
	1    10225 5325
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5D20E97C
P 10225 4925
F 0 "R11" H 10295 4971 50  0000 L CNN
F 1 "10k" V 10225 4850 50  0000 L CNN
F 2 "" V 10155 4925 50  0001 C CNN
F 3 "~" H 10225 4925 50  0001 C CNN
	1    10225 4925
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR011
U 1 1 5D20F2EC
P 10150 5500
F 0 "#PWR011" H 10150 5250 50  0001 C CNN
F 1 "GNDREF" H 10155 5327 50  0000 C CNN
F 2 "" H 10150 5500 50  0001 C CNN
F 3 "" H 10150 5500 50  0001 C CNN
	1    10150 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10225 5175 10225 5125
Text GLabel 10475 5125 2    50   Input ~ 0
STM32_PE7
Wire Wire Line
	10475 5125 10225 5125
Connection ~ 10225 5125
Wire Wire Line
	10225 5125 10225 5075
Text GLabel 8750 4750 0    50   Input ~ 0
square_ctl
Text Notes 10425 5025 0    50   ~ 0
measurement pin
Text Notes 8100 6425 0    50   ~ 0
square_ctl swings between Vee and Vcc - 1.5V (circa).\nGNDREF is at (Vcc+Vee)/2, i.e. PE7 sees at least 3V for\nVcc-Vee = 9V.\nThe diodes protect the MCU pin from overvoltage (D1)\nand undervoltage (D2): The schottky diode D2 clamps\naway negative voltages (to approx. -200mV), while the\nzener diode D1 limits. That's within the MCU specs.\nthe voltage to 3.3V
$Comp
L Device:D_Zener D1
U 1 1 5D432ACA
P 10075 5325
F 0 "D1" V 10025 5150 50  0000 L CNN
F 1 "3V3" V 10125 5100 50  0000 L CNN
F 2 "" H 10075 5325 50  0001 C CNN
F 3 "~" H 10075 5325 50  0001 C CNN
	1    10075 5325
	0    1    1    0   
$EndComp
Wire Wire Line
	10075 5475 10150 5475
Wire Wire Line
	10150 5500 10150 5475
Connection ~ 10150 5475
Wire Wire Line
	10150 5475 10225 5475
Wire Wire Line
	10075 5175 10075 5125
Wire Wire Line
	10075 5125 10225 5125
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
$Comp
L Device:R R?
U 1 1 5D88990F
P 8900 4750
F 0 "R?" V 8800 4750 50  0000 C CNN
F 1 "10k" V 8900 4750 50  0000 C CNN
F 2 "" V 8830 4750 50  0001 C CNN
F 3 "~" H 8900 4750 50  0001 C CNN
	1    8900 4750
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 5D8E580C
P 9250 4750
F 0 "Q?" H 9441 4796 50  0000 L CNN
F 1 "BC547" H 9441 4705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9450 4675 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 9250 4750 50  0001 L CNN
	1    9250 4750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D8E6DCF
P 9350 4550
F 0 "#PWR?" H 9350 4400 50  0001 C CNN
F 1 "VCC" H 9367 4723 50  0000 C CNN
F 2 "" H 9350 4550 50  0001 C CNN
F 3 "" H 9350 4550 50  0001 C CNN
	1    9350 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D8E86DE
P 9350 5100
F 0 "R?" H 9450 5000 50  0000 C CNN
F 1 "1k" V 9350 5100 50  0000 C CNN
F 2 "" V 9280 5100 50  0001 C CNN
F 3 "~" H 9350 5100 50  0001 C CNN
	1    9350 5100
	-1   0    0    1   
$EndComp
$Comp
L power:VEE #PWR?
U 1 1 5D8E8D04
P 9350 5250
F 0 "#PWR?" H 9350 5100 50  0001 C CNN
F 1 "VEE" H 9368 5423 50  0000 C CNN
F 2 "" H 9350 5250 50  0001 C CNN
F 3 "" H 9350 5250 50  0001 C CNN
	1    9350 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	9350 4950 9800 4950
Connection ~ 9350 4950
Wire Wire Line
	9800 4950 9800 4775
Wire Wire Line
	9800 4775 10225 4775
Text Notes 8200 5400 0    50   ~ 0
transistor buffer.\nsquare_ctl is very sensitive,\nloading it will affect the\nfrequency and pulse width\nof the oscillator
$Comp
L Device:R_POT RV?
U 1 1 5D908FFA
P 4850 5375
F 0 "RV?" H 4780 5421 50  0000 R CNN
F 1 "1k" H 4780 5330 50  0000 R CNN
F 2 "" H 4850 5375 50  0001 C CNN
F 3 "~" H 4850 5375 50  0001 C CNN
	1    4850 5375
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5D909E77
P 4850 5525
F 0 "#PWR?" H 4850 5275 50  0001 C CNN
F 1 "GNDREF" H 4855 5352 50  0000 C CNN
F 2 "" H 4850 5525 50  0001 C CNN
F 3 "" H 4850 5525 50  0001 C CNN
	1    4850 5525
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D90BD96
P 5150 5375
F 0 "R?" V 5050 5375 50  0000 C CNN
F 1 "100k" V 5150 5375 50  0000 C CNN
F 2 "" V 5080 5375 50  0001 C CNN
F 3 "~" H 5150 5375 50  0001 C CNN
	1    5150 5375
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 5225 4400 5225
Text Notes 4600 5175 0    50   ~ 0
poti at ca 40%
$EndSCHEMATC
