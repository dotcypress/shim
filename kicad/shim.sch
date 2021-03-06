EESchema Schematic File Version 4
LIBS:shim-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "shim"
Date "2019-05-31"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	1000 3000 1000 1000
Wire Notes Line
	1000 1000 4500 1000
Text Notes 1150 1350 0    157  ~ 0
Power Supply
$Comp
L Device:C C2
U 1 1 5CF26BE6
P 3300 2250
F 0 "C2" H 3415 2296 50  0000 L CNN
F 1 "10uF" H 3415 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3338 2100 50  0001 C CNN
F 3 "~" H 3300 2250 50  0001 C CNN
	1    3300 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J1
U 1 1 5CF2BEE7
P 1650 2150
F 0 "J1" H 1707 2617 50  0000 C CNN
F 1 "USB_B_Micro" H 1707 2526 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Amphenol_10103594-0001LF_Horizontal" H 1800 2100 50  0001 C CNN
F 3 "~" H 1800 2100 50  0001 C CNN
	1    1650 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2550 1650 2550
Wire Wire Line
	1650 2550 2150 2550
Connection ~ 1650 2550
$Comp
L power:GND #PWR01
U 1 1 5CF3EA3E
P 2900 2650
F 0 "#PWR01" H 2900 2400 50  0001 C CNN
F 1 "GND" H 2905 2477 50  0000 C CNN
F 2 "" H 2900 2650 50  0001 C CNN
F 3 "" H 2900 2650 50  0001 C CNN
	1    2900 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5CF414CD
P 8850 1900
F 0 "R2" V 8750 1850 50  0000 L CNN
F 1 "330R" V 8850 1800 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8780 1900 50  0001 C CNN
F 3 "~" H 8850 1900 50  0001 C CNN
	1    8850 1900
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5CF41EE4
P 8300 1900
F 0 "D1" H 8400 2000 50  0000 C CNN
F 1 "PWR" H 8200 2000 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 8300 1900 50  0001 C CNN
F 3 "~" H 8300 1900 50  0001 C CNN
	1    8300 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 1950 2150 1950
Wire Wire Line
	3200 1950 3300 1950
Wire Wire Line
	2150 2100 2150 1950
Connection ~ 2150 1950
Wire Wire Line
	3300 2400 3300 2550
Wire Wire Line
	2900 2250 2900 2550
Connection ~ 2900 2550
Wire Wire Line
	2900 2550 3300 2550
Wire Wire Line
	2900 2550 2900 2650
$Comp
L Connector_Generic:Conn_01x12 J3
U 1 1 5CFAAFA7
P 7750 4800
F 0 "J3" H 7750 3950 50  0000 C CNN
F 1 "PORT2" H 7750 4050 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 7750 4800 50  0001 C CNN
F 3 "~" H 7750 4800 50  0001 C CNN
	1    7750 4800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J2
U 1 1 5CFAD305
P 6950 4900
F 0 "J2" H 6900 5650 50  0000 L CNN
F 1 "PORT1" H 6850 5550 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 6950 4900 50  0001 C CNN
F 3 "~" H 6950 4900 50  0001 C CNN
	1    6950 4900
	1    0    0    1   
$EndComp
Text Label 6750 4300 2    50   ~ 0
A0
Text Label 6750 4400 2    50   ~ 0
A1
Text Label 6750 4500 2    50   ~ 0
A2
Text Label 6750 4600 2    50   ~ 0
A3
Text Label 6750 4700 2    50   ~ 0
A4
Text Label 6750 4800 2    50   ~ 0
A5
Text Label 6750 4900 2    50   ~ 0
A6
Text Label 6750 5000 2    50   ~ 0
A7
Text Label 6750 5100 2    50   ~ 0
A8
Text Label 6750 5200 2    50   ~ 0
A9
Text Label 6750 5300 2    50   ~ 0
A10
Wire Notes Line
	6000 5500 6000 3500
Wire Notes Line
	6000 3500 9500 3500
