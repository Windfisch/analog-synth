EESchema Schematic File Version 4
LIBS:voice_board-cache
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
Text GLabel 11475 9525 0    50   Input ~ 0
Envelope
Connection ~ -8375 -1150
$Comp
L Device:R R?
U 1 1 5D95F81E
P -8375 -1300
F 0 "R?" H -8305 -1254 50  0000 L CNN
F 1 "10k" V -8375 -1375 50  0000 L CNN
F 2 "" V -8445 -1300 50  0001 C CNN
F 3 "~" H -8375 -1300 50  0001 C CNN
	1    -8375 -1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	-8500 -1150 -8375 -1150
Wire Wire Line
	-8375 -1150 -8250 -1150
$Comp
L power:GNDREF #PWR?
U 1 1 5D95F82A
P -7950 -950
F 0 "#PWR?" H -7950 -1200 50  0001 C CNN
F 1 "GNDREF" H -7945 -1123 50  0001 C CNN
F 2 "" H -7950 -950 50  0001 C CNN
F 3 "" H -7950 -950 50  0001 C CNN
	1    -7950 -950
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC327 Q?
U 1 1 5D96447B
P -8150 -950
F 0 "Q?" H -8275 -800 50  0000 L CNN
F 1 "BC327" H -7959 -995 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H -7950 -1025 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC327-D.PDF" H -8150 -950 50  0001 L CNN
	1    -8150 -950
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC327 Q?
U 1 1 5D969E4D
P -8600 -950
F 0 "Q?" H -8725 -800 50  0000 L CNN
F 1 "BC327" V -8375 -1075 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H -8400 -1025 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC327-D.PDF" H -8600 -950 50  0001 L CNN
	1    -8600 -950
	1    0    0    1   
$EndComp
$Comp
L power:VEE #PWR?
U 1 1 5D9809F3
P -8250 -100
F 0 "#PWR?" H -8250 -250 50  0001 C CNN
F 1 "VEE" H -8232 73  50  0000 C CNN
F 2 "" H -8250 -100 50  0001 C CNN
F 3 "" H -8250 -100 50  0001 C CNN
	1    -8250 -100
	-1   0    0    1   
$EndComp
$Comp
L power:VEE #PWR?
U 1 1 5D9813BC
P -8500 -100
F 0 "#PWR?" H -8500 -250 50  0001 C CNN
F 1 "VEE" H -8482 73  50  0000 C CNN
F 2 "" H -8500 -100 50  0001 C CNN
F 3 "" H -8500 -100 50  0001 C CNN
	1    -8500 -100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7C07D
P -8500 -250
F 0 "R?" H -8650 -200 50  0000 L CNN
F 1 "10k" V -8500 -325 50  0000 L CNN
F 2 "" V -8570 -250 50  0001 C CNN
F 3 "~" H -8500 -250 50  0001 C CNN
	1    -8500 -250
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7C087
P -8250 -250
F 0 "R?" H -8180 -204 50  0000 L CNN
F 1 "10k" V -8250 -325 50  0000 L CNN
F 2 "" V -8320 -250 50  0001 C CNN
F 3 "~" H -8250 -250 50  0001 C CNN
	1    -8250 -250
	1    0    0    1   
$EndComp
Wire Wire Line
	-7925 -675 -8250 -675
Wire Wire Line
	-7925 -475 -8500 -475
Connection ~ -8500 -475
Wire Wire Line
	-8500 -400 -8500 -475
Wire Wire Line
	-8250 -400 -8250 -675
Connection ~ -8250 -675
Wire Wire Line
	-7475 -475 -7550 -475
Wire Wire Line
	-7625 -675 -7550 -675
$Comp
L Amplifier_Operational:TL074 U?
U 2 1 5DD7C0CD
P -7175 -575
F 0 "U?" H -7150 -400 50  0000 C CNN
F 1 "TL074" H -7200 -575 50  0000 C CNN
F 2 "" H -7225 -475 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H -7125 -375 50  0001 C CNN
	2    -7175 -575
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7C0D7
P -7775 -475
F 0 "R?" V -7875 -500 50  0000 L CNN
F 1 "20k" V -7775 -550 50  0000 L CNN
F 2 "" V -7845 -475 50  0001 C CNN
F 3 "~" H -7775 -475 50  0001 C CNN
	1    -7775 -475
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7C0E1
P -7775 -675
F 0 "R?" V -7675 -700 50  0000 L CNN
F 1 "20k" V -7775 -750 50  0000 L CNN
F 2 "" V -7845 -675 50  0001 C CNN
F 3 "~" H -7775 -675 50  0001 C CNN
	1    -7775 -675
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD7C0EB
P -7200 -900
F 0 "R?" V -7100 -950 50  0000 L CNN
F 1 "100k" V -7200 -1000 50  0000 L CNN
F 2 "" V -7270 -900 50  0001 C CNN
F 3 "~" H -7200 -900 50  0001 C CNN
	1    -7200 -900
	0    1    -1   0   
$EndComp
Connection ~ -7550 -675
Wire Wire Line
	-7550 -675 -7475 -675
$Comp
L Device:R R?
U 1 1 5DD7C0FB
P -7550 -225
F 0 "R?" H -7725 -275 50  0000 L CNN
F 1 "100k" V -7550 -325 50  0000 L CNN
F 2 "" V -7620 -225 50  0001 C CNN
F 3 "~" H -7550 -225 50  0001 C CNN
	1    -7550 -225
	-1   0    0    -1  
$EndComp
Wire Wire Line
	-7550 -375 -7550 -475
Connection ~ -7550 -475
Wire Wire Line
	-7550 -475 -7625 -475
Text Notes -7325 -175 0    50   ~ 0
differential to\nsingle-ended
Text Notes -8650 -975 2    50   ~ 0
differential pair\n(current controlled\namplification)
Text GLabel -6875 -575 2    50   Input ~ 0
vca_audio_out
Wire Wire Line
	-8250 -750 -8250 -675
Wire Wire Line
	-8500 -750 -8500 -475
Text Notes -7625 -1200 2    50   ~ 0
current mirror as\nvoltage controlled\ncurrent source
$Comp
L power:GNDREF #PWR?
U 1 1 5D9C7217
P -9000 -25
F 0 "#PWR?" H -9000 -275 50  0001 C CNN
F 1 "GNDREF" H -8995 -198 50  0001 C CNN
F 2 "" H -9000 -25 50  0001 C CNN
F 3 "" H -9000 -25 50  0001 C CNN
	1    -9000 -25 
	1    0    0    -1  
$EndComp
Text Notes -9075 0    1    50   ~ 0
input preattenuation.\ncontrols distortion
$Comp
L Device:C C?
U 1 1 5D9A8C50
P -9000 -775
F 0 "C?" H -8950 -675 50  0000 C CNN
F 1 "470n" H -8900 -875 50  0000 C CNN
F 2 "" H -8962 -925 50  0001 C CNN
F 3 "~" H -9000 -775 50  0001 C CNN
	1    -9000 -775
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D9A8C46
P -9000 -175
F 0 "R?" H -8925 -225 50  0000 L CNN
F 1 "1k" V -9000 -225 50  0000 L CNN
F 2 "" V -9070 -175 50  0001 C CNN
F 3 "~" H -9000 -175 50  0001 C CNN
	1    -9000 -175
	1    0    0    1   
$EndComp
$Comp
L Device:R_Variable R?
U 1 1 5D9A8C32
P -9000 -475
F 0 "R?" H -8950 -475 50  0000 L CNN
F 1 "100k" H -8950 -550 50  0000 L CNN
F 2 "" V -9070 -475 50  0001 C CNN
F 3 "~" H -9000 -475 50  0001 C CNN
	1    -9000 -475
	1    0    0    -1  
$EndComp
Text GLabel -9675 -725 0    50   Input ~ 0
vca_audio_in
Wire Wire Line
	-9000 -325 -8800 -325
Wire Wire Line
	-8800 -325 -8800 -950
Connection ~ -9000 -325
Wire Wire Line
	-7550 -900 -7350 -900
Wire Wire Line
	-7550 -900 -7550 -675
Wire Wire Line
	-7050 -900 -6875 -900
Wire Wire Line
	-6875 -900 -6875 -575
Wire Wire Line
	-9675 -725 -9300 -725
Wire Wire Line
	-9300 -725 -9300 -925
Text Notes -10200 125  0    50   ~ 0
Voltage controlled amplifier
Text Notes -10200 -600 0    50   ~ 0
triangle from VCO mk I
Text Notes 600  4225 0    50   ~ 0
transistor buffer.\nsquare_ctl is very sensitive,\nloading it will affect the\nfrequency and pulse width\nof the oscillator
$Comp
L power:VEE #PWR?
U 1 1 5D8E8D04
P 1725 4100
F 0 "#PWR?" H 1725 3950 50  0001 C CNN
F 1 "VEE" H 1725 4275 50  0000 C CNN
F 2 "" H 1725 4100 50  0001 C CNN
F 3 "" H 1725 4100 50  0001 C CNN
	1    1725 4100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8E86DE
P 1725 3950
F 0 "R?" H 1825 3850 50  0000 C CNN
F 1 "1k" V 1725 3950 50  0000 C CNN
F 2 "" V 1655 3950 50  0001 C CNN
F 3 "~" H 1725 3950 50  0001 C CNN
	1    1725 3950
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D8E6DCF
P 1725 3400
F 0 "#PWR?" H 1725 3250 50  0001 C CNN
F 1 "VCC" H 1725 3575 50  0000 C CNN
F 2 "" H 1725 3400 50  0001 C CNN
F 3 "" H 1725 3400 50  0001 C CNN
	1    1725 3400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 5D8E580C
P 1625 3600
F 0 "Q?" H 1816 3646 50  0000 L CNN
F 1 "BC547" H 1816 3555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1825 3525 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 1625 3600 50  0001 L CNN
	1    1625 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D88990F
P 1275 3600
F 0 "R?" V 1175 3600 50  0000 C CNN
F 1 "10k" V 1275 3600 50  0000 C CNN
F 2 "" V 1205 3600 50  0001 C CNN
F 3 "~" H 1275 3600 50  0001 C CNN
	1    1275 3600
	0    1    1    0   
