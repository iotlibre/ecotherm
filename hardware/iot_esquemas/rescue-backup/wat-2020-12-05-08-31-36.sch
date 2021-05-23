EESchema Schematic File Version 2
LIBS:wat-rescue
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
LIBS:recom-rd
LIBS:RO-1224S
LIBS:mp-1584
LIBS:nano
LIBS:wat-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "EcoPower"
Date ""
Rev ""
Comp "iotlibre"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR01
U 1 1 584D06FF
P 1275 1010
F 0 "#PWR01" H 1275 760 50  0001 C CNN
F 1 "GND" H 1275 860 50  0000 C CNN
F 2 "" H 1275 1010 50  0000 C CNN
F 3 "" H 1275 1010 50  0000 C CNN
	1    1275 1010
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 584D0E54
P 1275 960
F 0 "#FLG02" H 1275 1055 50  0001 C CNN
F 1 "PWR_FLAG" H 1275 1140 50  0000 C CNN
F 2 "" H 1275 960 50  0000 C CNN
F 3 "" H 1275 960 50  0000 C CNN
	1    1275 960 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 5857A9BC
P 1775 960
F 0 "#FLG03" H 1775 1055 50  0001 C CNN
F 1 "PWR_FLAG" H 1775 1140 50  0000 C CNN
F 2 "" H 1775 960 50  0000 C CNN
F 3 "" H 1775 960 50  0000 C CNN
	1    1775 960 
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 5857A9F3
P 1775 1110
F 0 "#PWR04" H 1775 960 50  0001 C CNN
F 1 "VCC" H 1775 1260 50  0000 C CNN
F 2 "" H 1775 1110 50  0000 C CNN
F 3 "" H 1775 1110 50  0000 C CNN
	1    1775 1110
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 5D4CAF0F
P 1195 5625
F 0 "P2" H 1195 5775 50  0000 C CNN
F 1 "PINZA_1" V 1295 5625 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 1195 5625 50  0001 C CNN
F 3 "" H 1195 5625 50  0000 C CNN
	1    1195 5625
	-1   0    0    1   
$EndComp
Text Label 2195 5990 0    60   ~ 0
v_referencia
$Comp
L C C2
U 1 1 5D4CAF07
P 1625 5785
F 0 "C2" H 1650 5885 50  0000 L CNN
F 1 "100nF" H 1650 5685 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1663 5635 50  0001 C CNN
F 3 "" H 1625 5785 50  0000 C CNN
	1    1625 5785
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5D4CAF01
P 2085 5775
F 0 "R3" V 2165 5775 50  0000 C CNN
F 1 "10k" V 2085 5775 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 2015 5775 50  0001 C CNN
F 3 "" H 2085 5775 50  0000 C CNN
	1    2085 5775
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 5D4D18F7
P 3115 5625
F 0 "P3" H 3115 5775 50  0000 C CNN
F 1 "PINZA_2" V 3215 5625 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 3115 5625 50  0001 C CNN
F 3 "" H 3115 5625 50  0000 C CNN
	1    3115 5625
	-1   0    0    1   
$EndComp
Text Label 4085 5575 0    60   ~ 0
intensidad_2
Text Label 4115 5990 0    60   ~ 0
v_referencia
$Comp
L C C6
U 1 1 5D4D18FF
P 3545 5785
F 0 "C6" H 3570 5885 50  0000 L CNN
F 1 "100nF" H 3570 5685 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3583 5635 50  0001 C CNN
F 3 "" H 3545 5785 50  0000 C CNN
	1    3545 5785
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5D4D1905
P 4005 5775
F 0 "R5" V 4085 5775 50  0000 C CNN
F 1 "10k" V 4005 5775 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 3935 5775 50  0001 C CNN
F 3 "" H 4005 5775 50  0000 C CNN
	1    4005 5775
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P4
U 1 1 5D4D3DC6
P 5035 5625
F 0 "P4" H 5035 5775 50  0000 C CNN
F 1 "PINZA_3" V 5135 5625 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 5035 5625 50  0001 C CNN
F 3 "" H 5035 5625 50  0000 C CNN
	1    5035 5625
	-1   0    0    1   
