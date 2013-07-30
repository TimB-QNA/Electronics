EESchema Schematic File Version 2  date Tue 30 Jul 2013 17:36:58 BST
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
LIBS:special
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
LIBS:3v3Supply-cache
LIBS:at91sam3x
LIBS:CortexM3-cache
LIBS:GPS-cache
LIBS:IMU-cache
LIBS:mpu9150
LIBS:RefDesigns
LIBS:venus638flp
LIBS:FlightLogger-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 3 5
Title ""
Date "30 jul 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 7550 3100 2    60   Input ~ 0
3v3
Text HLabel 3800 4800 0    60   Input ~ 0
GND
Text HLabel 4000 2850 0    60   Input ~ 0
VBAT
Connection ~ 7250 3100
Wire Wire Line
	7550 3100 7050 3100
Wire Wire Line
	7050 3100 7050 3900
Wire Wire Line
	7050 3900 6300 3900
Wire Wire Line
	6300 3200 6300 3100
Connection ~ 4550 2850
Wire Wire Line
	4550 2850 4550 4000
Wire Wire Line
	4550 4000 4900 4000
Connection ~ 4750 4200
Wire Wire Line
	4900 4200 4750 4200
Wire Wire Line
	4750 3800 4900 3800
Connection ~ 4350 2850
Wire Wire Line
	4000 2850 4900 2850
Connection ~ 4350 4800
Wire Wire Line
	4350 4150 4350 4800
Wire Wire Line
	4900 4800 3800 4800
Connection ~ 4900 3200
Wire Wire Line
	4900 2850 4900 3300
Connection ~ 4900 3100
Connection ~ 4900 4700
Wire Wire Line
	4350 2850 4350 3750
Wire Wire Line
	4750 3350 4750 3300
Wire Wire Line
	4750 3300 4900 3300
Wire Wire Line
	4750 4800 4750 3750
Connection ~ 4750 4800
Connection ~ 4750 3800
Wire Wire Line
	4900 4400 4750 4400
Connection ~ 4750 4400
Wire Wire Line
	4900 4600 4900 5000
Connection ~ 4900 4800
Wire Wire Line
	6300 3100 6450 3100
Wire Wire Line
	7250 3500 7250 4600
Wire Wire Line
	7250 4600 6300 4600
Wire Wire Line
	4900 5000 6300 5000
Wire Wire Line
	6300 5000 6300 4600
Connection ~ 6300 4700
Connection ~ 5600 5000
NoConn ~ 6300 4300
NoConn ~ 6300 3700
$Comp
L C C503
U 1 1 51F0D816
P 7250 3300
F 0 "C503" H 7300 3400 50  0000 L CNN
F 1 "22uF" H 7300 3200 50  0000 L CNN
	1    7250 3300
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L501
U 1 1 51F0D80E
P 6750 3100
F 0 "L501" V 6700 3100 40  0000 C CNN
F 1 "6.8uH" V 6850 3100 40  0000 C CNN
	1    6750 3100
	0    -1   -1   0   
$EndComp
$Comp
L C C502
U 1 1 51F0D7A8
P 4750 3550
F 0 "C502" H 4800 3650 50  0000 L CNN
F 1 "1uF" H 4800 3450 50  0000 L CNN
	1    4750 3550
	1    0    0    -1  
$EndComp
$Comp
L C C501
U 1 1 51F0D772
P 4350 3950
F 0 "C501" H 4400 4050 50  0000 L CNN
F 1 "10uF" H 4400 3850 50  0000 L CNN
	1    4350 3950
	1    0    0    -1  
$EndComp
$Comp
L TPS6211X-RSA U501
U 1 1 51F0D72A
P 5600 3900
F 0 "U501" H 5105 4840 50  0000 L BNN
F 1 "TPS6211X-RSA" H 5105 2905 50  0000 L BNN
F 2 "m-pad-2.1-QFN16" H 5600 4050 50  0001 C CNN
	1    5600 3900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
