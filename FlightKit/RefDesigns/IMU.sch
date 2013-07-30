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
Sheet 1 5
Title ""
Date "30 jul 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6950 3600 2    60   Input ~ 0
IMU_CLK
Text HLabel 6950 3500 2    60   Input ~ 0
IMU_DATA
Text HLabel 4750 3700 0    60   Input ~ 0
3v3
Text HLabel 4750 3500 0    60   Input ~ 0
GND
Wire Wire Line
	4750 3500 5050 3500
Wire Wire Line
	5050 4200 4350 4200
Wire Wire Line
	4350 4200 4350 4400
Connection ~ 4800 4800
Wire Wire Line
	5050 4300 4600 4300
Wire Wire Line
	4600 4300 4600 4800
Wire Wire Line
	6650 3900 6750 3900
Connection ~ 7050 4600
Wire Wire Line
	7050 4550 7050 4600
Wire Wire Line
	7250 4100 6650 4100
Connection ~ 6700 4200
Wire Wire Line
	6650 4400 6700 4400
Wire Wire Line
	6700 4400 6700 4100
Wire Wire Line
	6950 3600 6650 3600
Wire Wire Line
	6650 3500 6950 3500
Wire Wire Line
	4750 3700 5050 3700
Wire Wire Line
	6700 4200 6650 4200
Connection ~ 6700 4100
Wire Wire Line
	7250 4600 6650 4600
Wire Wire Line
	7050 4150 7050 4100
Connection ~ 7050 4100
Wire Wire Line
	7150 3900 7150 4100
Connection ~ 7150 4100
Wire Wire Line
	4800 4400 5050 4400
Wire Wire Line
	4350 4800 5050 4800
Connection ~ 4600 4800
Wire Wire Line
	5050 4500 5000 4500
Wire Wire Line
	5000 4500 5000 4800
Connection ~ 5000 4800
Wire Wire Line
	4950 3700 4950 4200
Connection ~ 4950 4200
Connection ~ 4950 3700
$Comp
L C C301
U 1 1 51F23554
P 4350 4600
F 0 "C301" H 4400 4700 50  0000 L CNN
F 1 "10nF" H 4400 4500 50  0000 L CNN
	1    4350 4600
	1    0    0    -1  
$EndComp
Text Label 5050 4800 0    60   ~ 0
GND
$Comp
L C C302
U 1 1 51F23512
P 4800 4600
F 0 "C302" H 4850 4700 50  0000 L CNN
F 1 "0.1uF" H 4850 4500 50  0000 L CNN
	1    4800 4600
	1    0    0    -1  
$EndComp
$Comp
L C C303
U 1 1 51F234ED
P 6950 3900
F 0 "C303" H 7000 4000 50  0000 L CNN
F 1 "2.2nF" H 7000 3800 50  0000 L CNN
	1    6950 3900
	0    -1   -1   0   
$EndComp
$Comp
L C C304
U 1 1 51F234B5
P 7050 4350
F 0 "C304" H 7100 4450 50  0000 L CNN
F 1 "0.1uF" H 7100 4250 50  0000 L CNN
	1    7050 4350
	1    0    0    -1  
$EndComp
Text Label 7250 4600 0    60   ~ 0
3v3
Text Label 7250 4100 0    60   ~ 0
GND
$Comp
L MPU9150 U301
U 1 1 51F2344A
P 5900 4000
F 0 "U301" H 5900 4050 60  0000 C CNN
F 1 "MPU9150" H 5900 3950 60  0000 C CNN
	1    5900 4000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
