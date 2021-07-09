EESchema Schematic File Version 4
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
Text Notes 1700 3150 0    50   ~ 0
V0
$Comp
L killswitch-rescue:+5V-power #PWR0103
U 1 1 5D1F3287
P 1250 1800
F 0 "#PWR0103" H 1250 1650 50  0001 C CNN
F 1 "+5V" H 1265 1973 50  0000 C CNN
F 2 "Connector:Banana_Jack_1Pin" H 1250 1800 50  0001 C CNN
F 3 "" H 1250 1800 50  0001 C CNN
	1    1250 1800
	1    0    0    -1  
$EndComp
$Comp
L killswitch-rescue:R-Device R1
U 1 1 5D1F927F
P 2450 2700
F 0 "R1" H 2520 2746 50  0000 L CNN
F 1 "5.7K" H 2520 2655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 2380 2700 50  0001 C CNN
F 3 "~" H 2450 2700 50  0001 C CNN
	1    2450 2700
	1    0    0    -1  
$EndComp
Text Label 2800 2950 0    50   ~ 0
~V0
$Comp
L killswitch-rescue:R-Device R2
U 1 1 5D201541
P 3300 2950
F 0 "R2" V 3093 2950 50  0000 C CNN
F 1 "10k" V 3184 2950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 3230 2950 50  0001 C CNN
F 3 "~" H 3300 2950 50  0001 C CNN
	1    3300 2950
	0    1    1    0   
$EndComp
$Comp
L killswitch-rescue:2N2219-Transistor_BJT Q5
U 1 1 5D204C17
P 3600 3850
F 0 "Q5" H 3790 3896 50  0000 L CNN
F 1 "2N3904" H 3790 3805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-39-3" H 3800 3775 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 3600 3850 50  0001 L CNN
	1    3600 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4050 4200 4050
Wire Wire Line
	4200 3150 3750 3150
Wire Wire Line
	4200 3150 4200 3800
Connection ~ 4200 4050
$Comp
L killswitch-rescue:R-Device R4
U 1 1 5D207424
P 4200 4200
F 0 "R4" H 4270 4246 50  0000 L CNN
F 1 "5.7k" H 4270 4155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 4130 4200 50  0001 C CNN
F 3 "~" H 4200 4200 50  0001 C CNN
	1    4200 4200
	1    0    0    -1  
$EndComp
$Comp
L killswitch-rescue:GND-power #PWR0104
U 1 1 5D208B52
P 1150 6000
F 0 "#PWR0104" H 1150 5750 50  0001 C CNN
F 1 "GND" H 1155 5827 50  0000 C CNN
F 2 "Connector:Banana_Jack_1Pin" H 1150 6000 50  0001 C CNN
F 3 "" H 1150 6000 50  0001 C CNN
	1    1150 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 6000 4200 4350
Wire Wire Line
	3900 6000 3900 5900
Connection ~ 3900 6000
Wire Wire Line
	3900 6000 4200 6000
Wire Wire Line
	4200 3800 5300 3800
Connection ~ 4200 3800
Wire Wire Line
	4200 3800 4200 4050
$Comp
L killswitch-rescue:2N2219-Transistor_BJT Q6
U 1 1 5D1FF8B0
P 3650 2950
F 0 "Q6" H 3840 2996 50  0000 L CNN
F 1 "2N3904" H 3840 2905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-39-3" H 3850 2875 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 3650 2950 50  0001 L CNN
	1    3650 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3650 3700 3650
Wire Wire Line
	2450 2850 2450 2950
Wire Wire Line
	2450 2950 3150 2950
Connection ~ 2450 2950
Wire Wire Line
	2450 2950 2450 3000
Wire Wire Line
	3400 2750 3750 2750
Connection ~ 3400 2750
Wire Wire Line
	3400 2750 3400 3650
Wire Wire Line
	3400 1800 3400 2750
$Comp
L killswitch-rescue:Conn_01x01_Female-Connector V0
U 1 1 5D20C059
P 950 3200
F 0 "V0" H 842 2975 50  0000 C CNN
F 1 "Conn_01x01_Female" H 842 3066 50  0000 C CNN
F 2 "Connector_Pin:Pin_D0.7mm_L6.5mm_W1.8mm_FlatFork" H 950 3200 50  0001 C CNN
F 3 "~" H 950 3200 50  0001 C CNN
	1    950  3200
	-1   0    0    1   
$EndComp
$Comp
L killswitch-rescue:Conn_01x01_Female-Connector VCC1
U 1 1 5D20EC3A
P 1050 1800
F 0 "VCC1" H 942 1985 50  0000 C CNN
F 1 "Conn_01x01_Female" H 942 1894 50  0000 C CNN
F 2 "Connector_Pin:Pin_D0.7mm_L6.5mm_W1.8mm_FlatFork" H 1050 1800 50  0001 C CNN
F 3 "~" H 1050 1800 50  0001 C CNN
	1    1050 1800
	-1   0    0    -1  