$EndComp
Text GLabel 1125 3600 0    50   Input ~ 0
square_ctl1
$Comp
L power:+3.3V #PWR?
U 1 1 5DC05FDC
P 9625 11100
F 0 "#PWR?" H 9625 10950 50  0001 C CNN
F 1 "+3.3V" H 9640 11273 50  0000 C CNN
F 2 "" H 9625 11100 50  0001 C CNN
F 3 "" H 9625 11100 50  0001 C CNN
	1    9625 11100
	1    0    0    -1  
$EndComp
Text GLabel 9125 11400 0    50   Input ~ 0
PB13
Text GLabel 9125 11600 0    50   Input ~ 0
PB15
Text GLabel 9125 11700 0    50   Input ~ 0
PB12
$Comp
L power:GND #PWR?
U 1 1 5DBFDDAA
P 9625 12000
F 0 "#PWR?" H 9625 11750 50  0001 C CNN
F 1 "GND" H 9630 11827 50  0000 C CNN
F 2 "" H 9625 12000 50  0001 C CNN
F 3 "" H 9625 12000 50  0001 C CNN
	1    9625 12000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8775 11500 9125 11500
$Comp
L power:GND #PWR?
U 1 1 5DBFDAC8
P 8775 11500
F 0 "#PWR?" H 8775 11250 50  0001 C CNN
F 1 "GND" H 8780 11327 50  0000 C CNN
F 2 "" H 8775 11500 50  0001 C CNN
F 3 "" H 8775 11500 50  0001 C CNN
	1    8775 11500
	1    0    0    -1  
$EndComp
$Comp
L Analog_DAC:MCP4822 U?
U 1 1 5DBF2744
P 9625 11500
F 0 "U?" H 9300 11850 50  0000 C CNN
F 1 "MCP4822" H 9825 11850 50  0000 C CNN
F 2 "" H 10425 11200 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 10425 11200 50  0001 C CNN
	1    9625 11500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT R?
U 1 1 5DC6E5D7
P 11625 9675
F 0 "R?" H 11555 9721 50  0000 R CNN
F 1 "1k" V 11625 9725 50  0000 R CNN
F 2 "" H 11625 9675 50  0001 C CNN
F 3 "~" H 11625 9675 50  0001 C CNN
	1    11625 9675
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC78980
P 11625 9825
F 0 "#PWR?" H 11625 9575 50  0001 C CNN
F 1 "GND" H 11630 9652 50  0000 C CNN
F 2 "" H 11625 9825 50  0001 C CNN
F 3 "" H 11625 9825 50  0001 C CNN
	1    11625 9825
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DC7A310
P 11925 9675
F 0 "R?" V 11825 9650 50  0000 L CNN
F 1 "10k" V 11925 9600 50  0000 L CNN
F 2 "" V 11855 9675 50  0001 C CNN
F 3 "~" H 11925 9675 50  0001 C CNN
	1    11925 9675
	0    -1   1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5DC7AF18
P 12075 9825
F 0 "C?" H 12190 9871 50  0000 L CNN
F 1 "100n" H 12190 9780 50  0000 L CNN
F 2 "" H 12113 9675 50  0001 C CNN
F 3 "~" H 12075 9825 50  0001 C CNN
	1    12075 9825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC7B326
P 12075 9975
F 0 "#PWR?" H 12075 9725 50  0001 C CNN
F 1 "GND" H 12080 9802 50  0000 C CNN
F 2 "" H 12075 9975 50  0001 C CNN
F 3 "" H 12075 9975 50  0001 C CNN
	1    12075 9975
	1    0    0    -1  
$EndComp
Text Notes 11425 10700 0    50   ~ 0
Low-pass filter for fast\nattacking envelopes.\nTime constant T =\n10kOhm * 100nF = \n1ms. This removes\npops, but is still ballsy.
Wire Wire Line
	11475 9525 11625 9525
Text GLabel 10200 10025 0    50   Input ~ 0
LFO
$Comp
L Device:R_POT R?
U 1 1 5DC95C10
P 10300 10175
F 0 "R?" H 10230 10221 50  0000 R CNN
F 1 "1k" V 10300 10225 50  0000 R CNN
F 2 "" H 10300 10175 50  0001 C CNN
F 3 "~" H 10300 10175 50  0001 C CNN
	1    10300 10175
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 10025 10200 10025
$Comp
L power:GND #PWR?
U 1 1 5DC985D7
P 10300 10325
F 0 "#PWR?" H 10300 10075 50  0001 C CNN
F 1 "GND" H 10305 10152 50  0000 C CNN
F 2 "" H 10300 10325 50  0001 C CNN
F 3 "" H 10300 10325 50  0001 C CNN
	1    10300 10325
	1    0    0    -1  
$EndComp
Text GLabel 10450 10175 2    50   Input ~ 0
PWM
Text GLabel 12175 9675 2    50   Input ~ 0
VCA_ctl
Wire Wire Line
	12175 9675 12075 9675
Connection ~ 12075 9675
Wire Wire Line
	-9000 -925 -9300 -925
$Comp
L power:GNDREF #PWR?
U 1 1 5DC870C2
P -3675 -1100
F 0 "#PWR?" H -3675 -1350 50  0001 C CNN
F 1 "GNDREF" H -3670 -1273 50  0001 C CNN
F 2 "" H -3675 -1100 50  0001 C CNN
F 3 "" H -3675 -1100 50  0001 C CNN
	1    -3675 -1100
	1    0    0    -1  
$EndComp
Text Notes -3800 -550 1    50   ~ 0
input preattenuation.\ncontrols distortion
$Comp
L Device:R R?
U 1 1 5DC870D7
P -3675 -1250
F 0 "R?" H -3600 -1300 50  0000 L CNN
F 1 "1k" V -3675 -1300 50  0000 L CNN
F 2 "" V -3745 -1250 50  0001 C CNN
F 3 "~" H -3675 -1250 50  0001 C CNN
	1    -3675 -1250
	1    0    0    1   
$EndComp
$Comp
L Device:R_Variable R?
U 1 1 5DC870E1
P -3825 -1400
F 0 "R?" V -3650 -1425 50  0000 L CNN
F 1 "1Meg" V -3725 -1550 50  0000 L CNN
F 2 "" V -3895 -1400 50  0001 C CNN
F 3 "~" H -3825 -1400 50  0001 C CNN
	1    -3825 -1400
	0    1    -1   0   
$EndComp
Text GLabel -3975 -1400 0    50   Input ~ 0
vcf_audio_in
Connection ~ -3675 -1400
Text Notes -3975 -1175 2    50   ~ 0
sawtooth from\nVCO mk I
$Comp
L Device:CP C?
U 1 1 5DC91769
P -3150 -1400
F 0 "C?" V -3225 -1525 50  0000 C CNN
F 1 "470u" V -3075 -1550 50  0000 C CNN
F 2 "" H -3112 -1550 50  0001 C CNN
F 3 "~" H -3150 -1400 50  0001 C CNN
	1    -3150 -1400
	0    1    -1   0   
$EndComp
Wire Wire Line
	-2400 375  -2400 300 
Connection ~ -2400 300 
Wire Wire Line
	-2400 300  -2400 150 
Wire Wire Line
	-2700 375  -2700 300 
Connection ~ -2700 300 
Wire Wire Line
	-2700 300  -2700 150 
Wire Wire Line
	-2100 -50  -2100 175 
Wire Wire Line
	-2100 175  -3000 175 
Wire Wire Line
	-2400 -250 -2400 -325
Connection ~ -2400 -325
Wire Wire Line
	-2400 -325 -2400 -475
Wire Wire Line
	-2700 -250 -2700 -325
Connection ~ -2700 -325
Wire Wire Line
	-2700 -325 -2700 -475
Wire Wire Line
	-2100 -675 -2100 -450
Wire Wire Line
	-2100 -450 -3000 -450
Wire Wire Line
	-2100 575  -2100 800 
Wire Wire Line
	-2100 800  -3000 800 
Wire Wire Line
	-2400 -875 -2400 -950
Connection ~ -2400 -950
Wire Wire Line
	-2400 -950 -2400 -1100
Wire Wire Line
	-2700 -875 -2700 -950
Connection ~ -2700 -950
Wire Wire Line
	-2700 -950 -2700 -1100
$Comp
L Device:R R?
U 1 1 5DD85AF5
P -3000 375
F 0 "R?" H -3175 450 50  0000 L CNN
F 1 "150" V -3000 300 50  0000 L CNN
F 2 "" V -3070 375 50  0001 C CNN
F 3 "~" H -3000 375 50  0001 C CNN
	1    -3000 375 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD86019
P -3000 -250
F 0 "R?" H -3175 -175 50  0000 L CNN
F 1 "150" V -3000 -325 50  0000 L CNN
F 2 "" V -3070 -250 50  0001 C CNN
F 3 "~" H -3000 -250 50  0001 C CNN
	1    -3000 -250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD87B46
P -3000 -875
F 0 "R?" H -3175 -800 50  0000 L CNN
F 1 "150" V -3000 -950 50  0000 L CNN
F 2 "" V -3070 -875 50  0001 C CNN
F 3 "~" H -3000 -875 50  0001 C CNN
	1    -3000 -875
	1    0    0    -1  
$EndComp
Connection ~ -3000 800 
Wire Wire Line
	-3000 225  -3000 175 
Connection ~ -3000 175 
Wire Wire Line
	-3000 -400 -3000 -450
Connection ~ -3000 -450
$Comp
L Device:R R?
U 1 1 5DDF220D
P -3150 -1200
F 0 "R?" V -3150 -1475 50  0000 L CNN
F 1 "470" V -3150 -1275 50  0000 L CNN
F 2 "" V -3220 -1200 50  0001 C CNN
F 3 "~" H -3150 -1200 50  0001 C CNN
	1    -3150 -1200
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DDF90E1
P -1950 -1200
F 0 "R?" V -2025 -1400 50  0000 L CNN
F 1 "470" V -1950 -1275 50  0000 L CNN
F 2 "" V -2020 -1200 50  0001 C CNN
F 3 "~" H -1950 -1200 50  0001 C CNN
	1    -1950 -1200
	0    1    -1   0   
