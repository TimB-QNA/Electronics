EESchema Schematic File Version 2  date Sat 28 Sep 2013 22:20:46 BST
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
LIBS:1wire
LIBS:Batteries-cache
LIBS:I2C
LIBS:AdjRegulator-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "28 sep 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8100 4450 0    60   ~ 0
Power
Wire Wire Line
	3950 4600 4050 4600
Wire Wire Line
	3850 4850 3550 4850
Wire Wire Line
	3550 4850 3550 4800
Wire Wire Line
	3550 4800 3400 4800
Connection ~ 1300 3800
Wire Wire Line
	1600 3700 2600 3700
Connection ~ 6850 4450
Wire Wire Line
	6850 4450 6850 4350
Wire Wire Line
	6850 4350 6950 4350
Connection ~ 6400 3900
Wire Wire Line
	6400 3900 6400 4550
Wire Wire Line
	6400 4550 6950 4550
Wire Wire Line
	6500 4150 6950 4150
Wire Wire Line
	6950 4250 6500 4250
Connection ~ 8750 3150
Wire Wire Line
	8100 4350 8750 4350
Wire Wire Line
	8750 4350 8750 3150
Wire Wire Line
	8100 4150 8350 4150
Wire Wire Line
	8350 4150 8350 3900
Wire Wire Line
	2950 5250 2500 5250
Connection ~ 1300 3200
Wire Wire Line
	800  3200 2600 3200
Wire Wire Line
	2250 4500 2600 4500
Wire Wire Line
	2600 4700 2100 4700
Connection ~ 10300 3750
Wire Wire Line
	10300 3850 10300 3500
Wire Wire Line
	10300 3850 10250 3850
Wire Wire Line
	9850 3500 9850 3150
Wire Wire Line
	9850 3500 10300 3500
Wire Wire Line
	10250 3750 10300 3750
Wire Wire Line
	8500 3150 9350 3150
Connection ~ 8600 3150
Wire Wire Line
	8950 3900 5200 3900
Connection ~ 7900 3900
Connection ~ 8350 3900
Wire Wire Line
	8600 3150 8600 3200
Connection ~ 8950 3900
Wire Wire Line
	7650 3350 7700 3350
Wire Wire Line
	7700 3350 7700 3800
Wire Wire Line
	7700 3800 7650 3800
Connection ~ 7850 3150
Wire Wire Line
	7850 3150 7850 2650
Wire Wire Line
	7850 2650 7700 2650
Connection ~ 8350 3400
Wire Wire Line
	7650 3450 7800 3450
Wire Wire Line
	7800 3450 7800 3400
Wire Wire Line
	7800 3400 8500 3400
Wire Wire Line
	7900 3500 7900 3150
Wire Wire Line
	7900 3150 7650 3150
Connection ~ 5500 3300
Wire Wire Line
	5900 3300 5200 3300
Wire Wire Line
	5200 2900 6150 2900
Connection ~ 2600 3200
Connection ~ 5200 3300
Connection ~ 5500 2900
Wire Wire Line
	2600 3600 2600 3050
Wire Wire Line
	8950 3900 8950 3550
Wire Wire Line
	8500 3700 8600 3700
Wire Wire Line
	8500 3700 8500 3400
Wire Wire Line
	7700 3050 7700 3250
Wire Wire Line
	7700 3250 7650 3250
Wire Wire Line
	7150 3900 7150 3800
Connection ~ 7150 3900
Wire Wire Line
	5200 3900 5200 3100
Connection ~ 6550 3900
Connection ~ 6650 3900
Connection ~ 8600 3200
Connection ~ 5900 2900
Connection ~ 5200 3100
Connection ~ 1600 3200
Wire Wire Line
	3400 3600 3400 3700
Wire Wire Line
	6150 2900 6150 3150
Connection ~ 8950 3150
Wire Wire Line
	10250 3650 10250 3550
Wire Wire Line
	10250 3550 9350 3550
Wire Wire Line
	9350 3550 9350 3150
Wire Wire Line
	9850 3150 10250 3150
Wire Wire Line
	2600 3900 800  3900
Wire Wire Line
	800  3900 800  3700
Wire Wire Line
	2500 5350 2950 5350
Wire Wire Line
	2500 5450 2950 5450
Wire Wire Line
	8100 4250 8600 4250
Wire Wire Line
	8600 4250 8600 3700
Wire Wire Line
	6950 4050 6500 4050
Wire Wire Line
	6400 4450 6950 4450
Connection ~ 6400 4450
Wire Wire Line
	2250 4600 2600 4600
Wire Wire Line
	1300 3700 1300 3800