$EndComp
Connection ~ 1250 1800
$Comp
L killswitch-rescue:Conn_01x01_Female-Connector GND1
U 1 1 5D210458
P 950 6000
F 0 "GND1" H 842 6185 50  0000 C CNN
F 1 "Conn_01x01_Female" H 842 6094 50  0000 C CNN
F 2 "Connector_Pin:Pin_D0.7mm_L6.5mm_W1.8mm_FlatFork" H 950 6000 50  0001 C CNN
F 3 "~" H 950 6000 50  0001 C CNN
	1    950  6000
	-1   0    0    -1  
$EndComp
Connection ~ 1150 6000
$Comp
L killswitch-rescue:2N2219-Transistor_BJT Q2
U 1 1 5D1F14A8
P 2350 3200
F 0 "Q2" H 2540 3246 50  0000 L CNN
F 1 "2N3904" H 2540 3155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-39-3" H 2550 3125 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 2350 3200 50  0001 L CNN
	1    2350 3200
	1    0    0    -1  
$EndComp
$Comp
L killswitch-rescue:R-Device R0
U 1 1 5D1EF176
P 2000 3200
F 0 "R0" V 1793 3200 50  0000 C CNN
F 1 "10k" V 1884 3200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 1930 3200 50  0001 C CNN
F 3 "~" H 2000 3200 50  0001 C CNN
	1    2000 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 1800 2200 1800
Wire Wire Line
	2450 1800 3400 1800
Connection ~ 2450 1800
Wire Wire Line
	2450 6000 3900 6000
Connection ~ 2450 6000
Text Notes 1700 3800 0    50   ~ 0
V1
$Comp
L killswitch-rescue:Conn_01x01_Female-Connector V1
U 1 1 5D20746D
P 950 3850
F 0 "V1" H 842 3625 50  0000 C CNN
F 1 "Conn_01x01_Female" H 842 3716 50  0000 C CNN
F 2 "Connector_Pin:Pin_D0.7mm_L6.5mm_W1.8mm_FlatFork" H 950 3850 50  0001 C CNN
F 3 "~" H 950 3850 50  0001 C CNN
	1    950  3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2450 1800 2450 2550
Wire Wire Line
	2450 3400 2450 4800
Wire Wire Line
	1150 3200 1850 3200
Wire Wire Line
	1150 3850 3100 3850
$Comp
L killswitch-rescue:R-Device R3
U 1 1 5D2053A5
P 3250 3850
F 0 "R3" V 3043 3850 50  0000 C CNN
F 1 "10k" V 3134 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 3180 3850 50  0001 C CNN
F 3 "~" H 3250 3850 50  0001 C CNN
	1    3250 3850
	0    1    1    0   
$EndComp
Text Label 2800 3800 0    50   ~ 0
V1
Text Label 4700 3750 0    50   ~ 0
V1+~V0
$Comp
L killswitch-rescue:Conn_01x01_Female-Connector U0
U 1 1 5E7E9276
P 1000 4600
F 0 "U0" H 892 4375 50  0000 C CNN
F 1 "Conn_01x01_Female" H 1000 4500 50  0000 C CNN
F 2 "Connector_Pin:Pin_D0.7mm_L6.5mm_W1.8mm_FlatFork" H 1000 4600 50  0001 C CNN
F 3 "~" H 1000 4600 50  0001 C CNN
	1    1000 4600
	-1   0    0    1   
$EndComp
$Comp
L killswitch-rescue:Conn_01x01_Female-Connector U1
U 1 1 5E7F18E4
P 1000 4950
F 0 "U1" H 892 4725 50  0000 C CNN
F 1 "Conn_01x01_Female" H 1000 4850 50  0000 C CNN
F 2 "Connector_Pin:Pin_D0.7mm_L6.5mm_W1.8mm_FlatFork" H 1000 4950 50  0001 C CNN
F 3 "~" H 1000 4950 50  0001 C CNN
	1    1000 4950
	-1   0    0    1   
$EndComp
$Comp
L killswitch-rescue:R-Device R6
U 1 1 5E803D80
P 2200 4100
F 0 "R6" H 2270 4146 50  0000 L CNN
F 1 "5.7K" H 2270 4055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 2130 4100 50  0001 C CNN
F 3 "~" H 2200 4100 50  0001 C CNN
	1    2200 4100
	1    0    0    -1  
$EndComp
$Comp
L killswitch-rescue:2N2219-Transistor_BJT Q1
U 1 1 5E803D8A
P 2100 4600
F 0 "Q1" H 2290 4646 50  0000 L CNN
F 1 "2N3904" H 2290 4555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-39-3" H 2300 4525 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 2100 4600 50  0001 L CNN
	1    2100 4600
	1    0    0    -1  