Text Notes 6150 3850 0    157  ~ 0
Headers
Text Label 7550 4400 2    50   ~ 0
+5V
Text Label 7550 4500 2    50   ~ 0
+3.3V
Text Label 7550 5200 2    50   ~ 0
A15
Text Label 7550 4600 2    50   ~ 0
B9
Text Label 7550 4700 2    50   ~ 0
B8
Text Label 7550 4800 2    50   ~ 0
B7
Text Label 7550 4900 2    50   ~ 0
B6
Text Label 7550 5000 2    50   ~ 0
B3
$Comp
L power:+3.3V #PWR02
U 1 1 5CF48265
P 3300 1850
F 0 "#PWR02" H 3300 1700 50  0001 C CNN
F 1 "+3.3V" H 3200 2000 50  0000 L CNN
F 2 "" H 3300 1850 50  0001 C CNN
F 3 "" H 3300 1850 50  0001 C CNN
	1    3300 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5D0389BA
P 2150 1850
F 0 "#PWR03" H 2150 1700 50  0001 C CNN
F 1 "+5V" H 2150 2000 50  0000 C CNN
F 2 "" H 2150 1850 50  0001 C CNN
F 3 "" H 2150 1850 50  0001 C CNN
	1    2150 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1850 2150 1950
Text Label 8400 6300 2    50   ~ 0
PWM4
Text Label 8400 5700 2    50   ~ 0
PWM3
Text Label 8400 5100 2    50   ~ 0
PWM2
Text Label 8400 4500 2    50   ~ 0
PWM1
$Comp
L Connector_Generic:Conn_01x03 J8
U 1 1 5D04626C
P 8600 6200
F 0 "J8" H 8700 6100 50  0000 L CNN
F 1 "PWM4" H 8700 6200 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8600 6200 50  0001 C CNN
F 3 "~" H 8600 6200 50  0001 C CNN
	1    8600 6200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J7
U 1 1 5D045896
P 8600 5600
F 0 "J7" H 8700 5500 50  0000 L CNN
F 1 "PWM3" H 8700 5600 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8600 5600 50  0001 C CNN
F 3 "~" H 8600 5600 50  0001 C CNN
	1    8600 5600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J5
U 1 1 5D043416
P 8600 4400
F 0 "J5" H 8700 4300 50  0000 L CNN
F 1 "PWM1" H 8700 4400 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8600 4400 50  0001 C CNN
F 3 "~" H 8600 4400 50  0001 C CNN
	1    8600 4400
	1    0    0    -1  
$EndComp
Text Label 6750 5400 2    50   ~ 0
GND
Text Label 7550 5100 2    50   ~ 0
B2
Text Label 8400 6100 2    50   ~ 0
GND
Text Label 8400 5500 2    50   ~ 0
GND
Text Label 8400 4300 2    50   ~ 0
GND
Text Label 3850 1950 0    50   ~ 0
+3.3V
Text Label 2350 1750 0    50   ~ 0
+5V
Text Label 8400 5000 2    50   ~ 0
+5V
Text Label 8400 4400 2    50   ~ 0
+5V
Text Label 8400 5600 2    50   ~ 0
+5V
Text Label 8400 6200 2    50   ~ 0
+5V
Text Label 3850 2550 0    50   ~ 0
GND
Text Label 7550 4300 2    50   ~ 0
GND
Text Label 7550 5300 2    50   ~ 0
A12
Text Label 7550 5400 2    50   ~ 0
A11
Wire Wire Line
	3300 1850 3300 1950
Connection ~ 3300 1950
Wire Wire Line
	3300 1950 3300 2100
Wire Notes Line
	1000 3500 4500 3500
Text Notes 1150 3850 0    157  ~ 0
MCU
Wire Notes Line
	6000 3000 6000 1000
Wire Notes Line
	6000 1000 9500 1000
Text Notes 6150 1350 0    157  ~ 0
LEDS & BUTTONS\n
$Comp
L Device:R R3
U 1 1 5D0BC32E
P 8850 2250
F 0 "R3" V 8750 2200 50  0000 L CNN
F 1 "330R" V 8850 2150 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8780 2250 50  0001 C CNN
F 3 "~" H 8850 2250 50  0001 C CNN
	1    8850 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5D0BCBC0
