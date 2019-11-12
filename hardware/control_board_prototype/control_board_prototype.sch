EESchema Schematic File Version 4
LIBS:schem-cache
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
Wire Wire Line
	675  6550 575  6550
Wire Wire Line
	575  7550 675  7550
Wire Wire Line
	575  6550 575  7550
Wire Wire Line
	1575 6550 1675 6550
Wire Wire Line
	1675 6550 1675 7550
Wire Wire Line
	1675 7550 1575 7550
$Comp
L power:GND #PWR?
U 1 1 5DC3343C
P 1075 7550
F 0 "#PWR?" H 1075 7300 50  0001 C CNN
F 1 "GND" H 1080 7377 50  0001 C CNN
F 2 "" H 1075 7550 50  0001 C CNN
F 3 "" H 1075 7550 50  0001 C CNN
	1    1075 7550
	1    0    0    -1  
$EndComp
Connection ~ 575  7550
$Comp
L power:VCC #PWR?
U 1 1 5DC3380B
P 1675 6550
F 0 "#PWR?" H 1675 6400 50  0001 C CNN
F 1 "VCC" H 1692 6723 50  0000 C CNN
F 2 "" H 1675 6550 50  0001 C CNN
F 3 "" H 1675 6550 50  0001 C CNN
	1    1675 6550
	1    0    0    -1  
$EndComp
Connection ~ 1675 6550
Text GLabel 1175 6550 1    50   Input ~ 0
PB10
Text GLabel 1075 6550 1    50   Input ~ 0
PB13
Text GLabel 975  6550 1    50   Input ~ 0
PB15
$Comp
L schematic-symbols:BU2505FV U?
U 1 1 5DBF6FFC
P 1125 7050
F 0 "U?" V 775 6600 50  0000 R CNN
F 1 "BU2505FV" V 1125 7550 50  0000 R CNN
F 2 "Package_SO:SSOP-20_4.4x6.5mm_P0.65mm" H 1075 7050 50  0001 C CNN
F 3 "http://rohmfs.rohm.com/en/products/databook/datasheet/ic/data_converter/dac/bu2506fv-e.pdf" H 1075 7050 50  0001 C CNN
	1    1125 7050
	0    -1   -1   0   
$EndComp
NoConn ~ 1275 6550
$Comp
L power:GND #PWR?
U 1 1 5DC3B04F
P 575 7550
F 0 "#PWR?" H 575 7300 50  0001 C CNN
F 1 "GND" H 580 7377 50  0001 C CNN
F 2 "" H 575 7550 50  0001 C CNN
F 3 "" H 575 7550 50  0001 C CNN
	1    575  7550
	1    0    0    -1  
$EndComp
NoConn ~ 1175 7550
Text GLabel 775  6550 1    50   Input ~ 0
Envelope
Text Notes 8200 6475 0    50   ~ 0
square_ctl swings between Vee and Vcc - 1.5V (circa).\nGNDREF is at (Vcc+Vee)/2, i.e. PE7 sees at least 3V for\nVcc-Vee = 9V.\nThe diodes protect the MCU pin from overvoltage (D1)\nand undervoltage (D2): The schottky diode D2 clamps\naway negative voltages (to approx. -200mV), while the\nzener diode D1 limits. That's within the MCU specs.\nthe voltage to 3.3V
$Comp
L power:GND #PWR?
U 1 1 5DC28148
P 10250 5550
F 0 "#PWR?" H 10250 5300 50  0001 C CNN
F 1 "GND" H 10255 5377 50  0000 C CNN
F 2 "" H 10250 5550 50  0001 C CNN
F 3 "" H 10250 5550 50  0001 C CNN
	1    10250 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10175 5175 10325 5175
Wire Wire Line
	10175 5225 10175 5175
Wire Wire Line
	10250 5525 10325 5525
Connection ~ 10250 5525
Wire Wire Line
	10250 5550 10250 5525
Wire Wire Line
	10175 5525 10250 5525