$EndComp
Text Label 6005 5575 0    60   ~ 0
intensidad_3
Text Label 6035 5990 0    60   ~ 0
v_referencia
$Comp
L C C8
U 1 1 5D4D3DCE
P 5465 5785
F 0 "C8" H 5490 5885 50  0000 L CNN
F 1 "100nF" H 5490 5685 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5503 5635 50  0001 C CNN
F 3 "" H 5465 5785 50  0000 C CNN
	1    5465 5785
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5D4D3DD4
P 5925 5775
F 0 "R7" V 6005 5775 50  0000 C CNN
F 1 "10k" V 5925 5775 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 5855 5775 50  0001 C CNN
F 3 "" H 5925 5775 50  0000 C CNN
	1    5925 5775
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P5
U 1 1 5D4D3DE6
P 6955 5625
F 0 "P5" H 6955 5775 50  0000 C CNN
F 1 "PINZA_4" V 7055 5625 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 6955 5625 50  0001 C CNN
F 3 "" H 6955 5625 50  0000 C CNN
	1    6955 5625
	-1   0    0    1   
$EndComp
Text Label 7925 5575 0    60   ~ 0
intensidad_4
Text Label 7955 5990 0    60   ~ 0
v_referencia
$Comp
L C C9
U 1 1 5D4D3DEE
P 7385 5785
F 0 "C9" H 7410 5885 50  0000 L CNN
F 1 "100nF" H 7410 5685 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 7423 5635 50  0001 C CNN
F 3 "" H 7385 5785 50  0000 C CNN
	1    7385 5785
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5D4D3DF4
P 7845 5775
F 0 "R8" V 7925 5775 50  0000 C CNN
F 1 "10k" V 7845 5775 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 7775 5775 50  0001 C CNN
F 3 "" H 7845 5775 50  0000 C CNN
	1    7845 5775
	1    0    0    -1  
$EndComp
Text Label 2165 5575 0    60   ~ 0
intensidad_1
$Comp
L CONN_01X02 P6
U 1 1 5D4C6526
P 8920 5625
F 0 "P6" H 8920 5775 50  0000 C CNN
F 1 "PINZA_5" V 9020 5625 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 8920 5625 50  0001 C CNN
F 3 "" H 8920 5625 50  0000 C CNN
	1    8920 5625
	-1   0    0    1   
$EndComp
Text Label 9890 5575 0    60   ~ 0
intensidad_5
Text Label 9920 5990 0    60   ~ 0
v_referencia
$Comp
L C C11
U 1 1 5D4C652E
P 9350 5785
F 0 "C11" H 9375 5885 50  0000 L CNN
F 1 "100nF" H 9375 5685 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 9388 5635 50  0001 C CNN
F 3 "" H 9350 5785 50  0000 C CNN
	1    9350 5785
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5D4C6534
P 9810 5775
F 0 "R9" V 9890 5775 50  0000 C CNN
F 1 "10k" V 9810 5775 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 9740 5775 50  0001 C CNN
F 3 "" H 9810 5775 50  0000 C CNN
	1    9810 5775
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P7
U 1 1 5D4C6F0D
P 1195 6585
F 0 "P7" H 1195 6735 50  0000 C CNN
F 1 "PINZA_6" V 1295 6585 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 1195 6585 50  0001 C CNN
F 3 "" H 1195 6585 50  0000 C CNN
	1    1195 6585
	-1   0    0    1   
$EndComp
Text Label 2195 6950 0    60   ~ 0
v_referencia
$Comp
L C C3
U 1 1 5D4C6F14
P 1625 6745
F 0 "C3" H 1650 6845 50  0000 L CNN
F 1 "100nF" H 1650 6645 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1663 6595 50  0001 C CNN
F 3 "" H 1625 6745 50  0000 C CNN
	1    1625 6745
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5D4C6F1A
P 2085 6735
F 0 "R4" V 2165 6735 50  0000 C CNN
F 1 "10k" V 2085 6735 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 2015 6735 50  0001 C CNN
F 3 "" H 2085 6735 50  0000 C CNN
	1    2085 6735
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P8
U 1 1 5D4C6F2B
P 3115 6585
F 0 "P8" H 3115 6735 50  0000 C CNN
F 1 "PINZA_7" V 3215 6585 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 3115 6585 50  0001 C CNN
F 3 "" H 3115 6585 50  0000 C CNN
	1    3115 6585
	-1   0    0    1   