P 8850 2550
F 0 "R4" V 8750 2500 50  0000 L CNN
F 1 "330R" V 8850 2450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8780 2550 50  0001 C CNN
F 3 "~" H 8850 2550 50  0001 C CNN
	1    8850 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 2250 9100 2250
$Comp
L power:GND #PWR011
U 1 1 5D0BDDC3
P 7050 3100
F 0 "#PWR011" H 7050 2850 50  0001 C CNN
F 1 "GND" H 7055 2927 50  0000 C CNN
F 2 "" H 7050 3100 50  0001 C CNN
F 3 "" H 7050 3100 50  0001 C CNN
	1    7050 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5D0C1978
P 8300 2250
F 0 "D2" H 8400 2350 50  0000 C CNN
F 1 "LD1" H 8200 2350 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 8300 2250 50  0001 C CNN
F 3 "~" H 8300 2250 50  0001 C CNN
	1    8300 2250
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 5D0C7F7F
P 8300 2550
F 0 "D3" H 8400 2650 50  0000 C CNN
F 1 "LD2" H 8200 2650 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 8300 2550 50  0001 C CNN
F 3 "~" H 8300 2550 50  0001 C CNN
	1    8300 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	9000 2550 9100 2550
Wire Wire Line
	9000 1900 9100 1900
Wire Wire Line
	8450 1900 8700 1900
Wire Wire Line
	8450 2250 8700 2250
Wire Wire Line
	8450 2550 8700 2550
Text Label 8150 2250 2    50   ~ 0
LED1
Text Label 8150 2550 2    50   ~ 0
LED2
$Comp
L power:+3.3V #PWR010
U 1 1 5D0D91D8
P 7550 1750
F 0 "#PWR010" H 7550 1600 50  0001 C CNN
F 1 "+3.3V" H 7565 1923 50  0000 C CNN
F 2 "" H 7550 1750 50  0001 C CNN
F 3 "" H 7550 1750 50  0001 C CNN
	1    7550 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5D0F8BE0
P 3050 6100
F 0 "#PWR05" H 3050 5950 50  0001 C CNN
F 1 "+3.3V" H 2900 6250 50  0000 C CNN
F 2 "" H 3050 6100 50  0001 C CNN
F 3 "" H 3050 6100 50  0001 C CNN
	1    3050 6100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5D0FEFEE
P 2950 6100
F 0 "#PWR06" H 2950 5850 50  0001 C CNN
F 1 "GND" H 3100 5950 50  0000 C CNN
F 2 "" H 2950 6100 50  0001 C CNN
F 3 "" H 2950 6100 50  0001 C CNN
	1    2950 6100
	-1   0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U1
U 1 1 5CF250BA
P 2900 1950
F 0 "U1" H 2900 2192 50  0000 C CNN
F 1 "LD1117S33TR" H 2900 2101 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2900 2150 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 3000 1700 50  0001 C CNN
	1    2900 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5CF26172
P 2150 2250
F 0 "C1" H 2265 2296 50  0000 L CNN
F 1 "100nF" H 2265 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2188 2100 50  0001 C CNN
F 3 "~" H 2150 2250 50  0001 C CNN
	1    2150 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5D11C9BB
P 3750 2250
F 0 "C4" H 3865 2296 50  0000 L CNN
F 1 "100nF" H 3865 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3788 2100 50  0001 C CNN
F 3 "~" H 3750 2250 50  0001 C CNN
	1    3750 2250
	1    0    0    -1  
$EndComp
$Comp
L shim:STM32G070KBT-STM32G070 U2
U 1 1 5CF25CD1
P 2950 5100
F 0 "U2" H 3450 6100 50  0000 C CNN
F 1 "STM32G070KBT" H 3200 6000 50  0000 C CNN
F 2 "Package_QFP:LQFP-32_7x7mm_P0.8mm" H 2900 4050 50  0001 R CNN
F 3 "https://www.st.com/resource/en/reference_manual/dm00463896.pdf" H 2950 5100 50  0001 C CNN
	1    2950 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2550 3750 2550