Wire Wire Line
	3850 4350 3550 4350
Wire Wire Line
	3550 4350 3550 4700
Wire Wire Line
	3550 4700 3400 4700
Wire Wire Line
	1300 3800 2600 3800
Text Notes 3950 4750 0    60   ~ 0
When using more than\n2 boards in a stck, other\nI/O lines can be used for\nchip select.
Text Notes 800  3000 0    60   ~ 0
Connect pull-up\nresistors on only\none board in stack
$Comp
L JUMPER3 JP2
U 1 1 50E89CD0
P 3850 4600
F 0 "JP2" H 3900 4500 40  0000 L CNN
F 1 "JUMPER3" H 3850 4700 40  0000 C CNN
	1    3850 4600
	0    -1   -1   0   
$EndComp
Text Label 2600 4800 0    60   ~ 0
0v
Text Label 3400 4500 0    60   ~ 0
0v
Text Label 3400 4200 0    60   ~ 0
0v
Text Label 2600 4000 0    60   ~ 0
0v
NoConn ~ 2250 4600
Text Notes 2350 5650 0    60   ~ 0
Wire temperature\nsensor below\nSMPS chip
NoConn ~ 8100 4650
NoConn ~ 8100 4550
NoConn ~ 6950 4650
Text Label 8100 4050 0    60   ~ 0
3v3
Text Label 6500 4050 0    60   ~ 0
SPI_CLK
Text Label 6500 4150 0    60   ~ 0
MOSI
Text Label 6500 4250 0    60   ~ 0
SPI_CS
$Comp
L MAX5437 U3
U 1 1 50E84B12
P 7550 4250
F 0 "U3" H 7550 3650 60  0000 C CNN
F 1 "MAX5437" H 7550 3750 60  0000 C CNN
	1    7550 4250
	1    0    0    -1  
$EndComp
Text Label 2500 5350 0    60   ~ 0
1Wire
Text Label 800  3850 0    60   ~ 0
1Wire
Text Label 2100 4700 0    60   ~ 0
SPI_CLK
Text Label 2250 4600 0    60   ~ 0
MISO
Text Label 2250 4500 0    60   ~ 0
MOSI
Text Label 4050 4600 0    60   ~ 0
SPI_CS
Text Label 10250 3350 0    60   ~ 0
0v
Text Label 9200 3650 0    60   ~ 0
0v
Text Label 9200 3750 0    60   ~ 0
0v
Text Label 6150 2900 0    60   ~ 0
Power
$Comp
L R R8
U 1 1 50E81724
P 9600 3150
F 0 "R8" V 9680 3150 50  0000 C CNN
F 1 "R03" V 9600 3150 50  0000 C CNN
	1    9600 3150
	0    -1   -1   0   
$EndComp
Text Label 9200 3950 2    60   ~ 0
SDA
Text Label 9200 4050 2    60   ~ 0
SCL
Text Label 10250 4050 0    60   ~ 0
3v3
Text Label 10250 3950 0    60   ~ 0
0v
$Comp
L INA_220 U6
U 1 1 50E81673
P 9750 3900
F 0 "U6" H 9750 3550 60  0000 C CNN
F 1 "INA_220" H 9750 3650 60  0000 C CNN
	1    9750 3900
	1    0    0    -1  
$EndComp
Text Notes 2850 3300 0    60   ~ 0
Stacking\nConnector
Text Notes 8850 4200 0    60   ~ 0
5v operation\n  R4=976R\n  R5=1k5\n\n3v3 operation\n  R4=2k7\n  R5=1k7\n\nVariable operation\n  Fit U3\n  Do not connect R4 or R5
Text Notes 5200 2800 0    60   ~ 0
Do NOT fit both resistors and potentiometer IC.
Text Notes 8450 2850 0    60   ~ 0
Close jumper when using\nresistors to feed 5V / 3v3\nto Raspberry PI
Text Label 3400 3800 0    60   ~ 0
0v
NoConn ~ 2600 4400
$Comp
L CONN_2 P4
U 1 1 50E80DD0
P 10600 3250
F 0 "P4" V 10550 3250 40  0000 C CNN
F 1 "CONN_2" V 10650 3250 40  0000 C CNN
	1    10600 3250
	1    0    0    -1  