$EndComp
Wire Wire Line
	-1800 -1200 -1800 -1075
Wire Wire Line
	-1800 -1075 -3000 -1075
Wire Wire Line
	-3300 -1075 -3300 -1200
Wire Wire Line
	-2700 -1500 -2550 -1500
Wire Wire Line
	-3000 -1025 -3000 -1075
Connection ~ -3000 -1075
Wire Wire Line
	-3000 -1075 -3300 -1075
$Comp
L Device:R R?
U 1 1 5DE2652F
P -3300 -875
F 0 "R?" H -3450 -950 50  0000 L CNN
F 1 "180" V -3300 -950 50  0000 L CNN
F 2 "" V -3370 -875 50  0001 C CNN
F 3 "~" H -3300 -875 50  0001 C CNN
	1    -3300 -875
	1    0    0    1   
$EndComp
Wire Wire Line
	-3300 -1025 -3300 -1075
Connection ~ -3300 -1075
$Comp
L power:GND #PWR?
U 1 1 5DE2D342
P -3300 -725
F 0 "#PWR?" H -3300 -975 50  0001 C CNN
F 1 "GND" H -3295 -898 50  0001 C CNN
F 2 "" H -3300 -725 50  0001 C CNN
F 3 "" H -3300 -725 50  0001 C CNN
	1    -3300 -725
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DD09867
P -2550 -950
F 0 "C?" V -2600 -725 50  0000 C CNN
F 1 "47n" V -2525 -700 50  0000 C CNN
F 2 "" H -2512 -1100 50  0001 C CNN
F 3 "~" H -2550 -950 50  0001 C CNN
	1    -2550 -950
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5DCDA152
P -2550 -325
F 0 "C?" V -2600 -100 50  0000 C CNN
F 1 "47n" V -2525 -75 50  0000 C CNN
F 2 "" H -2512 -475 50  0001 C CNN
F 3 "~" H -2550 -325 50  0001 C CNN
	1    -2550 -325
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5DC993CD
P -2550 300
F 0 "C?" V -2600 525 50  0000 C CNN
F 1 "47n" V -2525 550 50  0000 C CNN
F 2 "" H -2512 150 50  0001 C CNN
F 3 "~" H -2550 300 50  0001 C CNN
	1    -2550 300 
	0    1    1    0   
$EndComp
Wire Wire Line
	-3000 900  -3000 800 
Connection ~ -2550 1675
Wire Wire Line
	-2400 1675 -2400 1500
Wire Wire Line
	-2550 1675 -2400 1675
Wire Wire Line
	-2700 1675 -2700 1500
Wire Wire Line
	-2550 1675 -2700 1675
Wire Wire Line
	-2550 1825 -2550 1675
Wire Wire Line
	-3000 1825 -2550 1825
Connection ~ -3000 1525
Wire Wire Line
	-2100 1525 -3000 1525
Wire Wire Line
	-2100 1300 -2100 1525
$Comp
L Device:R R?
U 1 1 5DF86F1C
P -1575 -950
F 0 "R?" V -1475 -975 50  0000 L CNN
F 1 "10k" V -1575 -1025 50  0000 L CNN
F 2 "" V -1645 -950 50  0001 C CNN
F 3 "~" H -1575 -950 50  0001 C CNN
	1    -1575 -950
	1    0    0    -1  
$EndComp
Wire Wire Line
	-1575 300  -1575 -800
Wire Wire Line
	-1575 -1400 -1800 -1400
$Comp
L power:GND #PWR?
U 1 1 5DFC806B
P -7550 -75
F 0 "#PWR?" H -7550 -325 50  0001 C CNN
F 1 "GND" H -7550 -225 50  0001 C CNN
F 2 "" H -7550 -75 50  0001 C CNN
F 3 "" H -7550 -75 50  0001 C CNN
	1    -7550 -75 
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E00D028
P -2550 -1650
F 0 "R?" H -2725 -1575 50  0000 L CNN
F 1 "680" V -2550 -1725 50  0000 L CNN
F 2 "" V -2620 -1650 50  0001 C CNN
F 3 "~" H -2550 -1650 50  0001 C CNN
	1    -2550 -1650
	1    0    0    1   
$EndComp
Connection ~ -2550 -1500
Wire Wire Line
	-2550 -1500 -2400 -1500
Text Notes -3225 -550 3    50   ~ 0
bias network to keep the transistor bases\n>= 1 diode drop away from each other
$Comp
L Device:CP C?
U 1 1 5E098487
P -1950 -1400
F 0 "C?" V -2025 -1225 50  0000 C CNN
F 1 "470u" V -1875 -1250 50  0000 C CNN
F 2 "" H -1912 -1550 50  0001 C CNN
F 3 "~" H -1950 -1400 50  0001 C CNN
	1    -1950 -1400
	0    1    -1   0   
$EndComp
Wire Wire Line
	-3675 -1400 -3300 -1400
$Comp
L power:VEE #PWR?
U 1 1 5E2CC03C
P -2550 1825
F 0 "#PWR?" H -2550 1675 50  0001 C CNN
F 1 "VEE" H -2533 1998 50  0000 C CNN
F 2 "" H -2550 1825 50  0001 C CNN
F 3 "" H -2550 1825 50  0001 C CNN
	1    -2550 1825
	1    0    0    1   
$EndComp
Connection ~ -2550 1825
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E2E2D38
P -2050 -2000
F 0 "Q?" H -2125 -1850 50  0000 L CNN
F 1 "BC557" H -2375 -2125 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H -1850 -2075 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H -2050 -2000 50  0001 L CNN
	1    -2050 -2000
	1    0    0    1   
$EndComp
Wire Wire Line
	-3000 1525 -3000 1300
Wire Wire Line
	-3000 800  -3000 575 
Wire Wire Line
	-3000 175  -3000 -50 
Wire Wire Line
	-3000 -450 -3000 -675
Wire Wire Line
	-2100 -1200 -2100 -1300
Wire Wire Line
	-3000 -1200 -3000 -1300
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E300F3C
P -2800 575
F 0 "Q?" H -2975 675 50  0000 L CNN
F 1 "BC557" V -2550 475 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H -2600 500 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H -2800 575 50  0001 L CNN
	1    -2800 575 
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E36DFB0
P -2300 575
F 0 "Q?" H -2450 675 50  0000 L CNN
F 1 "BC557" H -2109 530 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H -2100 500 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H -2300 575 50  0001 L CNN
	1    -2300 575 
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E37A000
P -2800 1300
F 0 "Q?" H -2975 1400 50  0000 L CNN
F 1 "BC557" V -2550 1200 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H -2600 1225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H -2800 1300 50  0001 L CNN
	1    -2800 1300
	1    0    0    1   
$EndComp
Connection ~ -3000 575 
Wire Wire Line
	-3000 575  -3000 525 
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E3A0AED
P -2800 -50
F 0 "Q?" H -2975 50  50  0000 L CNN
F 1 "BC557" V -2550 -150 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H -2600 -125 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H -2800 -50 50  0001 L CNN
	1    -2800 -50 
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E3A0AF3
P -2300 -50
F 0 "Q?" H -2450 50  50  0000 L CNN
F 1 "BC557" H -2109 -95 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H -2100 -125 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H -2300 -50 50  0001 L CNN
	1    -2300 -50 
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E3A8C63
P -2800 -675
F 0 "Q?" H -2975 -575 50  0000 L CNN
F 1 "BC557" V -2550 -775 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H -2600 -750 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H -2800 -675 50  0001 L CNN
	1    -2800 -675
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E3A8C69
P -2300 -675
F 0 "Q?" H -2450 -575 50  0000 L CNN
F 1 "BC557" H -2109 -720 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H -2100 -750 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H -2300 -675 50  0001 L CNN
	1    -2300 -675
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E3B0CCD
P -2800 -1300
F 0 "Q?" H -2975 -1200 50  0000 L CNN
F 1 "BC557" V -2550 -1400 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H -2600 -1375 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H -2800 -1300 50  0001 L CNN
	1    -2800 -1300
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E3B0CD3
P -2300 -1300
F 0 "Q?" H -2450 -1200 50  0000 L CNN
F 1 "BC557" H -2109 -1345 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H -2100 -1375 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H -2300 -1300 50  0001 L CNN
	1    -2300 -1300
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E3BC860
P -2450 -2000
F 0 "Q?" H -2550 -1850 50  0000 L CNN
F 1 "BC557" H -2775 -2125 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H -2250 -2075 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H -2450 -2000 50  0001 L CNN
	1    -2450 -2000
	-1   0    0    1   
$EndComp
Connection ~ -3000 -1300
Wire Wire Line
	-3000 -1300 -3000 -1400
Connection ~ -3000 -675
Wire Wire Line
	-3000 -675 -3000 -725
Connection ~ -3000 -50 
Wire Wire Line
	-3000 -50  -3000 -100
Connection ~ -3000 1300
Wire Wire Line
	-3000 1300 -3000 1200
Connection ~ -2100 -1300
Wire Wire Line
	-2100 -1300 -2100 -1400
$Comp
L Device:R_Variable R?
U 1 1 5DF87DEF
P -1575 -1250
F 0 "R?" H -1447 -1204 50  0000 L CNN
F 1 "100k" H -1500 -1300 50  0000 L CNN
F 2 "" V -1645 -1250 50  0001 C CNN
F 3 "~" H -1575 -1250 50  0001 C CNN
	1    -1575 -1250
	1    0    0    -1  
$EndComp
Text Notes -1550 275  0    50   ~ 0
feedback
$Comp
L Device:R R?
U 1 1 5DD589A2
P -3000 1050
F 0 "R?" H -3175 1125 50  0000 L CNN
F 1 "150" V -3000 975 50  0000 L CNN
F 2 "" V -3070 1050 50  0001 C CNN
F 3 "~" H -3000 1050 50  0001 C CNN
	1    -3000 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DDB9323
