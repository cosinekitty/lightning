EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
EELAYER 25 0
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
L +5V #PWR?
U 1 1 5B4BEC29
P 2500 1100
F 0 "#PWR?" H 2500 950 50  0001 C CNN
F 1 "+5V" H 2500 1240 50  0000 C CNN
F 2 "" H 2500 1100 50  0000 C CNN
F 3 "" H 2500 1100 50  0000 C CNN
	1    2500 1100
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5B4BECFC
P 2800 1500
F 0 "C?" H 2825 1600 50  0000 L CNN
F 1 "190nF" H 2825 1400 50  0000 L CNN
F 2 "" H 2838 1350 50  0000 C CNN
F 3 "" H 2800 1500 50  0000 C CNN
	1    2800 1500
	1    0    0    -1  
$EndComp
$Comp
L D_Photo_ALT D?
U 1 1 5B4BED4E
P 1800 1550
F 0 "D?" V 1820 1620 50  0000 L BNN
F 1 "IR" V 1760 1440 50  0000 C CNN
F 2 "" H 1750 1550 50  0000 C CNN
F 3 "" H 1750 1550 50  0000 C CNN
	1    1800 1550
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_EBC Q?
U 1 1 5B4BEE14
P 3750 2400
F 0 "Q?" H 3950 2450 50  0000 L CNN
F 1 "2N2222" H 3950 2350 50  0000 L CNN
F 2 "" H 3950 2500 50  0000 C CNN
F 3 "" H 3750 2400 50  0000 C CNN
	1    3750 2400
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5B4BF174
P 3000 2400
F 0 "R?" V 3080 2400 50  0000 C CNN
F 1 "R" V 3000 2400 50  0000 C CNN
F 2 "" V 2930 2400 50  0000 C CNN
F 3 "" H 3000 2400 50  0000 C CNN
	1    3000 2400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5B4BF24D
P 3850 2850
F 0 "#PWR?" H 3850 2600 50  0001 C CNN
F 1 "GND" H 3850 2700 50  0000 C CNN
F 2 "" H 3850 2850 50  0000 C CNN
F 3 "" H 3850 2850 50  0000 C CNN
	1    3850 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1350 2800 1350
Wire Wire Line
	1800 1650 2800 1650
Wire Wire Line
	2500 1100 2500 1350
Connection ~ 2500 1350
Wire Wire Line
	3150 2400 3550 2400
Wire Wire Line
	2500 1650 2500 3400
Wire Wire Line
	2500 2400 2850 2400
Connection ~ 2500 1650
Wire Wire Line
	3850 2600 3850 2850
$Comp
L Q_NPN_EBC Q?
U 1 1 5B4BF54E
P 1550 3400
F 0 "Q?" H 1750 3450 50  0000 L CNN
F 1 "2N2222" H 1750 3350 50  0000 L CNN
F 2 "" H 1750 3500 50  0000 C CNN
F 3 "" H 1550 3400 50  0000 C CNN
	1    1550 3400
	-1   0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5B4BF5E0
P 1450 2400
F 0 "R?" V 1530 2400 50  0000 C CNN
F 1 "R" V 1450 2400 50  0000 C CNN
F 2 "" V 1380 2400 50  0000 C CNN
F 3 "" H 1450 2400 50  0000 C CNN
	1    1450 2400
	1    0    0    -1  
$EndComp
$Comp
L LED_ALT D?
U 1 1 5B4BF72E
P 1450 2850
F 0 "D?" H 1450 2950 50  0000 C CNN
F 1 "green" H 1450 2750 50  0000 C CNN
F 2 "" H 1450 2850 50  0000 C CNN
F 3 "" H 1450 2850 50  0000 C CNN
	1    1450 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1450 2550 1450 2700
Wire Wire Line
	1450 3000 1450 3200
$Comp
L +5V #PWR?
U 1 1 5B4BF7E1
P 1450 2050
F 0 "#PWR?" H 1450 1900 50  0001 C CNN
F 1 "+5V" H 1450 2190 50  0000 C CNN
F 2 "" H 1450 2050 50  0000 C CNN
F 3 "" H 1450 2050 50  0000 C CNN
	1    1450 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2050 1450 2250
$Comp
L R R?
U 1 1 5B4BF81E
P 2200 3400
F 0 "R?" V 2280 3400 50  0000 C CNN
F 1 "R" V 2200 3400 50  0000 C CNN
F 2 "" V 2130 3400 50  0000 C CNN
F 3 "" H 2200 3400 50  0000 C CNN
	1    2200 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 3400 2350 3400
Connection ~ 2500 2400
Wire Wire Line
	2050 3400 1750 3400
$Comp
L GND #PWR?
U 1 1 5B4BF902
P 1450 3900
F 0 "#PWR?" H 1450 3650 50  0001 C CNN
F 1 "GND" H 1450 3750 50  0000 C CNN
F 2 "" H 1450 3900 50  0000 C CNN
F 3 "" H 1450 3900 50  0000 C CNN
	1    1450 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3600 1450 3900
$Comp
L LM555N U?
U 1 1 5B4BFF34
P 5950 4900
F 0 "U?" H 5550 5250 50  0000 L CNN
F 1 "LM555N" H 5550 4550 50  0000 L CNN
F 2 "" H 5950 4900 50  0000 C CNN
F 3 "" H 5950 4900 50  0000 C CNN
	1    5950 4900
	1    0    0    -1  
$EndComp
Text GLabel 4000 1700 2    60   Input ~ 0
GPIO#21
Wire Wire Line
	3850 2200 3850 1700
Wire Wire Line
	3850 1700 4000 1700
$EndSCHEMATC