Wire Wire Line
	3750 2550 3750 2400
Connection ~ 3300 2550
Wire Wire Line
	3750 2100 3750 1950
Wire Wire Line
	3750 1950 3300 1950
Text Label 3450 4400 0    50   ~ 0
A0
Text Label 3450 4500 0    50   ~ 0
A1
Text Label 3450 4600 0    50   ~ 0
A2
Text Label 3450 4700 0    50   ~ 0
A3
Text Label 3450 4800 0    50   ~ 0
A4
Text Label 3450 4900 0    50   ~ 0
A5
Text Label 5350 5200 0    50   ~ 0
A6
Text Label 5350 5300 0    50   ~ 0
A7
Text Label 3450 5200 0    50   ~ 0
A8
Text Label 3450 5300 0    50   ~ 0
A9
Text Label 3450 5400 0    50   ~ 0
A10
Text Label 3450 5500 0    50   ~ 0
A11
Text Label 3450 5600 0    50   ~ 0
A12
Text Label 3450 5700 0    50   ~ 0
SWDIO
Text Label 3450 5800 0    50   ~ 0
SWDCLK
Text Label 3450 5900 0    50   ~ 0
A15
Text Label 2350 4500 2    50   ~ 0
PWM4
Text Label 2350 5100 2    50   ~ 0
B7
Text Label 2350 5000 2    50   ~ 0
B6
Text Label 2350 4900 2    50   ~ 0
PWM2
Text Label 2350 4800 2    50   ~ 0
PWM1
Text Label 2350 4700 2    50   ~ 0
B3
Text Label 2350 4600 2    50   ~ 0
B2
Text Label 2350 4400 2    50   ~ 0
PWM3
Text Label 2350 5600 2    50   ~ 0
LED1
Text Label 2350 5500 2    50   ~ 0
BTN1
Text Label 2350 5700 2    50   ~ 0
LED2
Text Label 2350 5300 2    50   ~ 0
B9
Text Label 2350 5200 2    50   ~ 0
B8
Text Label 7150 2450 2    50   ~ 0
BTN1
Wire Notes Line
	1000 5500 1000 3500
$Comp
L Device:R R1
U 1 1 5CF516B4
P 6750 2150
F 0 "R1" H 6800 2200 50  0000 L CNN
F 1 "10K" H 6800 2100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6680 2150 50  0001 C CNN
F 3 "~" H 6750 2150 50  0001 C CNN
	1    6750 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5CF516BA
P 6750 2650
F 0 "C3" H 6500 2650 50  0000 L CNN
F 1 "100nF" H 6500 2750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6788 2500 50  0001 C CNN
F 3 "~" H 6750 2650 50  0001 C CNN
	1    6750 2650
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5CF516C0
P 6450 2650
F 0 "SW1" V 6500 2600 50  0000 R CNN
F 1 "RST" V 6405 2602 50  0000 R CNN
F 2 "shim:SW" H 6450 2850 50  0001 C CNN
F 3 "" H 6450 2850 50  0001 C CNN
	1    6450 2650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 5CF516D8
P 7700 2150
F 0 "R5" H 7750 2200 50  0000 L CNN
F 1 "10K" H 7750 2100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7630 2150 50  0001 C CNN
F 3 "~" H 7700 2150 50  0001 C CNN
	1    7700 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5CF516DE
P 7700 2650
F 0 "C5" H 7450 2650 50  0000 L CNN
F 1 "100nF" H 7450 2750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7738 2500 50  0001 C CNN
F 3 "~" H 7700 2650 50  0001 C CNN
	1    7700 2650
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5CF516E4
P 7350 2650
F 0 "SW2" V 7396 2602 50  0000 R CNN
F 1 "BTN1" V 7305 2602 50  0000 R CNN
F 2 "shim:SW" H 7350 2850 50  0001 C CNN
F 3 "" H 7350 2850 50  0001 C CNN
	1    7350 2650
	0    -1   -1   0   