$Comp
L Device:D_Zener D?
U 1 1 5D432ACA
P 10175 5375
F 0 "D?" V 10125 5200 50  0000 L CNN
F 1 "3V3" V 10225 5150 50  0000 L CNN
F 2 "" H 10175 5375 50  0001 C CNN
F 3 "~" H 10175 5375 50  0001 C CNN
	1    10175 5375
	0    1    1    0   
$EndComp
Text Notes 10525 5075 0    50   ~ 0
measurement pin
Wire Wire Line
	10325 5175 10325 5125
Connection ~ 10325 5175
Wire Wire Line
	10575 5175 10325 5175
Text GLabel 10575 5175 2    50   Input ~ 0
PB9
Wire Wire Line
	10325 5225 10325 5175
$Comp
L Device:R R?
U 1 1 5D20E97C
P 10325 4975
F 0 "R?" H 10395 5021 50  0000 L CNN
F 1 "10k" V 10325 4900 50  0000 L CNN
F 2 "" V 10255 4975 50  0001 C CNN
F 3 "~" H 10325 4975 50  0001 C CNN
	1    10325 4975
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5817 D?
U 1 1 5D20D972
P 10325 5375
F 0 "D?" V 10279 5454 50  0000 L CNN
F 1 "1N5817" V 10370 5454 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 10325 5200 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 10325 5375 50  0001 C CNN
	1    10325 5375
	0    1    1    0   
$EndComp
Wire Notes Line
	8150 625  11050 625 
Wire Notes Line
	8150 2125 8150 625 
Wire Notes Line
	11050 2125 8150 2125
Wire Notes Line
	11050 625  11050 2125
Wire Notes Line
	9550 1025 9550 1825
Wire Wire Line
	9125 1875 9775 1875
Wire Wire Line
	9125 975  9775 975 
$Comp
L Regulator_Linear:LM317L_TO92 U?
U 1 1 5D6A27BB
P 8725 975
F 0 "U?" H 8725 1217 50  0000 C CNN
F 1 "LM317L_TO92" H 8725 1126 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8725 1200 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/snvs775k/snvs775k.pdf" H 8725 975 50  0001 C CNN
	1    8725 975 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8725 1275 9125 1275
Wire Wire Line
	9125 975  9025 975 
Text Notes 9450 1775 1    50   ~ 0
364 Ohm for 9V\n892 Ohm for 12V
Connection ~ 9125 975 
$Comp
L power:+VDC #PWR?
U 1 1 5D6DC2C9
P 8425 975
F 0 "#PWR?" H 8425 875 50  0001 C CNN
F 1 "+VDC" V 8300 1000 50  0000 L CNN
F 2 "" H 8425 975 50  0001 C CNN
F 3 "" H 8425 975 50  0001 C CNN
	1    8425 975 
	0    -1   -1   0   
$EndComp
$Comp
L power:-VDC #PWR?
U 1 1 5D6E27EB
P 8300 1875
F 0 "#PWR?" H 8300 1775 50  0001 C CNN
F 1 "-VDC" H 8300 2150 50  0000 C CNN
F 2 "" H 8300 1875 50  0001 C CNN
F 3 "" H 8300 1875 50  0001 C CNN
	1    8300 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1875 9125 1875
Text Notes 8225 1525 0    50   ~ 0
To power supply.\nE.g. a 12V LiPo\nor a lab PSU
Connection ~ 9125 1875
$Comp
L Device:R R?
U 1 1 5D6C5D45
P 9125 1125
F 0 "R?" H 9195 1171 50  0000 L CNN
F 1 "220" V 9125 1050 50  0000 L CNN
F 2 "" V 9055 1125 50  0001 C CNN
F 3 "~" H 9125 1125 50  0001 C CNN
	1    9125 1125
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D6D52B0
P 9125 1725
F 0 "R?" H 9195 1771 50  0000 L CNN
F 1 "1k" V 9125 1675 50  0000 L CNN
F 2 "" V 9055 1725 50  0001 C CNN
F 3 "~" H 9125 1725 50  0001 C CNN
	1    9125 1725
	1    0    0    -1  