P -3000 1675
F 0 "R?" H -3175 1750 50  0000 L CNN
F 1 "220" V -3000 1600 50  0000 L CNN
F 2 "" V -3070 1675 50  0001 C CNN
F 3 "~" H -3000 1675 50  0001 C CNN
	1    -3000 1675
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E37A006
P -2300 1300
F 0 "Q?" H -2450 1400 50  0000 L CNN
F 1 "BC557" H -2109 1255 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H -2100 1225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H -2300 1300 50  0001 L CNN
	1    -2300 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	-1500 1050 -1575 1050
Wire Wire Line
	-1650 850  -1575 850 
$Comp
L Amplifier_Operational:TL074 U?
U 3 1 5DF27280
P -1200 950
F 0 "U?" H -1175 1125 50  0000 C CNN
F 1 "TL074" H -1225 950 50  0000 C CNN
F 2 "" H -1250 1050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H -1150 1150 50  0001 C CNN
	3    -1200 950 
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF2728A
P -1800 1050
F 0 "R?" V -1900 1025 50  0000 L CNN
F 1 "10k" V -1800 975 50  0000 L CNN
F 2 "" V -1870 1050 50  0001 C CNN
F 3 "~" H -1800 1050 50  0001 C CNN
	1    -1800 1050
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF27294
P -1800 850
F 0 "R?" V -1700 825 50  0000 L CNN
F 1 "10k" V -1800 775 50  0000 L CNN
F 2 "" V -1870 850 50  0001 C CNN
F 3 "~" H -1800 850 50  0001 C CNN
	1    -1800 850 
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF2729E
P -1225 625
F 0 "R?" V -1125 575 50  0000 L CNN
F 1 "1Meg" V -1225 525 50  0000 L CNN
F 2 "" V -1295 625 50  0001 C CNN
F 3 "~" H -1225 625 50  0001 C CNN
	1    -1225 625 
	0    1    -1   0   
$EndComp
Connection ~ -1575 850 
Wire Wire Line
	-1575 850  -1500 850 
$Comp
L Device:R R?
U 1 1 5DF272AA
P -1575 1300
F 0 "R?" H -1475 1275 50  0000 L CNN
F 1 "1Meg" V -1575 1200 50  0000 L CNN
F 2 "" V -1645 1300 50  0001 C CNN
F 3 "~" H -1575 1300 50  0001 C CNN
	1    -1575 1300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	-1575 1150 -1575 1050
Connection ~ -1575 1050
Wire Wire Line
	-1575 1050 -1650 1050
Text Notes -1475 1350 0    50   ~ 0
differential to\nsingle-ended
Wire Wire Line
	-1575 625  -1375 625 
Wire Wire Line
	-1575 625  -1575 850 
Wire Wire Line
	-1075 625  -900 625 
Wire Wire Line
	-900 625  -900 950 
$Comp
L power:GND #PWR?
U 1 1 5DFCD5D9
P -1575 1450
F 0 "#PWR?" H -1575 1200 50  0001 C CNN
F 1 "GND" H -1575 1300 50  0001 C CNN
F 2 "" H -1575 1450 50  0001 C CNN
F 3 "" H -1575 1450 50  0001 C CNN
	1    -1575 1450
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DCE35D7
P -2550 1050
F 0 "C?" V -2600 825 50  0000 C CNN
F 1 "47n" V -2500 800 50  0000 C CNN
F 2 "" H -2512 900 50  0001 C CNN
F 3 "~" H -2550 1050 50  0001 C CNN
	1    -2550 1050
	0    -1   1    0   
$EndComp
Connection ~ -2700 1050
Wire Wire Line
	-2700 1050 -2700 1100
Connection ~ -2400 1050
Wire Wire Line
	-2400 1050 -2400 775 
Wire Wire Line
	-2400 1100 -2400 1050
Wire Wire Line
	-2400 1050 -1950 1050
Wire Wire Line
	-2700 775  -2700 900 
Wire Wire Line
	-2100 900  -2700 900 
Connection ~ -2700 900 
Wire Wire Line
	-2700 900  -2700 1050
Wire Wire Line
	-2100 900  -2100 850 
Wire Wire Line
	-2100 850  -1950 850 
Wire Wire Line
	-900 625  -900 300 
Wire Wire Line
	-900 300  -1575 300 
Connection ~ -900 625 
$Comp
L Jumper:Jumper_2_Bridged JP?
U 1 1 5DD3CFE2
P 2650 3800
F 0 "JP?" H 2650 3903 50  0000 C CNN
F 1 "Jumper_2_Bridged" H 2650 3904 50  0001 C CNN
F 2 "" H 2650 3800 50  0001 C CNN
F 3 "~" H 2650 3800 50  0001 C CNN
	1    2650 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DD3E1B6
P 3000 3800
F 0 "C?" V 2850 3800 50  0000 C CNN
F 1 "1n" V 3150 3800 50  0000 C CNN
F 2 "" H 3038 3650 50  0001 C CNN
F 3 "~" H 3000 3800 50  0001 C CNN
	1    3000 3800
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q?
U 1 1 5DD407CF
P 3500 3800
F 0 "Q?" H 3706 3846 50  0000 L CNN
F 1 "2N7000" H 3706 3755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3700 3725 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 3500 3800 50  0001 L CNN
	1    3500 3800
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR?
U 1 1 5DD54441
P 3600 4100
F 0 "#PWR?" H 3600 3950 50  0001 C CNN
F 1 "VEE" H 3618 4273 50  0000 C CNN
F 2 "" H 3600 4100 50  0001 C CNN
F 3 "" H 3600 4100 50  0001 C CNN
	1    3600 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 4100 3600 4000
$Comp
L power:VEE #PWR?
U 1 1 5DD3FBCD
P 3150 4100
F 0 "#PWR?" H 3150 3950 50  0001 C CNN
F 1 "VEE" H 3168 4273 50  0000 C CNN
F 2 "" H 3150 4100 50  0001 C CNN
F 3 "" H 3150 4100 50  0001 C CNN
	1    3150 4100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD3F133
P 3150 3950
F 0 "R?" H 3050 4000 50  0000 C CNN
F 1 "1k" V 3150 3950 50  0000 C CNN
F 2 "" V 3080 3950 50  0001 C CNN
F 3 "~" H 3150 3950 50  0001 C CNN
	1    3150 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 3800 3300 3800
Connection ~ 3150 3800
Text GLabel 3650 3550 2    50   Input ~ 0
sync_out1
Wire Wire Line
	3650 3550 3600 3550
Wire Wire Line
	3600 3550 3600 3600
Text Notes 3100 3675 0    50   ~ 0
sync pulse\ngeneration
Connection ~ 1725 3800
Text GLabel 1950 3800 3    50   Input ~ 0
square_ctl_buf1
Text Notes -1575 -1550 2    50   ~ 0
current mirror as\nvoltage controlled\ncurrent source
Text Notes -1950 550  1    50   ~ 0
transistor ladder VCF
Text GLabel -900 950  2    50   Input ~ 0
vcf_audio_out
Text GLabel 18075 3650 0    50   Input ~ 0
vco1_in
$Comp
L Device:R_POT R?
U 1 1 5DEF116D
P 18125 3850
F 0 "R?" V 18010 3850 50  0000 C CNN
F 1 "10k" V 18125 3850 50  0000 C CNN
F 2 "" H 18125 3850 50  0001 C CNN
F 3 "~" H 18125 3850 50  0001 C CNN
	1    18125 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	18075 3650 18125 3650
Wire Wire Line
	18125 3650 18125 3700
$Comp
L power:GND #PWR?
U 1 1 5DEFCD9E
P 18125 4000
F 0 "#PWR?" H 18125 3750 50  0001 C CNN
F 1 "GND" H 18130 3827 50  0000 C CNN
F 2 "" H 18125 4000 50  0001 C CNN
F 3 "" H 18125 4000 50  0001 C CNN
	1    18125 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DEFD971
P 18425 3850
F 0 "R?" V 18525 3875 50  0000 L CNN
F 1 "10k" V 18425 3775 50  0000 L CNN
F 2 "" V 18355 3850 50  0001 C CNN
F 3 "~" H 18425 3850 50  0001 C CNN
	1    18425 3850
	0    -1   1    0   
$EndComp
Text GLabel 18075 4350 0    50   Input ~ 0
vco2_in
$Comp
L Device:R_POT R?
U 1 1 5DEFFDC3
P 18125 4550
F 0 "R?" V 18010 4550 50  0000 C CNN
F 1 "10k" V 18125 4550 50  0000 C CNN
F 2 "" H 18125 4550 50  0001 C CNN
F 3 "~" H 18125 4550 50  0001 C CNN
	1    18125 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	18075 4350 18125 4350
Wire Wire Line
	18125 4350 18125 4400
$Comp
L power:GND #PWR?
U 1 1 5DEFFDCF
P 18125 4700
F 0 "#PWR?" H 18125 4450 50  0001 C CNN
F 1 "GND" H 18130 4527 50  0000 C CNN
F 2 "" H 18125 4700 50  0001 C CNN
F 3 "" H 18125 4700 50  0001 C CNN
	1    18125 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DEFFDD9
P 18425 4550
F 0 "R?" V 18525 4575 50  0000 L CNN
F 1 "10k" V 18425 4475 50  0000 L CNN
F 2 "" V 18355 4550 50  0001 C CNN
F 3 "~" H 18425 4550 50  0001 C CNN
	1    18425 4550
	0    -1   1    0   
$EndComp
Text Notes 17750 4050 0    50   ~ 0
mixer
Text GLabel 18575 4550 2    50   Input ~ 0
mixer_out
$Comp
L Jumper:Jumper_3_Bridged12 JP?
U 1 1 5DF29DFE
P 8050 9800
F 0 "JP?" H 8050 9913 50  0000 C CNN
F 1 "Jumper_3_Bridged12" H 8050 9913 50  0001 C CNN
F 2 "" H 8050 9800 50  0001 C CNN
F 3 "~" H 8050 9800 50  0001 C CNN
	1    8050 9800
	1    0    0    -1  
$EndComp
Text GLabel 8350 9850 3    50   Input ~ 0
vca_audio_in
Text GLabel 8050 9950 3    50   Input ~ 0
mixer_out
Text GLabel 7750 9850 3    50   Input ~ 0
vcf_audio_in
Wire Wire Line
	7800 9800 7750 9800