$EndComp
Text Label 6250 2450 2    50   ~ 0
RST
Text Label 2350 5900 2    50   ~ 0
RST
Wire Wire Line
	7550 1900 7700 1900
Wire Wire Line
	7550 1900 7550 1750
Wire Wire Line
	7050 2900 7050 3100
Connection ~ 9100 2250
Connection ~ 9100 2550
Wire Wire Line
	9100 2550 9100 2900
Wire Wire Line
	9100 1900 9100 2250
Wire Wire Line
	9100 2250 9100 2550
Wire Wire Line
	6450 2900 6450 2850
Wire Wire Line
	6750 2800 6750 2900
Connection ~ 6750 2900
Wire Wire Line
	6750 2900 6450 2900
Wire Wire Line
	6750 2500 6750 2450
Connection ~ 6750 2450
Wire Wire Line
	6750 2450 6750 2300
Connection ~ 6450 2450
Wire Wire Line
	6450 2450 6750 2450
Wire Wire Line
	6250 2450 6450 2450
Wire Wire Line
	7350 2450 7150 2450
Wire Wire Line
	7350 2450 7700 2450
Wire Wire Line
	7700 2450 7700 2500
Connection ~ 7350 2450
Wire Wire Line
	6750 2900 7050 2900
Wire Wire Line
	7350 2850 7350 2900
Connection ~ 7350 2900
Wire Wire Line
	7700 2800 7700 2900
Connection ~ 7700 2900
Wire Wire Line
	7700 2900 9100 2900
Wire Wire Line
	7700 2300 7700 2450
Connection ~ 7700 2450
Wire Wire Line
	7700 2000 7700 1900
Connection ~ 7700 1900
Wire Wire Line
	7700 1900 8150 1900
Connection ~ 7050 2900
Wire Wire Line
	7050 2900 7350 2900
Wire Wire Line
	7350 2900 7700 2900
Wire Wire Line
	7550 1900 6750 1900
Wire Wire Line
	6750 1900 6750 2000
Connection ~ 7550 1900
$Comp
L Connector_Generic:Conn_01x03 J6
U 1 1 5D044DBB
P 8600 5000
F 0 "J6" H 8700 4900 50  0000 L CNN
F 1 "PWM2" H 8700 5000 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8600 5000 50  0001 C CNN
F 3 "~" H 8600 5000 50  0001 C CNN
	1    8600 5000
	1    0    0    -1  
$EndComp
Text Label 8400 4900 2    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5CFD4ECA
P 7750 5950
F 0 "J4" H 7750 5500 50  0000 C CNN
F 1 "SWD" H 7750 5600 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7750 5950 50  0001 C CNN
F 3 "~" H 7750 5950 50  0001 C CNN
	1    7750 5950
	1    0    0    -1  
$EndComp
Text Label 7550 5850 2    50   ~ 0
GND
Text Label 7550 5950 2    50   ~ 0
+3.3V
Text Label 7550 6050 2    50   ~ 0
SWDCLK
Text Label 7550 6150 2    50   ~ 0
SWDIO
Text Label 6750 5950 2    50   ~ 0
BTN1
Text Label 6750 5850 2    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_01x02 J9
U 1 1 5D1BBA50
P 6950 5850
F 0 "J9" H 6900 5500 50  0000 L CNN
F 1 "Button" H 6850 5600 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x01_P1.27mm_Vertical" H 6950 5850 50  0001 C CNN
F 3 "~" H 6950 5850 50  0001 C CNN
	1    6950 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2550 3750 2550
Connection ~ 3750 2550
Wire Wire Line
	3850 1950 3750 1950
Connection ~ 3750 1950
Wire Wire Line
	2150 1950 2350 1950
Wire Wire Line
	2150 2550 2900 2550
Connection ~ 2150 2550
Wire Wire Line
	2350 1750 2350 1950
Connection ~ 2350 1950
Wire Wire Line
	2350 1950 2600 1950
Wire Wire Line
	2150 2500 2150 2550
Wire Wire Line
	2150 2400 2150 2550
$EndSCHEMATC