$EndComp
Text Label 4115 6950 0    60   ~ 0
v_referencia
$Comp
L R R6
U 1 1 5D4C6F39
P 4005 6735
F 0 "R6" V 4085 6735 50  0000 C CNN
F 1 "1k" V 4005 6735 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 3935 6735 50  0001 C CNN
F 3 "" H 4005 6735 50  0000 C CNN
	1    4005 6735
	1    0    0    -1  
$EndComp
Text Label 2165 6535 0    60   ~ 0
intensidad_6
$Comp
L Conn_02x05_Odd_Even J4
U 1 1 5D4CBA5C
P 8805 1925
F 0 "J4" H 8855 2225 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 8855 1625 50  0000 C CNN
F 2 "oscar_libreria_huellas:Pin_Header_Straight_2x05_Pitch2.54mm_onsar" H 8805 1925 50  0001 C CNN
F 3 "" H 8805 1925 50  0001 C CNN
	1    8805 1925
	1    0    0    -1  
$EndComp
Text Label 8170 2125 0    60   ~ 0
vcc_5v
$Comp
L LM358 U1
U 1 1 5D4D9D45
P 2355 4010
F 0 "U1" H 2355 4210 50  0000 L CNN
F 1 "LM358" H 2355 3810 50  0000 L CNN
F 2 "Housings_SOIC:SO-8_5.3x6.2mm_Pitch1.27mm" H 2355 4010 50  0001 C CNN
F 3 "" H 2355 4010 50  0001 C CNN
	1    2355 4010
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5D4DA8E9
P 1555 3705
F 0 "R1" V 1635 3705 50  0000 C CNN
F 1 "4K7" V 1555 3705 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1485 3705 50  0001 C CNN
F 3 "" H 1555 3705 50  0001 C CNN
	1    1555 3705
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5D4DAC16
P 1555 4090
F 0 "R2" V 1635 4090 50  0000 C CNN
F 1 "4K7" V 1555 4090 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1485 4090 50  0001 C CNN
F 3 "" H 1555 4090 50  0001 C CNN
	1    1555 4090
	1    0    0    -1  
$EndComp
Text Label 2255 3640 0    60   ~ 0
vin_5V
$Comp
L GND #PWR05
U 1 1 5D4DC729
P 2255 4310
F 0 "#PWR05" H 2255 4060 50  0001 C CNN
F 1 "GND" H 2255 4160 50  0000 C CNN
F 2 "" H 2255 4310 50  0000 C CNN
F 3 "" H 2255 4310 50  0000 C CNN
	1    2255 4310
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5D4DCC77
P 1555 4240
F 0 "#PWR06" H 1555 3990 50  0001 C CNN
F 1 "GND" H 1555 4090 50  0000 C CNN
F 2 "" H 1555 4240 50  0000 C CNN
F 3 "" H 1555 4240 50  0000 C CNN
	1    1555 4240
	-1   0    0    -1  
$EndComp
Text Label 1555 3555 0    60   ~ 0
vin_5V
Text Label 3015 4010 0    60   ~ 0
v_referencia
$Comp
L CP1 C5
U 1 1 5D4DFAA3
P 2970 4250
F 0 "C5" H 2995 4350 50  0000 L CNN
F 1 "10uF" H 2995 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_2220_HandSoldering" H 2970 4250 50  0001 C CNN
F 3 "" H 2970 4250 50  0000 C CNN
	1    2970 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5D4E0211
P 2970 4400
F 0 "#PWR07" H 2970 4150 50  0001 C CNN
F 1 "GND" H 2970 4250 50  0000 C CNN
F 2 "" H 2970 4400 50  0000 C CNN
F 3 "" H 2970 4400 50  0000 C CNN
	1    2970 4400
	-1   0    0    -1  