$EndComp
Connection ~ 10175 975 
Wire Wire Line
	10750 975  10175 975 
Wire Wire Line
	10750 1075 10750 975 
Connection ~ 9775 1875
Wire Wire Line
	10750 1875 9775 1875
Wire Wire Line
	10750 1475 10750 1575
Wire Wire Line
	10750 1475 10925 1475
Connection ~ 10750 1475
Wire Wire Line
	10750 1375 10750 1475
$Comp
L Device:CP C?
U 1 1 5DC825DC
P 10750 1725
F 0 "C?" H 10625 1875 50  0000 L CNN
F 1 "1u" H 10625 1625 50  0000 L CNN
F 2 "" H 10788 1575 50  0001 C CNN
F 3 "~" H 10750 1725 50  0001 C CNN
	1    10750 1725
	1    0    0    -1  
$EndComp
Wire Wire Line
	10175 1775 9775 1775
Connection ~ 9775 1775
Wire Wire Line
	9775 1725 9775 1775
Wire Wire Line
	9775 1775 9775 1875
Wire Wire Line
	9925 1825 10575 1825
$Comp
L Device:R R?
U 1 1 5CF04A0E
P 9775 1175
F 0 "R?" H 9625 1225 50  0000 L CNN
F 1 "100k" V 9775 1075 50  0000 L CNN
F 2 "" V 9705 1175 50  0001 C CNN
F 3 "~" H 9775 1175 50  0001 C CNN
	1    9775 1175
	1    0    0    -1  
$EndComp
Wire Wire Line
	9775 975  9775 1025
Wire Wire Line
	9775 1325 9775 1375
$Comp
L Device:R R?
U 1 1 5CF0529A
P 9775 1575
F 0 "R?" H 9625 1525 50  0000 L CNN
F 1 "100k" V 9775 1475 50  0000 L CNN
F 2 "" V 9705 1575 50  0001 C CNN
F 3 "~" H 9775 1575 50  0001 C CNN
	1    9775 1575
	1    0    0    -1  
$EndComp
Wire Wire Line
	9775 1375 9775 1425
Wire Wire Line
	9775 975  10175 975 
Connection ~ 9775 975 
Wire Wire Line
	10175 975  10175 1175
$Comp
L Device:CP C?
U 1 1 5DC6DF25
P 10750 1225
F 0 "C?" H 10625 1375 50  0000 L CNN
F 1 "1u" H 10625 1125 50  0000 L CNN
F 2 "" H 10788 1075 50  0001 C CNN
F 3 "~" H 10750 1225 50  0001 C CNN
	1    10750 1225
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC1E772
P 10925 1625
F 0 "#PWR?" H 10925 1375 50  0001 C CNN
F 1 "GND" H 10925 1475 50  0000 C CNN
F 2 "" H 10925 1625 50  0001 C CNN
F 3 "" H 10925 1625 50  0001 C CNN
	1    10925 1625
	1    0    0    -1  
$EndComp
Text Notes 8200 2100 0    50   ~ 0
Symmetric power supply
$Comp
L pspice:OPAMP U?
U 1 1 5CEFFDD2
P 10275 1475
F 0 "U?" H 10400 1375 50  0000 L CNN
F 1 "LM324" H 10275 1250 50  0000 L CNN
F 2 "" H 10275 1475 50  0001 C CNN
F 3 "~" H 10275 1475 50  0001 C CNN
F 4 "X" H 10275 1475 50  0001 C CNN "Spice_Primitive"
F 5 "LM324" H 10275 1475 50  0001 C CNN "Spice_Model"
F 6 "Y" H 10275 1475 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "LM324.ti.lib" H 10275 1475 50  0001 C CNN "Spice_Lib_File"
F 8 "1,2,4,5,3" H 10275 1475 50  0001 C CNN "Spice_Node_Sequence"
	1    10275 1475
	1    0    0    -1  