Wire Wire Line
	7750 9800 7750 9850
Wire Wire Line
	18575 3850 18575 4550
Wire Wire Line
	8350 9850 8350 9800
Wire Wire Line
	8350 9800 8300 9800
Text GLabel 1225 5775 0    50   Input ~ 0
square_ctl1
Text GLabel 1225 5875 0    50   Input ~ 0
square_ctl_buf1
Text GLabel 1225 6275 0    50   Input ~ 0
sync_out1
Text GLabel 1725 6275 2    50   Input ~ 0
sync_out2
Text GLabel 1725 5875 2    50   Input ~ 0
square_ctl_buf2
Text GLabel 1725 5775 2    50   Input ~ 0
square_ctl2
$Comp
L power:GND #PWR?
U 1 1 5E051F30
P 9450 10250
F 0 "#PWR?" H 9450 10000 50  0001 C CNN
F 1 "GND" H 9455 10077 50  0000 C CNN
F 2 "" H 9450 10250 50  0001 C CNN
F 3 "" H 9450 10250 50  0001 C CNN
	1    9450 10250
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR?
U 1 1 5E05362F
P 8950 10250
F 0 "#PWR?" H 8950 10100 50  0001 C CNN
F 1 "VEE" H 8968 10423 50  0000 C CNN
F 2 "" H 8950 10250 50  0001 C CNN
F 3 "" H 8950 10250 50  0001 C CNN
	1    8950 10250
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E054C84
P 8950 10150
F 0 "#PWR?" H 8950 10000 50  0001 C CNN
F 1 "VCC" H 8967 10323 50  0000 C CNN
F 2 "" H 8950 10150 50  0001 C CNN
F 3 "" H 8950 10150 50  0001 C CNN
	1    8950 10150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5E056F10
P 9150 10150
F 0 "J?" H 9200 10275 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 9200 10276 50  0001 C CNN
F 2 "" H 9150 10150 50  0001 C CNN
F 3 "~" H 9150 10150 50  0001 C CNN
	1    9150 10150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E0FF54D
P 10200 11925
F 0 "C?" H 10075 12025 50  0000 L CNN
F 1 "1u" H 10075 11825 50  0000 L CNN
F 2 "" H 10238 11775 50  0001 C CNN
F 3 "~" H 10200 11925 50  0001 C CNN
	1    10200 11925
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E10C783
P 10425 11925
F 0 "C?" H 10300 12025 50  0000 L CNN
F 1 "1u" H 10300 11825 50  0000 L CNN
F 2 "" H 10463 11775 50  0001 C CNN
F 3 "~" H 10425 11925 50  0001 C CNN
	1    10425 11925
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E10CB1F
P 10200 12075
F 0 "#PWR?" H 10200 11825 50  0001 C CNN
F 1 "GND" H 10205 11902 50  0000 C CNN
F 2 "" H 10200 12075 50  0001 C CNN
F 3 "" H 10200 12075 50  0001 C CNN
	1    10200 12075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E10D2B0
P 10425 12075
F 0 "#PWR?" H 10425 11825 50  0001 C CNN
F 1 "GND" H 10430 11902 50  0000 C CNN
F 2 "" H 10425 12075 50  0001 C CNN
F 3 "" H 10425 12075 50  0001 C CNN
	1    10425 12075
	1    0    0    -1  
$EndComp
Wire Wire Line
	10125 11700 10200 11700
Wire Wire Line
	10200 11700 10200 11775
Wire Wire Line
	10125 11400 10425 11400
Wire Wire Line
	10425 11400 10425 11775
$Comp
L Device:R_POT R?
U 1 1 5E12A7CE
P 10725 11850
F 0 "R?" H 10656 11896 50  0000 R CNN
F 1 "1k" V 10725 11900 50  0000 R CNN
F 2 "" H 10725 11850 50  0001 C CNN
F 3 "~" H 10725 11850 50  0001 C CNN
	1    10725 11850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT R?
U 1 1 5E1317B6
P 11000 11550
F 0 "R?" H 10931 11596 50  0000 R CNN
F 1 "1k" V 11000 11600 50  0000 R CNN
F 2 "" H 11000 11550 50  0001 C CNN
F 3 "~" H 11000 11550 50  0001 C CNN
	1    11000 11550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 11700 10725 11700
Connection ~ 10200 11700
Wire Wire Line
	10425 11400 11000 11400
Connection ~ 10425 11400
Wire Wire Line
	11000 11700 11000 12000
$Comp
L power:GND #PWR?
U 1 1 5E14B5EA
P 10725 12000
F 0 "#PWR?" H 10725 11750 50  0001 C CNN
F 1 "GND" H 10730 11827 50  0000 C CNN
F 2 "" H 10725 12000 50  0001 C CNN
F 3 "" H 10725 12000 50  0001 C CNN
	1    10725 12000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E14B87F
P 11000 12000
F 0 "#PWR?" H 11000 11750 50  0001 C CNN
F 1 "GND" H 11005 11827 50  0000 C CNN
F 2 "" H 11000 12000 50  0001 C CNN
F 3 "" H 11000 12000 50  0001 C CNN
	1    11000 12000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5E1550B9
P 11250 11350
F 0 "J?" V 11358 11162 50  0000 R CNN
F 1 "Conn_01x02_Male" V 11403 11394 50  0001 L CNN
F 2 "" H 11250 11350 50  0001 C CNN
F 3 "~" H 11250 11350 50  0001 C CNN
	1    11250 11350
	0    -1   1    0   
$EndComp
Wire Wire Line
	11150 11550 11250 11550
Wire Wire Line
	11350 11850 11350 11550
Wire Wire Line
	10875 11850 11350 11850
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5E187B3E
P 7975 10875
F 0 "J?" H 8025 11000 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 8025 11001 50  0001 C CNN
F 2 "" H 7975 10875 50  0001 C CNN
F 3 "~" H 7975 10875 50  0001 C CNN
	1    7975 10875
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E189477
P 7775 10875
F 0 "#PWR?" H 7775 10725 50  0001 C CNN
F 1 "+3.3V" H 7790 11048 50  0000 C CNN
F 2 "" H 7775 10875 50  0001 C CNN
F 3 "" H 7775 10875 50  0001 C CNN
	1    7775 10875
	1    0    0    -1  
$EndComp
Text GLabel 8275 10875 2    50   Input ~ 0
PB12
Text GLabel 8275 10975 2    50   Input ~ 0
PB13
Text GLabel 7775 10975 0    50   Input ~ 0
PB15
NoConn ~ 9450 10150
Wire Notes Line
	-6275 -2200 -6275 150 
$Comp
L Device:R R?
U 1 1 5E3EFEBB
P -1775 -2000
F 0 "R?" H -1875 -1850 50  0000 L CNN
F 1 "10k" V -1775 -2075 50  0000 L CNN
F 2 "" V -1845 -2000 50  0001 C CNN
F 3 "~" H -1775 -2000 50  0001 C CNN
	1    -1775 -2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R?
U 1 1 5E3EFEC5
P -1600 -2000
F 0 "R?" H -1550 -2000 50  0000 L CNN
F 1 "10k" H -1550 -2075 50  0000 L CNN
F 2 "" V -1670 -2000 50  0001 C CNN
F 3 "~" H -1600 -2000 50  0001 C CNN
	1    -1600 -2000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E3EFECF
P -1600 -2150
F 0 "#PWR?" H -1600 -2300 50  0001 C CNN
F 1 "VCC" H -1500 -2050 50  0000 C CNN
F 2 "" H -1600 -2150 50  0001 C CNN
F 3 "" H -1600 -2150 50  0001 C CNN
	1    -1600 -2150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E3EFEF7
P -2250 -2200
F 0 "#PWR?" H -2250 -2350 50  0001 C CNN
F 1 "VCC" H -2350 -2125 50  0000 C CNN
F 2 "" H -2250 -2200 50  0001 C CNN
F 3 "" H -2250 -2200 50  0001 C CNN
	1    -2250 -2200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	-2550 -2200 -2250 -2200
Connection ~ -2250 -2200
Wire Wire Line
	-2250 -2200 -1950 -2200
Wire Wire Line
	-2250 -2000 -2250 -1800
Wire Wire Line
	-1775 -1800 -1775 -1850
Wire Wire Line
	-1600 -1800 -1600 -1850
Wire Wire Line
	-1775 -2150 -1775 -2350
Connection ~ -1775 -1800
Wire Wire Line
	-1775 -1800 -1600 -1800
Wire Wire Line
	-2250 -1800 -1950 -1800
Connection ~ -1950 -1800
Wire Wire Line
	-1950 -1800 -1775 -1800