$EndComp
$Comp
L CP1 C1
U 1 1 5D4E0BA3
P 1195 4060
F 0 "C1" H 1220 4160 50  0000 L CNN
F 1 "10uF" H 1220 3960 50  0000 L CNN
F 2 "Capacitors_SMD:C_2220_HandSoldering" H 1195 4060 50  0001 C CNN
F 3 "" H 1195 4060 50  0000 C CNN
	1    1195 4060
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5D4E0DB3
P 1195 4210
F 0 "#PWR08" H 1195 3960 50  0001 C CNN
F 1 "GND" H 1195 4060 50  0000 C CNN
F 2 "" H 1195 4210 50  0000 C CNN
F 3 "" H 1195 4210 50  0000 C CNN
	1    1195 4210
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5D4E449D
P 1290 2825
F 0 "#PWR09" H 1290 2575 50  0001 C CNN
F 1 "GND" H 1290 2675 50  0000 C CNN
F 2 "" H 1290 2825 50  0000 C CNN
F 3 "" H 1290 2825 50  0000 C CNN
	1    1290 2825
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 5D4E44A3
P 1090 2395
F 0 "P1" H 1090 2545 50  0000 C CNN
F 1 "V_IN" V 1190 2395 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 1090 2395 50  0001 C CNN
F 3 "" H 1090 2395 50  0000 C CNN
	1    1090 2395
	-1   0    0    1   
$EndComp
$Comp
L CP1 C4
U 1 1 5D4E44A9
P 2115 2595
F 0 "C4" H 2140 2695 50  0000 L CNN
F 1 "10uF" H 2140 2495 50  0000 L CNN
F 2 "Capacitors_SMD:C_2220_HandSoldering" H 2115 2595 50  0001 C CNN
F 3 "" H 2115 2595 50  0000 C CNN
	1    2115 2595
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 5D4E44AF
P 1840 2345
F 0 "D1" H 1840 2445 50  0000 C CNN
F 1 "schottky" H 1840 2245 50  0000 C CNN
F 2 "Diodes_SMD:D_2114" H 1840 2345 50  0001 C CNN
F 3 "" H 1840 2345 50  0000 C CNN
	1    1840 2345
	-1   0    0    1   
$EndComp
$Comp
L TEST_1P W1
U 1 1 5D4E44B5
P 2115 2345
F 0 "W1" H 2115 2615 50  0000 C CNN
F 1 "+5V" H 2115 2545 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 2315 2345 50  0001 C CNN
F 3 "" H 2315 2345 50  0000 C CNN
	1    2115 2345
	1    0    0    -1  
$EndComp
Text Label 2340 2345 0    60   ~ 0
vin_5V
Text Label 1330 2345 0    60   ~ 0
vcc_5v
$Comp
L NANO U2
U 1 1 5D4E51E2
P 5190 1920
F 0 "U2" H 5540 2920 50  0000 C CNN
F 1 "NANO" H 5190 2770 50  0000 C CNN
F 2 "libreria_huellas_proyecto:arduino_nano" H 4890 1120 50  0001 C CNN
F 3 "DOCUMENTATION" H 5040 1070 50  0001 C CNN
	1    5190 1920
	1    0    0    -1  
$EndComp
Text Label 6010 2020 0    60   ~ 0
intensidad_4
Text Label 6010 2120 0    60   ~ 0
intensidad_3
Text Label 6010 2220 0    60   ~ 0
intensidad_2
Text Label 6010 2320 0    60   ~ 0
intensidad_1
Text Label 6000 1520 0    60   ~ 0
vin_5V
$Comp
L GND #PWR010
U 1 1 5D4E51ED
P 6355 1320
F 0 "#PWR010" H 6355 1070 50  0001 C CNN
F 1 "GND" H 6355 1170 50  0000 C CNN
F 2 "" H 6355 1320 50  0000 C CNN
F 3 "" H 6355 1320 50  0000 C CNN
	1    6355 1320
	-1   0    0    -1  
$EndComp
Text Label 6010 1920 0    60   ~ 0
intensidad_5
Text Label 6010 1820 0    60   ~ 0
intensidad_6
Text Label 6000 1620 0    60   ~ 0
v_referencia
Text Label 3930 1720 0    60   ~ 0
ard_tx
Text Label 3930 1620 0    60   ~ 0
ard_rx
NoConn ~ 4440 1220
NoConn ~ 4440 1320
NoConn ~ 4440 1420
NoConn ~ 4440 1520
NoConn ~ 4440 1920
NoConn ~ 4440 2020
NoConn ~ 4440 2120
NoConn ~ 4440 2220
NoConn ~ 4440 2320
NoConn ~ 5940 1220
NoConn ~ 5940 1420
NoConn ~ 5940 2420
NoConn ~ 5940 2520
Text Label 1775 1035 0    60   ~ 0
vin_5V
Wire Wire Line
	1775 960  1775 1110