$EndComp
Wire Wire Line
	9775 1375 9975 1375
Connection ~ 9775 1375
Wire Wire Line
	10925 1625 10925 1475
Text Notes 10025 925  0    50   ~ 0
Rail splitter:\nVirtual Ground
Wire Wire Line
	9925 1825 9925 1575
Wire Wire Line
	9925 1575 9975 1575
$Comp
L power:VCC #PWR?
U 1 1 5CF0E364
P 9775 975
F 0 "#PWR?" H 9775 825 50  0001 C CNN
F 1 "VCC" H 9792 1148 50  0000 C CNN
F 2 "" H 9775 975 50  0001 C CNN
F 3 "" H 9775 975 50  0001 C CNN
	1    9775 975 
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR?
U 1 1 5CF0FCB5
P 9775 1875
F 0 "#PWR?" H 9775 1725 50  0001 C CNN
F 1 "VEE" H 9793 2048 50  0000 C CNN
F 2 "" H 9775 1875 50  0001 C CNN
F 3 "" H 9775 1875 50  0001 C CNN
	1    9775 1875
	-1   0    0    1   
$EndComp
Wire Wire Line
	10575 1475 10575 1825
Connection ~ 10575 1475
Wire Wire Line
	10575 1475 10750 1475
NoConn ~ 10750 3425
NoConn ~ 10750 3125
$Comp
L power:GND #PWR?
U 1 1 5E0CBA6A
P 8650 3425
F 0 "#PWR?" H 8650 3175 50  0001 C CNN
F 1 "GND" H 8650 3275 50  0000 C CNN
F 2 "" H 8650 3425 50  0001 C CNN
F 3 "" H 8650 3425 50  0001 C CNN
	1    8650 3425
	1    0    0    -1  
$EndComp
Text Notes 8475 2950 0    50   ~ 0
powered\nvia USB
Text GLabel 10500 4025 3    50   Input ~ 0
PB9
Text GLabel 9200 2525 1    50   Input ~ 0
PB10
$Comp
L power:+3.3V #PWR?
U 1 1 5DC062F8
P 10875 3275
F 0 "#PWR?" H 10875 3125 50  0001 C CNN
F 1 "+3.3V" H 11025 3350 50  0000 C CNN
F 2 "" H 10875 3275 50  0001 C CNN
F 3 "" H 10875 3275 50  0001 C CNN
	1    10875 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	10875 3275 10750 3275
Text GLabel 9200 4025 3    50   Input ~ 0
PB15
Text GLabel 9000 4025 3    50   Input ~ 0
PB13
Text GLabel 8900 4025 3    50   Input ~ 0
PB12
$Comp
L schematic-symbols:BluePill A?
U 1 1 5DBF7676
P 9700 3275
F 0 "A?" V 10200 2300 60  0000 L CNN
F 1 "BluePill" V 9675 3100 60  0000 L CNN
F 2 "" H 9600 4025 60  0001 C CNN
F 3 "" H 9600 4025 60  0001 C CNN
	1    9700 3275
	0    1    1    0   
$EndComp
Text GLabel 775  7550 3    50   Input ~ 0
LFO
$Comp
L Device:R_Variable R?
U 1 1 5E337737
P 9125 1425
F 0 "R?" H 9175 1450 50  0000 L CNN
F 1 "1k" H 9175 1375 50  0000 L CNN
F 2 "" V 9055 1425 50  0001 C CNN
F 3 "~" H 9125 1425 50  0001 C CNN
	1    9125 1425
	1    0    0    -1  
$EndComp
Connection ~ 9125 1275
Text Notes 4175 6950 0    50   ~ 0
TODO add 1-2 mcp dacs
Text Notes 2525 7125 0    50   ~ 0
TODO add another BU2505FV
$EndSCHEMATC