$EndComp
Text Label 5200 3900 0    60   ~ 0
0v
NoConn ~ 7650 3550
$Comp
L R R4
U 1 1 50BF9EC0
P 8350 3650
F 0 "R4" V 8430 3650 50  0000 C CNN
F 1 "976R" V 8350 3650 50  0000 C CNN
	1    8350 3650
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 50BF9EB9
P 8600 3450
F 0 "R5" V 8680 3450 50  0000 C CNN
F 1 "1k5" V 8600 3450 50  0000 C CNN
	1    8600 3450
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C3
U 1 1 50BF9E3E
P 5900 3100
F 0 "C3" H 5950 3200 50  0000 L CNN
F 1 "22uF" H 5950 3000 50  0000 L CNN
	1    5900 3100
	1    0    0    -1  
$EndComp
$Comp
L LM22677 U1
U 1 1 50BF9D31
P 6900 3400
F 0 "U1" H 6650 3500 60  0000 C CNN
F 1 "LM22677" H 6700 3750 60  0000 C CNN
	1    6900 3400
	1    0    0    -1  
$EndComp
Text Label 2500 5450 0    60   ~ 0
0v
Text Label 2500 5250 0    60   ~ 0
3v3
$Comp
L R R7
U 1 1 50BE7532
P 800 3450
F 0 "R7" V 880 3450 50  0000 C CNN
F 1 "4k7" V 800 3450 50  0000 C CNN
	1    800  3450
	1    0    0    -1  
$EndComp
$Comp
L DS18B20 U8
U 1 1 50BE750E
P 3500 5650
F 0 "U8" H 3450 5700 60  0000 C CNN
F 1 "DS18B20" V 3700 5850 60  0000 C CNN
	1    3500 5650
	1    0    0    -1  
$EndComp
NoConn ~ 2600 4100
NoConn ~ 2600 4200
NoConn ~ 2600 4300
NoConn ~ 3400 4600
NoConn ~ 3400 4400
NoConn ~ 3400 4300
NoConn ~ 3400 4100
NoConn ~ 3400 4000
NoConn ~ 3400 3900
$Comp
L R R2
U 1 1 50BE59F6
P 1600 3450
F 0 "R2" V 1680 3450 50  0000 C CNN
F 1 "1k5" V 1600 3450 50  0000 C CNN
	1    1600 3450
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 50BE59F1
P 1300 3450
F 0 "R1" V 1380 3450 50  0000 C CNN
F 1 "1k5" V 1300 3450 50  0000 C CNN
	1    1300 3450
	1    0    0    -1  
$EndComp
Text Label 1650 3800 2    60   ~ 0
SCL
Text Label 1750 3700 0    60   ~ 0
SDA
$Comp
L C C5
U 1 1 50BE4335
P 8950 3350
F 0 "C5" H 9000 3450 50  0000 L CNN
F 1 "180uF" H 9000 3250 50  0000 L CNN
	1    8950 3350
	1    0    0    -1  
$EndComp
$Comp
L DIODESCH D1
U 1 1 50BE42E6
P 7900 3700
F 0 "D1" H 7900 3800 40  0000 C CNN
F 1 "45V, 5A" H 7900 3600 40  0000 C CNN
	1    7900 3700
	0    -1   -1   0   
$EndComp
$Comp
L INDUCTOR L1
U 1 1 50BE42B2
P 8200 3150
F 0 "L1" V 8150 3150 40  0000 C CNN
F 1 "4.7uH, 8.5A" V 8300 3150 40  0000 C CNN
	1    8200 3150
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 50BE4209
P 7400 3800
F 0 "R3" V 7480 3800 50  0000 C CNN
F 1 "61k9" V 7400 3800 50  0000 C CNN
	1    7400 3800
	0    -1   -1   0   
$EndComp
$Comp
L C C2
U 1 1 50BE41ED
P 7700 2850
F 0 "C2" H 7750 2950 50  0000 L CNN
F 1 "10nF" H 7750 2750 50  0000 L CNN
	1    7700 2850
	-1   0    0    1   
$EndComp
Text Label 3400 3600 0    60   ~ 0
5v
Text Label 2600 3400 0    60   ~ 0
3v3
$Comp
L C C1
U 1 1 50BE4142
P 5500 3100
F 0 "C1" H 5550 3200 50  0000 L CNN
F 1 "2.2uF" H 5550 3000 50  0000 L CNN
	1    5500 3100
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P1
U 1 1 50BE412A
P 4850 3000
F 0 "P1" V 4800 3000 40  0000 C CNN
F 1 "CONN_2" V 4900 3000 40  0000 C CNN
	1    4850 3000
	-1   0    0    1   
$EndComp
$Comp
L CONN_13X2 P2
U 1 1 50BE3BBD
P 3000 4200
F 0 "P2" H 3000 4900 60  0000 C CNN
F 1 "CONN_13X2" V 3000 4200 50  0000 C CNN
	1    3000 4200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