Connection ~ -2250 -2000
Text Notes -700 -675 1    50   ~ 0
offset compensation: the OpAmp would\nneed to output exactly Vcc - 0.7V (i.e., the voltage\nat the transistor's base) in order to fully close the\nVCF. However, the OpAmp is limited to approx. Vcc-1.5V,\nso we inject some current through this trimming poti.\nWhen the OpAmp is at its Vmax, tune this poti such that\nthe VCF is just fully closed.\n
Connection ~ -2675 -2350
Wire Wire Line
	-1775 -2350 -2675 -2350
$Comp
L power:VEE #PWR?
U 1 1 5E3C6C3C
P -3925 -2125
F 0 "#PWR?" H -3925 -2275 50  0001 C CNN
F 1 "VEE" H -3800 -2025 50  0000 C CNN
F 2 "" H -3925 -2125 50  0001 C CNN
F 3 "" H -3925 -2125 50  0001 C CNN
	1    -3925 -2125
	-1   0    0    1   
$EndComp
Connection ~ -3275 -2775
$Comp
L power:GND #PWR?
U 1 1 5E371B63
P -3275 -2250
F 0 "#PWR?" H -3275 -2500 50  0001 C CNN
F 1 "GND" H -3275 -2400 50  0000 C CNN
F 2 "" H -3275 -2250 50  0001 C CNN
F 3 "" H -3275 -2250 50  0001 C CNN
	1    -3275 -2250
	1    0    0    -1  
$EndComp
Text Notes -5000 -2675 0    50   ~ 0
should be 2x 47k maybe
Wire Wire Line
	-3275 -2775 -3275 -2650
Wire Wire Line
	-3275 -2650 -3275 -2450
Connection ~ -3275 -2650
Wire Wire Line
	-3650 -2775 -3575 -2775
Text GLabel -3650 -2775 0    50   Input ~ 0
vcf_ctl1
$Comp
L Device:R R?
U 1 1 5E371BB5
P -3425 -2775
F 0 "R?" V -3375 -2675 50  0000 L CNN
F 1 "100k" V -3425 -2875 50  0000 L CNN
F 2 "" V -3495 -2775 50  0001 C CNN
F 3 "~" H -3425 -2775 50  0001 C CNN
	1    -3425 -2775
	0    -1   1    0   
$EndComp
Wire Wire Line
	-3650 -2650 -3575 -2650
$Comp
L Amplifier_Operational:TL074 U?
U 1 1 5E371BA8
P -2975 -2350
F 0 "U?" H -2950 -2175 50  0000 C CNN
F 1 "TL074" H -3000 -2350 50  0000 C CNN
F 2 "" H -3025 -2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H -2925 -2150 50  0001 C CNN
	1    -2975 -2350
	1    0    0    1   
$EndComp
Text GLabel -3650 -2650 0    50   Input ~ 0
vcf_ctl2
$Comp
L Device:R R?
U 1 1 5E371B7C
P -3425 -2650
F 0 "R?" V -3375 -2550 50  0000 L CNN
F 1 "100k" V -3425 -2750 50  0000 L CNN
F 2 "" V -3495 -2650 50  0001 C CNN
F 3 "~" H -3425 -2650 50  0001 C CNN
	1    -3425 -2650
	0    -1   1    0   
$EndComp
Wire Wire Line
	-3100 -2775 -3275 -2775
Wire Wire Line
	-2675 -2775 -2800 -2775
Wire Wire Line
	-2675 -2350 -2675 -2775
$Comp
L Device:R R?
U 1 1 5E371B6F
P -2950 -2775
F 0 "R?" V -3050 -2825 50  0000 L CNN
F 1 "100k" V -2950 -2875 50  0000 L CNN
F 2 "" V -3020 -2775 50  0001 C CNN
F 3 "~" H -2950 -2775 50  0001 C CNN
	1    -2950 -2775
	0    -1   1    0   
$EndComp
Wire Wire Line
	-3525 -2900 -3275 -2900
Wire Wire Line
	-3275 -2900 -3275 -2775
Text GLabel -3525 -2900 0    50   Input ~ 0
vcf_ctl_raw
Text Notes -1325 -1800 1    50   ~ 0
set to 7.26k
Wire Notes Line
	-1650 -1450 -1275 -1450
Wire Notes Line
	-1275 -1450 -1275 -650
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E667B2B
P -7875 -1650
F 0 "Q?" H -7950 -1500 50  0000 L CNN
F 1 "BC557" H -8200 -1775 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H -7675 -1725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H -7875 -1650 50  0001 L CNN
	1    -7875 -1650
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 5E667B35
P -8275 -1650
F 0 "Q?" H -8375 -1500 50  0000 L CNN
F 1 "BC557" H -8600 -1775 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H -8075 -1725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H -8275 -1650 50  0001 L CNN
	1    -8275 -1650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E667B40
P -7600 -1650
F 0 "R?" H -7700 -1500 50  0000 L CNN
F 1 "100k" V -7600 -1750 50  0000 L CNN
F 2 "" V -7670 -1650 50  0001 C CNN
F 3 "~" H -7600 -1650 50  0001 C CNN
	1    -7600 -1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R?
U 1 1 5E667B4A
P -7425 -1650
F 0 "R?" H -7375 -1650 50  0000 L CNN
F 1 "100k" H -7375 -1725 50  0000 L CNN
F 2 "" V -7495 -1650 50  0001 C CNN
F 3 "~" H -7425 -1650 50  0001 C CNN
	1    -7425 -1650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E667B54
P -7425 -1800
F 0 "#PWR?" H -7425 -1950 50  0001 C CNN
F 1 "VCC" H -7325 -1700 50  0000 C CNN
F 2 "" H -7425 -1800 50  0001 C CNN
F 3 "" H -7425 -1800 50  0001 C CNN
	1    -7425 -1800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E667B5E
P -8075 -1850
F 0 "#PWR?" H -8075 -2000 50  0001 C CNN
F 1 "VCC" H -8175 -1775 50  0000 C CNN
F 2 "" H -8075 -1850 50  0001 C CNN
F 3 "" H -8075 -1850 50  0001 C CNN
	1    -8075 -1850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	-8375 -1850 -8075 -1850
Connection ~ -8075 -1850
Wire Wire Line
	-8075 -1850 -7775 -1850
Wire Wire Line
	-8075 -1650 -8075 -1450
Wire Wire Line
	-7600 -1450 -7600 -1500
Wire Wire Line
	-7425 -1450 -7425 -1500
Wire Wire Line
	-7600 -1800 -7600 -2000
Connection ~ -7600 -1450
Wire Wire Line
	-7600 -1450 -7425 -1450
Wire Wire Line
	-8075 -1450 -7775 -1450
Connection ~ -7775 -1450
Wire Wire Line
	-7775 -1450 -7600 -1450
Connection ~ -8075 -1650
Text Notes -7100 -1900 3    50   ~ 0
set to ~~47k
Text GLabel -9550 -2125 0    50   Input ~ 0
vca_ctl_raw
Wire Wire Line
	-9300 -2125 -9300 -2000
Wire Wire Line
	-9550 -2125 -9300 -2125
$Comp
L Device:R R?
U 1 1 5E667BC6
P -8975 -2000
F 0 "R?" V -9075 -2050 50  0000 L CNN
F 1 "100k" V -8975 -2100 50  0000 L CNN
F 2 "" V -9045 -2000 50  0001 C CNN
F 3 "~" H -8975 -2000 50  0001 C CNN
	1    -8975 -2000
	0    -1   1    0   
$EndComp
Wire Wire Line
	-8700 -1575 -8700 -2000
Wire Wire Line
	-8700 -2000 -8825 -2000
Wire Wire Line
	-9125 -2000 -9300 -2000
$Comp
L Device:R R?
U 1 1 5E667BB9
P -9450 -1875
F 0 "R?" V -9400 -1775 50  0000 L CNN
F 1 "100k" V -9450 -1975 50  0000 L CNN
F 2 "" V -9520 -1875 50  0001 C CNN
F 3 "~" H -9450 -1875 50  0001 C CNN
	1    -9450 -1875
	0    -1   1    0   
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 1 1 5E667BAE
P -9000 -1575
F 0 "U?" H -8975 -1400 50  0000 C CNN
F 1 "TL074" H -9025 -1575 50  0000 C CNN
F 2 "" H -9050 -1475 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H -8950 -1375 50  0001 C CNN
	1    -9000 -1575
	1    0    0    1   
$EndComp
Wire Wire Line
	-9675 -1875 -9600 -1875
$Comp
L Device:R R?
U 1 1 5E667BA3
P -9450 -2000
F 0 "R?" V -9400 -1900 50  0000 L CNN
F 1 "100k" V -9450 -2100 50  0000 L CNN
F 2 "" V -9520 -2000 50  0001 C CNN
F 3 "~" H -9450 -2000 50  0001 C CNN
	1    -9450 -2000
	0    -1   1    0   
$EndComp
Text GLabel -9675 -2000 0    50   Input ~ 0
vca_ctl1
Wire Wire Line
	-9675 -2000 -9600 -2000
Connection ~ -9300 -1875
Wire Wire Line
	-9300 -1875 -9300 -1675
Wire Wire Line
	-9300 -2000 -9300 -1875
Text Notes -10025 -2200 0    50   ~ 0
should be 2x 47k maybe
$Comp
L power:GND #PWR?
U 1 1 5E667B93
P -9300 -1475
F 0 "#PWR?" H -9300 -1725 50  0001 C CNN
F 1 "GND" H -9300 -1625 50  0000 C CNN
F 2 "" H -9300 -1475 50  0001 C CNN
F 3 "" H -9300 -1475 50  0001 C CNN
	1    -9300 -1475
	1    0    0    -1  
$EndComp
Connection ~ -9300 -2000
Text Notes -10125 -1625 0    50   ~ 0
set to 100k
$Comp
L power:VEE #PWR?
U 1 1 5E667B87
P -9650 -1625
F 0 "#PWR?" H -9650 -1775 50  0001 C CNN
F 1 "VEE" H -9632 -1452 50  0000 C CNN
F 2 "" H -9650 -1625 50  0001 C CNN
F 3 "" H -9650 -1625 50  0001 C CNN
	1    -9650 -1625
	-1   0    0    1   
$EndComp
Wire Wire Line
	-9650 -1625 -9650 -1675
Wire Wire Line
	-9650 -1675 -9600 -1675
$Comp
L Device:RTRIM R?
U 1 1 5E667B7B
P -9450 -1675
F 0 "R?" V -9550 -1800 50  0000 C CNN
F 1 "200k" V -9550 -1625 50  0000 C CNN
F 2 "" V -9520 -1675 50  0001 C CNN
F 3 "~" H -9450 -1675 50  0001 C CNN
	1    -9450 -1675
	0    1    -1   0   
$EndComp
Connection ~ -9300 -1675
Text Notes -10200 -900 0    50   ~ 0
set such, that with\nzero control input,\nthe output of the op\namp is just at maxi-\nmum (i.e., Vcc minus\nlike 1 V or so)
Wire Wire Line
	-8700 -2000 -7600 -2000
Connection ~ -8700 -2000
$Comp
L power:GND #PWR?
U 1 1 5E7AF844
P 20050 5200
F 0 "#PWR?" H 20050 4950 50  0001 C CNN
F 1 "GND" H 20055 5027 50  0000 C CNN
F 2 "" H 20050 5200 50  0001 C CNN
F 3 "" H 20050 5200 50  0001 C CNN
	1    20050 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E7B061B
P 20050 5050
F 0 "C?" H 19925 4950 50  0000 L CNN
F 1 "any" H 20165 5005 50  0001 L CNN
F 2 "" H 20088 4900 50  0001 C CNN
F 3 "~" H 20050 5050 50  0001 C CNN
	1    20050 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R?
U 1 1 5E7BA9B6
P 19900 4825
F 0 "R?" V 19950 5000 50  0000 C CNN
F 1 "any" V 19775 4750 50  0001 C CNN
F 2 "" V 19830 4825 50  0001 C CNN
F 3 "~" H 19900 4825 50  0001 C CNN
	1    19900 4825
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E7D5649
P 20350 5200
F 0 "#PWR?" H 20350 4950 50  0001 C CNN
F 1 "GND" H 20355 5027 50  0000 C CNN
F 2 "" H 20350 5200 50  0001 C CNN
F 3 "" H 20350 5200 50  0001 C CNN
	1    20350 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R?
U 1 1 5E7D565D
P 19900 4650
F 0 "R?" V 19950 4825 50  0000 C CNN
F 1 "any" V 19775 4575 50  0001 C CNN
F 2 "" V 19830 4650 50  0001 C CNN
F 3 "~" H 19900 4650 50  0001 C CNN
	1    19900 4650
	0    1    -1   0   
$EndComp
Wire Wire Line
	20050 4650 20350 4650
Wire Wire Line
	20350 4650 20350 4900
$Comp
L Device:C C?
U 1 1 5E7EABA3
P 20350 5050
F 0 "C?" H 20225 4950 50  0000 L CNN
F 1 "any" H 20465 5005 50  0001 L CNN
F 2 "" H 20388 4900 50  0001 C CNN
F 3 "~" H 20350 5050 50  0001 C CNN
	1    20350 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E7EABAD
P 20650 5200
F 0 "#PWR?" H 20650 4950 50  0001 C CNN
F 1 "GND" H 20655 5027 50  0000 C CNN
F 2 "" H 20650 5200 50  0001 C CNN
F 3 "" H 20650 5200 50  0001 C CNN
	1    20650 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E7EABB7
P 20650 5050
F 0 "C?" H 20525 4950 50  0000 L CNN
F 1 "any" H 20765 5005 50  0001 L CNN
F 2 "" H 20688 4900 50  0001 C CNN
F 3 "~" H 20650 5050 50  0001 C CNN
	1    20650 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R?
U 1 1 5E7F515B
P 19900 4475
F 0 "R?" V 19950 4650 50  0000 C CNN
F 1 "any" V 19775 4400 50  0001 C CNN
F 2 "" V 19830 4475 50  0001 C CNN
F 3 "~" H 19900 4475 50  0001 C CNN
	1    19900 4475
	0    1    -1   0   
$EndComp
Wire Wire Line
	20050 4475 20650 4475
Wire Wire Line
	20650 4475 20650 4900
Wire Wire Line
	20050 4825 20050 4900
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 5E82F989
P 20250 4150
F 0 "J?" H 20300 3925 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 20300 4376 50  0001 C CNN
F 2 "" H 20250 4150 50  0001 C CNN
F 3 "~" H 20250 4150 50  0001 C CNN
	1    20250 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	20050 4250 19750 4250
Wire Wire Line
	19750 4250 19750 4475
Wire Wire Line
	20050 4150 19675 4150
Wire Wire Line
	19675 4150 19675 4650
Wire Wire Line
	19675 4650 19750 4650
Wire Wire Line
	20050 4050 19600 4050
Wire Wire Line
	19600 4050 19600 4825
Wire Wire Line
	19600 4825 19750 4825
Wire Wire Line
	20650 4475 20650 4250
Wire Wire Line
	20650 4250 20550 4250
Connection ~ 20650 4475
Wire Wire Line
	20350 4650 20725 4650
Wire Wire Line
	20725 4650 20725 4150
Wire Wire Line
	20725 4150 20550 4150
Connection ~ 20350 4650
Wire Wire Line
	20050 4825 20800 4825
Wire Wire Line
	20800 4825 20800 4050
Wire Wire Line
	20800 4050 20550 4050
Connection ~ 20050 4825
Text Notes 19575 5425 0    50   ~ 0
general\npurpose\nlow pass\nfilters
Wire Notes Line
	19550 3950 20850 3950
Wire Notes Line
	20850 3950 20850 5450
Wire Notes Line
	20850 5450 19550 5450
Wire Notes Line
	19550 3950 19550 5450
Text Notes 450  -575 0    50   ~ 0
TODO\n- expo for filter\n- connectors
Text Notes -4075 -1825 0    50   ~ 0
or connect (-) with ~~100k to VEE\n(like the VCA)
$Comp
L Device:R_POT R?
U 1 1 5DCFDA87
P -3925 -2275
F 0 "R?" H -3800 -2150 50  0000 C CNN
F 1 "100k" V -3925 -2275 50  0000 C CNN
F 2 "" H -3925 -2275 50  0001 C CNN
F 3 "~" H -3925 -2275 50  0001 C CNN
	1    -3925 -2275
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD3D8B2
P -3425 -2450
F 0 "R?" V -3475 -2350 50  0000 L CNN
F 1 "47k" V -3425 -2525 50  0000 L CNN
F 2 "" V -3495 -2450 50  0001 C CNN
F 3 "~" H -3425 -2450 50  0001 C CNN
	1    -3425 -2450
	0    -1   1    0   
$EndComp
Connection ~ -3275 -2450
$Comp
L power:VCC #PWR?
U 1 1 5DD4583C
P -3925 -2425
F 0 "#PWR?" H -3925 -2575 50  0001 C CNN
F 1 "VCC" H -4050 -2350 50  0000 C CNN
F 2 "" H -3925 -2425 50  0001 C CNN
F 3 "" H -3925 -2425 50  0001 C CNN
	1    -3925 -2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	-3575 -2450 -3650 -2450
Wire Wire Line
	-3650 -2450 -3650 -2275
Wire Wire Line
	-3650 -2275 -3775 -2275
Text GLabel -5375 -2575 2    50   Input ~ 0
vcf_ctl2
$Comp
L Device:R_POT R?
U 1 1 5DDA947B
P -5375 -2425
F 0 "R?" V -5475 -2400 50  0000 C CNN
F 1 "10k" V -5375 -2425 50  0000 C CNN
F 2 "" H -5375 -2425 50  0001 C CNN
F 3 "~" H -5375 -2425 50  0001 C CNN
	1    -5375 -2425
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DDF0531
P -5225 -2425
F 0 "#PWR?" H -5225 -2675 50  0001 C CNN
F 1 "GND" H -5220 -2598 50  0001 C CNN
F 2 "" H -5225 -2425 50  0001 C CNN
F 3 "" H -5225 -2425 50  0001 C CNN
	1    -5225 -2425
	1    0    0    -1  
$EndComp
Text GLabel -5375 -2925 2    50   Input ~ 0
vcf_ctl1
$Comp
L Device:R_POT R?
U 1 1 5DDF0D1B
P -5375 -2775
F 0 "R?" V -5475 -2750 50  0000 C CNN
F 1 "10k" V -5375 -2775 50  0000 C CNN
F 2 "" H -5375 -2775 50  0001 C CNN
F 3 "~" H -5375 -2775 50  0001 C CNN
	1    -5375 -2775
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DDF0D25
P -5225 -2775
F 0 "#PWR?" H -5225 -3025 50  0001 C CNN
F 1 "GND" H -5220 -2948 50  0001 C CNN
F 2 "" H -5225 -2775 50  0001 C CNN
F 3 "" H -5225 -2775 50  0001 C CNN
	1    -5225 -2775
	1    0    0    -1  
$EndComp
Text GLabel -10725 -1800 2    50   Input ~ 0
vca_ctl2
$Comp
L Device:R_POT R?
U 1 1 5DE0C3D1
P -10725 -1650
F 0 "R?" V -10825 -1625 50  0000 C CNN
F 1 "10k" V -10725 -1650 50  0000 C CNN
F 2 "" H -10725 -1650 50  0001 C CNN
F 3 "~" H -10725 -1650 50  0001 C CNN
	1    -10725 -1650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE0C3D7
P -10575 -1650
F 0 "#PWR?" H -10575 -1900 50  0001 C CNN
F 1 "GND" H -10570 -1823 50  0001 C CNN
F 2 "" H -10575 -1650 50  0001 C CNN
F 3 "" H -10575 -1650 50  0001 C CNN
	1    -10575 -1650
	1    0    0    -1  
$EndComp
Text GLabel -10725 -2150 2    50   Input ~ 0
vca_ctl1
$Comp
L Device:R_POT R?
U 1 1 5DE0C3DE
P -10725 -2000
F 0 "R?" V -10825 -1975 50  0000 C CNN
F 1 "10k" V -10725 -2000 50  0000 C CNN
F 2 "" H -10725 -2000 50  0001 C CNN
F 3 "~" H -10725 -2000 50  0001 C CNN
	1    -10725 -2000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE0C3E4
P -10575 -2000
F 0 "#PWR?" H -10575 -2250 50  0001 C CNN
F 1 "GND" H -10570 -2173 50  0001 C CNN
F 2 "" H -10575 -2000 50  0001 C CNN
F 3 "" H -10575 -2000 50  0001 C CNN
	1    -10575 -2000
	1    0    0    -1  
$EndComp
Text GLabel -9675 -1875 0    50   Input ~ 0
vca_ctl2
$Comp
L Device:R R?
U 1 1 5DEBC798
P 2350 3950
F 0 "R?" H 2450 3850 50  0000 C CNN
F 1 "10k" V 2350 3950 50  0000 C CNN
F 2 "" V 2280 3950 50  0001 C CNN
F 3 "~" H 2350 3950 50  0001 C CNN
	1    2350 3950
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Zener D?
U 1 1 5DEBD121
P 2275 4250
F 0 "D?" V 2225 4075 50  0000 L CNN
F 1 "3V3" V 2325 4025 50  0000 L CNN
F 2 "" H 2275 4250 50  0001 C CNN
F 3 "~" H 2275 4250 50  0001 C CNN
	1    2275 4250
	0    1    1    0   
$EndComp
$Comp
L Diode:1N5817 D?
U 1 1 5DEBDEB7
P 2425 4250
F 0 "D?" V 2379 4329 50  0000 L CNN
F 1 "1N5817" V 2470 4329 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2425 4075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 2425 4250 50  0001 C CNN
	1    2425 4250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DEC1769
P 2350 4400
F 0 "#PWR?" H 2350 4150 50  0001 C CNN
F 1 "GND" H 2355 4227 50  0001 C CNN
F 2 "" H 2350 4400 50  0001 C CNN
F 3 "" H 2350 4400 50  0001 C CNN
	1    2350 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2275 4400 2350 4400
Connection ~ 2350 4400
Wire Wire Line
	2350 4400 2425 4400
Wire Wire Line
	2275 4100 2350 4100
Connection ~ 2350 4100
Wire Wire Line
	2350 4100 2425 4100
Wire Wire Line
	1725 3800 2350 3800
Connection ~ 2350 3800
Wire Wire Line
	2350 3800 2450 3800
Text GLabel 2425 4100 2    50   Input ~ 0
clamped1
Text GLabel 1225 5975 0    50   Input ~ 0
square_ctl_buf1
Text GLabel 1225 6075 0    50   Input ~ 0
square_ctl_buf1
Text GLabel 1225 6175 0    50   Input ~ 0
clamped1
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J?
U 1 1 5DF1903C
P 1425 5975
F 0 "J?" H 1475 6300 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 1475 6301 50  0001 C CNN
F 2 "" H 1425 5975 50  0001 C CNN
F 3 "~" H 1425 5975 50  0001 C CNN
	1    1425 5975
	1    0    0    -1  
$EndComp
Text GLabel 1725 5975 2    50   Input ~ 0
square_ctl_buf2
Text GLabel 1725 6075 2    50   Input ~ 0
square_ctl_buf2
Text GLabel 1725 6175 2    50   Input ~ 0
clamped2
$Comp
L power:VEE #PWR?
U 1 1 5DF1DC09
P 1725 5250
F 0 "#PWR?" H 1725 5100 50  0001 C CNN
F 1 "VEE" H 1725 5425 50  0000 C CNN
F 2 "" H 1725 5250 50  0001 C CNN
F 3 "" H 1725 5250 50  0001 C CNN
	1    1725 5250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF1DC13
P 1725 5100
F 0 "R?" H 1825 5000 50  0000 C CNN
F 1 "1k" V 1725 5100 50  0000 C CNN
F 2 "" V 1655 5100 50  0001 C CNN
F 3 "~" H 1725 5100 50  0001 C CNN
	1    1725 5100
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DF1DC1D
P 1725 4550
F 0 "#PWR?" H 1725 4400 50  0001 C CNN
F 1 "VCC" H 1725 4725 50  0000 C CNN
F 2 "" H 1725 4550 50  0001 C CNN
F 3 "" H 1725 4550 50  0001 C CNN
	1    1725 4550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 5DF1DC27
P 1625 4750
F 0 "Q?" H 1816 4796 50  0000 L CNN
F 1 "BC547" H 1816 4705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1825 4675 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 1625 4750 50  0001 L CNN
	1    1625 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DF1DC31
P 1275 4750
F 0 "R?" V 1175 4750 50  0000 C CNN
F 1 "10k" V 1275 4750 50  0000 C CNN
F 2 "" V 1205 4750 50  0001 C CNN
F 3 "~" H 1275 4750 50  0001 C CNN
	1    1275 4750
	0    1    1    0   
$EndComp
Text GLabel 1125 4750 0    50   Input ~ 0
square_ctl2
$Comp
L Jumper:Jumper_2_Bridged JP?
U 1 1 5DF1DC3C
P 2650 4950
F 0 "JP?" H 2650 5053 50  0000 C CNN
F 1 "Jumper_2_Bridged" H 2650 5054 50  0001 C CNN
F 2 "" H 2650 4950 50  0001 C CNN
F 3 "~" H 2650 4950 50  0001 C CNN
	1    2650 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DF1DC46
P 3000 4950
F 0 "C?" V 2850 4950 50  0000 C CNN
F 1 "1n" V 3150 4950 50  0000 C CNN
F 2 "" H 3038 4800 50  0001 C CNN
F 3 "~" H 3000 4950 50  0001 C CNN
	1    3000 4950
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q?
U 1 1 5DF1DC50
P 3500 4950
F 0 "Q?" H 3706 4996 50  0000 L CNN
F 1 "2N7000" H 3706 4905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3700 4875 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 3500 4950 50  0001 L CNN
	1    3500 4950
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR?
U 1 1 5DF1DC5A
P 3600 5250
F 0 "#PWR?" H 3600 5100 50  0001 C CNN
F 1 "VEE" H 3618 5423 50  0000 C CNN
F 2 "" H 3600 5250 50  0001 C CNN
F 3 "" H 3600 5250 50  0001 C CNN
	1    3600 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 5250 3600 5150
$Comp
L power:VEE #PWR?
U 1 1 5DF1DC65
P 3150 5250
F 0 "#PWR?" H 3150 5100 50  0001 C CNN
F 1 "VEE" H 3168 5423 50  0000 C CNN
F 2 "" H 3150 5250 50  0001 C CNN
F 3 "" H 3150 5250 50  0001 C CNN
	1    3150 5250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF1DC6F
P 3150 5100
F 0 "R?" H 3050 5150 50  0000 C CNN
F 1 "1k" V 3150 5100 50  0000 C CNN
F 2 "" V 3080 5100 50  0001 C CNN
F 3 "~" H 3150 5100 50  0001 C CNN
	1    3150 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 4950 3300 4950
Connection ~ 3150 4950
Text GLabel 3650 4700 2    50   Input ~ 0
sync_out2
Wire Wire Line
	3650 4700 3600 4700
Wire Wire Line
	3600 4700 3600 4750
Text Notes 3100 4825 0    50   ~ 0
sync pulse\ngeneration
Connection ~ 1725 4950
Text GLabel 1925 4950 3    50   Input ~ 0
square_ctl_buf2
$Comp
L Device:R R?
U 1 1 5DF1DC81
P 2350 5100
F 0 "R?" H 2450 5000 50  0000 C CNN
F 1 "10k" V 2350 5100 50  0000 C CNN
F 2 "" V 2280 5100 50  0001 C CNN
F 3 "~" H 2350 5100 50  0001 C CNN
	1    2350 5100
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Zener D?
U 1 1 5DF1DC8B
P 2275 5400
F 0 "D?" V 2225 5225 50  0000 L CNN
F 1 "3V3" V 2325 5175 50  0000 L CNN
F 2 "" H 2275 5400 50  0001 C CNN
F 3 "~" H 2275 5400 50  0001 C CNN
	1    2275 5400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N5817 D?
U 1 1 5DF1DC95
P 2425 5400
F 0 "D?" V 2379 5479 50  0000 L CNN
F 1 "1N5817" V 2470 5479 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2425 5225 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 2425 5400 50  0001 C CNN
	1    2425 5400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF1DC9F
P 2350 5550
F 0 "#PWR?" H 2350 5300 50  0001 C CNN
F 1 "GND" H 2355 5377 50  0001 C CNN
F 2 "" H 2350 5550 50  0001 C CNN
F 3 "" H 2350 5550 50  0001 C CNN
	1    2350 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2275 5550 2350 5550
Connection ~ 2350 5550
Wire Wire Line
	2350 5550 2425 5550
Wire Wire Line
	2275 5250 2350 5250
Connection ~ 2350 5250
Wire Wire Line
	2350 5250 2425 5250
Wire Wire Line
	1725 4950 2350 4950
Connection ~ 2350 4950
Wire Wire Line
	2350 4950 2450 4950
Text GLabel 2425 5250 2    50   Input ~ 0
clamped2
Text Notes 2200 3750 0    50   ~ 0
clamp\nfor the\nSTM32\nmeasure-\nment pin
Wire Notes Line
	550  6400 550  3150
Wire Notes Line
	550  3150 4125 3150
Wire Notes Line
	4125 3150 4125 6400
Wire Notes Line
	4125 6400 550  6400
Text Notes 2400 6375 0    39   ~ 0
square_ctl swings between Vee and Vcc - 1.5V (circa).\nGNDREF is at (Vcc+Vee)/2, i.e. PE7 sees at least 3V for\nVcc-Vee = 9V.\nThe diodes protect the MCU pin from overvoltage (D1)\nand undervoltage (D2): The schottky diode D2 clamps\naway negative voltages (to approx. -200mV), while the\nzener diode D1 limits the voltage to 3.3V. That's within\nthe MCU specs.
Wire Notes Line
	-6275 -2200 -10225 -2200
Wire Notes Line
	-10225 -2200 -10225 150 
Wire Notes Line
	-10225 150  -6275 150 
Text GLabel 18075 5025 0    50   Input ~ 0
vco3_in
$Comp
L Device:R_POT R?
U 1 1 5E11C1A9
P 18125 5225
F 0 "R?" V 18010 5225 50  0000 C CNN
F 1 "10k" V 18125 5225 50  0000 C CNN
F 2 "" H 18125 5225 50  0001 C CNN
F 3 "~" H 18125 5225 50  0001 C CNN
	1    18125 5225
	1    0    0    -1  
$EndComp
Wire Wire Line
	18075 5025 18125 5025
Wire Wire Line
	18125 5025 18125 5075
$Comp
L power:GND #PWR?
U 1 1 5E11C1B5
P 18125 5375
F 0 "#PWR?" H 18125 5125 50  0001 C CNN
F 1 "GND" H 18130 5202 50  0000 C CNN
F 2 "" H 18125 5375 50  0001 C CNN
F 3 "" H 18125 5375 50  0001 C CNN
	1    18125 5375
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E11C1BF
P 18425 5225
F 0 "R?" V 18525 5250 50  0000 L CNN
F 1 "10k" V 18425 5150 50  0000 L CNN
F 2 "" V 18355 5225 50  0001 C CNN
F 3 "~" H 18425 5225 50  0001 C CNN
	1    18425 5225
	0    -1   1    0   
$EndComp
Wire Wire Line
	18575 5225 18575 4550
Connection ~ 18575 4550
$EndSCHEMATC