Wire Wire Line
	1275 960  1275 1010
Wire Bus Line
	5740 5575 5740 5570
Wire Wire Line
	1395 5990 2445 5990
Wire Wire Line
	1395 5675 1395 5990
Wire Wire Line
	1395 5575 2445 5575
Connection ~ 2085 5575
Wire Wire Line
	2085 5625 2085 5575
Connection ~ 1625 5575
Wire Wire Line
	1625 5635 1625 5575
Wire Wire Line
	3315 5990 4365 5990
Wire Wire Line
	3315 5675 3315 5990
Wire Wire Line
	3315 5575 4365 5575
Connection ~ 4005 5575
Wire Wire Line
	4005 5625 4005 5575
Connection ~ 3545 5575
Wire Wire Line
	3545 5635 3545 5575
Wire Wire Line
	5235 5990 6285 5990
Wire Wire Line
	5235 5675 5235 5990
Wire Wire Line
	5235 5575 6285 5575
Connection ~ 5925 5575
Wire Wire Line
	5925 5625 5925 5575
Connection ~ 5465 5575
Wire Wire Line
	5465 5635 5465 5575
Wire Wire Line
	7155 5990 8205 5990
Wire Wire Line
	7155 5675 7155 5990
Wire Wire Line
	7155 5575 8205 5575
Connection ~ 7845 5575
Wire Wire Line
	7845 5625 7845 5575
Connection ~ 7385 5575
Wire Wire Line
	7385 5635 7385 5575
Wire Wire Line
	9120 5990 10170 5990
Wire Wire Line
	9120 5675 9120 5990
Wire Wire Line
	9120 5575 10170 5575
Connection ~ 9810 5575
Wire Wire Line
	9810 5625 9810 5575
Connection ~ 9350 5575
Wire Wire Line
	9350 5635 9350 5575
Wire Wire Line
	1395 6950 2445 6950
Wire Wire Line
	1395 6635 1395 6950
Wire Wire Line
	1395 6535 2445 6535
Connection ~ 2085 6535
Wire Wire Line
	2085 6585 2085 6535
Connection ~ 1625 6535
Wire Wire Line
	1625 6595 1625 6535
Wire Wire Line
	3315 6950 4365 6950
Wire Wire Line
	3315 6635 3315 6950
Connection ~ 4005 6535
Wire Wire Line
	4005 6585 4005 6535
Wire Wire Line
	8170 1725 8605 1725
Wire Wire Line
	8170 1825 8605 1825
Wire Wire Line
	8170 2025 8605 2025
Wire Wire Line
	2655 4010 3155 4010
Wire Wire Line
	1555 3855 1555 3940
Wire Wire Line
	1195 3910 2055 3910
Connection ~ 1555 3910
Wire Wire Line
	2705 4010 2705 4580
Wire Wire Line
	2705 4580 1940 4580
Wire Wire Line
	1940 4580 1940 4110
Wire Wire Line
	1940 4110 2055 4110
Connection ~ 2705 4010
Wire Wire Line
	2970 4100 2970 4010
Connection ~ 2970 4010
Wire Wire Line
	2115 2345 2115 2445
Connection ~ 2115 2345
Wire Wire Line
	1990 2345 2765 2345
Wire Wire Line
	1290 2345 1690 2345
Wire Wire Line
	1290 2445 1290 2825
Wire Wire Line
	1290 2825 2115 2825
Wire Wire Line
	2115 2825 2115 2745
Connection ~ 1290 2825
Wire Notes Line
	6360 1070 6360 2760
Wire Notes Line
	6360 2760 6370 2760
Wire Wire Line
	5940 1520 6360 1520
Wire Wire Line
	5940 1620 6360 1620
Wire Wire Line
	5940 1720 6360 1720
Wire Wire Line
	5940 1820 6360 1820
Wire Wire Line
	5940 1920 6360 1920
Wire Wire Line
	5940 2120 6360 2120
Wire Wire Line
	5940 2220 6360 2220
Wire Wire Line
	5940 2320 6360 2320
Wire Wire Line
	5940 2020 6360 2020
Wire Wire Line
	5940 1320 6355 1320
Wire Notes Line
	3835 1075 3835 2765
Wire Wire Line
	2255 3710 2255 3635
Wire Wire Line
	1625 5935 1625 5990