$EndComp
$Comp
L killswitch-rescue:R-Device R5
U 1 1 5E803D90
P 1750 4600
F 0 "R5" V 1543 4600 50  0000 C CNN
F 1 "10k" V 1634 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 1680 4600 50  0001 C CNN
F 3 "~" H 1750 4600 50  0001 C CNN
	1    1750 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 1800 2200 3950
Connection ~ 2200 1800
Wire Wire Line
	2200 1800 2450 1800
Wire Wire Line
	1200 4600 1600 4600
$Comp
L killswitch-rescue:R-Device R8
U 1 1 5E821925
P 3250 4950
F 0 "R8" V 3043 4950 50  0000 C CNN
F 1 "10k" V 3134 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 3180 4950 50  0001 C CNN
F 3 "~" H 3250 4950 50  0001 C CNN
	1    3250 4950
	0    1    1    0   
$EndComp
$Comp
L killswitch-rescue:2N2219-Transistor_BJT Q4
U 1 1 5E8223B3
P 3600 4950
F 0 "Q4" H 3790 4996 50  0000 L CNN
F 1 "2N3904" H 3790 4905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-39-3" H 3800 4875 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 3600 4950 50  0001 L CNN
	1    3600 4950
	1    0    0    -1  
$EndComp
$Comp
L killswitch-rescue:2N2219-Transistor_BJT Q3
U 1 1 5E82568F
P 3600 4400
F 0 "Q3" H 3790 4446 50  0000 L CNN
F 1 "2N3904" H 3790 4355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-39-3" H 3800 4325 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 3600 4400 50  0001 L CNN
	1    3600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4250 2200 4400
$Comp
L killswitch-rescue:R-Device R7
U 1 1 5E83D0E9
P 3250 4400
F 0 "R7" V 3043 4400 50  0000 C CNN
F 1 "10k" V 3134 4400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 3180 4400 50  0001 C CNN
F 3 "~" H 3250 4400 50  0001 C CNN
	1    3250 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 4400 3100 4400
Connection ~ 2200 4400
Wire Wire Line
	1200 4950 3100 4950
Wire Wire Line
	3400 4750 3700 4750
Connection ~ 3400 3650
Wire Wire Line
	3400 4200 3700 4200
Connection ~ 3400 4200
$Comp
L killswitch-rescue:R-Device R9
U 1 1 5E85B156
P 3900 5750
F 0 "R9" H 3970 5796 50  0000 L CNN
F 1 "5.7k" H 3970 5705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 3830 5750 50  0001 C CNN
F 3 "~" H 3900 5750 50  0001 C CNN
	1    3900 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4600 3900 4600
Wire Wire Line
	3900 4600 3900 4950
Wire Wire Line
	3700 5150 3900 5150
Connection ~ 3900 5150
Wire Wire Line
	3900 5150 3900 5600
Wire Wire Line
	3900 4950 5300 4950
Connection ~ 3900 4950
Wire Wire Line
	3900 4950 3900 5150
Wire Wire Line
	1150 6000 2450 6000
Wire Wire Line
	2200 4800 2450 4800
Connection ~ 2450 4800
Wire Wire Line
	2450 4800 2450 6000
Text Label 2800 4350 0    50   ~ 0
~U0
Text Label 2800 4900 0    50   ~ 0
U1
Text Label 4700 4900 0    50   ~ 0
U1+~U0
Wire Wire Line
	4200 6000 5900 6000
Wire Wire Line
	3400 1800 5900 1800
Connection ~ 3400 1800
Wire Wire Line
	3400 3650 3400 4200
Wire Wire Line
	3400 4200 3400 4750
$Comp
L killswitch-rescue:Conn_01x01_Female-Connector A0
U 1 1 5F8D7179
P 5500 3800
F 0 "A0" H 5528 3826 50  0000 L CNN
F 1 "Conn_01x01_Female-Connector" H 5528 3735 50  0000 L CNN
F 2 "Connector_Pin:Pin_D0.7mm_L6.5mm_W1.8mm_FlatFork" H 5500 3800 50  0001 C CNN
F 3 "" H 5500 3800 50  0001 C CNN
	1    5500 3800
	1    0    0    -1  
$EndComp
$Comp
L killswitch-rescue:Conn_01x01_Female-Connector A1
U 1 1 5F8D8A62
P 5500 4950
F 0 "A1" H 5528 4976 50  0000 L CNN
F 1 "Conn_01x01_Female-Connector" H 5528 4885 50  0000 L CNN
F 2 "Connector_Pin:Pin_D0.7mm_L6.5mm_W1.8mm_FlatFork" H 5500 4950 50  0001 C CNN
F 3 "" H 5500 4950 50  0001 C CNN
	1    5500 4950
	1    0    0    -1  
$EndComp
Connection ~ 4200 6000
$EndSCHEMATC