Connection ~ 1625 5990
Wire Wire Line
	2085 5925 2085 5990
Connection ~ 2085 5990
Wire Wire Line
	3545 5935 3545 5990
Connection ~ 3545 5990
Wire Wire Line
	4005 5925 4005 5990
Connection ~ 4005 5990
Wire Wire Line
	5465 5935 5465 5990
Connection ~ 5465 5990
Wire Wire Line
	5925 5925 5925 5990
Connection ~ 5925 5990
Wire Wire Line
	7385 5935 7385 5990
Connection ~ 7385 5990
Wire Wire Line
	7845 5925 7845 5990
Connection ~ 7845 5990
Wire Wire Line
	9350 5935 9350 5990
Connection ~ 9350 5990
Wire Wire Line
	9810 5925 9810 5990
Connection ~ 9810 5990
Wire Wire Line
	1625 6895 1625 6950
Connection ~ 1625 6950
Wire Wire Line
	2085 6885 2085 6950
Connection ~ 2085 6950
Wire Wire Line
	4005 6885 4005 6950
Connection ~ 4005 6950
Text Label 4120 6535 0    60   ~ 0
voltage_1
$Comp
L R R10
U 1 1 5D7208D8
P 3625 6535
F 0 "R10" V 3705 6535 50  0000 C CNN
F 1 "10k" V 3625 6535 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3555 6535 50  0001 C CNN
F 3 "" H 3625 6535 50  0000 C CNN
	1    3625 6535
	0    1    1    0   
$EndComp
Wire Wire Line
	3315 6535 3475 6535
Wire Wire Line
	3775 6535 4365 6535
Text Label 6000 1720 0    60   ~ 0
voltage_1
$Comp
L LM358 U1
U 2 1 5D755B03
P 5115 4065
F 0 "U1" H 5115 4265 50  0000 L CNN
F 1 "LM358" H 5115 3865 50  0000 L CNN
F 2 "Housings_SOIC:SO-8_5.3x6.2mm_Pitch1.27mm" H 5115 4065 50  0001 C CNN
F 3 "" H 5115 4065 50  0001 C CNN
	2    5115 4065
	1    0    0    -1  
$EndComp
Wire Wire Line
	5015 3765 5015 3655
Text Label 5015 3655 0    60   ~ 0
vin_5V
$Comp
L GND #PWR011
U 1 1 5D7561B7
P 5015 4365
F 0 "#PWR011" H 5015 4115 50  0001 C CNN
F 1 "GND" H 5015 4215 50  0000 C CNN
F 2 "" H 5015 4365 50  0000 C CNN
F 3 "" H 5015 4365 50  0000 C CNN
	1    5015 4365
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4815 4165 4660 4165
Wire Wire Line
	4660 4165 4660 4580
Wire Wire Line
	4660 4580 5480 4580
Wire Wire Line
	5480 4580 5480 4065
Wire Wire Line
	5480 4065 5415 4065
Text Label 1635 3910 0    60   ~ 0
v_25
Wire Wire Line
	4815 3965 4455 3965
Text Label 4455 3965 0    60   ~ 0
v_25
Text Label 8170 2025 0    60   ~ 0
vcc_5v
Wire Wire Line
	8605 2125 8170 2125
Text Label 8170 1725 0    60   ~ 0
ard_tx
Text Label 8170 1825 0    60   ~ 0
ard_rx
NoConn ~ 4440 2420
Wire Wire Line
	4440 1620 3835 1620
Text Label 3930 1820 0    60   ~ 0
ard_d4
Text Label 9180 2025 0    60   ~ 0
ard_d4
NoConn ~ 9105 1725
NoConn ~ 9105 1825
NoConn ~ 9105 1925
Wire Wire Line
	9105 2025 9530 2025
NoConn ~ 5940 2620
Text Label 1275 990  0    60   ~ 0
GND
Text Label 8170 1925 0    60   ~ 0
GND
Wire Wire Line
	8605 1925 8170 1925
Wire Wire Line
	9105 2125 9530 2125
Text Label 9180 2125 0    60   ~ 0
GND
Wire Wire Line
	4440 1720 3835 1720
Wire Wire Line
	4440 1820 3835 1820
NoConn ~ 4440 2520
NoConn ~ 4440 2620
NoConn ~ 4875 -920
$EndSCHEMATC
