EESchema Schematic File Version 4
LIBS:Smartarter-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
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
L power:+12V #PWR0101
U 1 1 5D8B660E
P 9850 3200
F 0 "#PWR0101" H 9850 3050 50  0001 C CNN
F 1 "+12V" H 9865 3373 50  0000 C CNN
F 2 "" H 9850 3200 50  0001 C CNN
F 3 "" H 9850 3200 50  0001 C CNN
	1    9850 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5D8B666D
P 10150 3050
F 0 "#PWR0102" H 10150 2800 50  0001 C CNN
F 1 "GND" H 10155 2877 50  0000 C CNN
F 2 "" H 10150 3050 50  0001 C CNN
F 3 "" H 10150 3050 50  0001 C CNN
	1    10150 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D8B7CF5
P 6900 8000
F 0 "R5" V 6900 8000 50  0000 C CNN
F 1 "220" V 6950 7850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6830 8000 50  0001 C CNN
F 3 "~" H 6900 8000 50  0001 C CNN
	1    6900 8000
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5D8B7D21
P 6900 8100
F 0 "R6" V 6900 8100 50  0000 C CNN
F 1 "220" V 6950 7950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6830 8100 50  0001 C CNN
F 3 "~" H 6900 8100 50  0001 C CNN
	1    6900 8100
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5D8B7D3F
P 6900 8200
F 0 "R7" V 6900 8200 50  0000 C CNN
F 1 "220" V 6950 8050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6830 8200 50  0001 C CNN
F 3 "~" H 6900 8200 50  0001 C CNN
	1    6900 8200
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5D8B7D5F
P 6900 8300
F 0 "R8" V 6900 8300 50  0000 C CNN
F 1 "220" V 6950 8150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6830 8300 50  0001 C CNN
F 3 "~" H 6900 8300 50  0001 C CNN
	1    6900 8300
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5D8B7D81
P 6900 8400
F 0 "R9" V 6900 8400 50  0000 C CNN
F 1 "220" V 6950 8250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6830 8400 50  0001 C CNN
F 3 "~" H 6900 8400 50  0001 C CNN
	1    6900 8400
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5D8B7DA5
P 6900 8500
F 0 "R10" V 6900 8500 50  0000 C CNN
F 1 "220" V 6950 8350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6830 8500 50  0001 C CNN
F 3 "~" H 6900 8500 50  0001 C CNN
	1    6900 8500
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5D8B7DCB
P 6900 8600
F 0 "R11" V 6900 8600 50  0000 C CNN
F 1 "220" V 6950 8450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6830 8600 50  0001 C CNN
F 3 "~" H 6900 8600 50  0001 C CNN
	1    6900 8600
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5D8B7DF7
P 6900 7900
F 0 "R4" V 6900 7900 50  0000 C CNN
F 1 "220" V 6950 7750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6830 7900 50  0001 C CNN
F 3 "~" H 6900 7900 50  0001 C CNN
	1    6900 7900
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 7900 7500 7900
Wire Wire Line
	7500 7900 7500 8050
Wire Wire Line
	7050 8000 7400 8000
Wire Wire Line
	7400 8000 7400 8150
Wire Wire Line
	7050 8100 7300 8100
Wire Wire Line
	7300 8100 7300 8250
Wire Wire Line
	7050 8200 7200 8200
Wire Wire Line
	7200 8200 7200 8350
Wire Wire Line
	7050 8300 7500 8300
Wire Wire Line
	7500 8300 7500 8450
Wire Wire Line
	7050 8400 7400 8400
Wire Wire Line
	7400 8400 7400 8550
Wire Wire Line
	7050 8500 7300 8500
Wire Wire Line
	7300 8500 7300 8650
Wire Wire Line
	7050 8600 7200 8600
Wire Wire Line
	7200 8600 7200 8750
$Comp
L Device:R_POT POT1
U 1 1 5D8C93F5
P 8000 4950
F 0 "POT1" H 7930 4996 50  0000 R CNN
F 1 "R_POT" H 7930 4905 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_Round_P7.5" H 8000 4950 50  0001 C CNN
F 3 "~" H 8000 4950 50  0001 C CNN
	1    8000 4950
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5D8CB179
P 7950 5750
F 0 "SW1" H 7950 5565 50  0000 C CNN
F 1 "SW_Push" H 7950 5656 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm_Wuerth-430476085716" H 7950 5950 50  0001 C CNN
F 3 "" H 7950 5950 50  0001 C CNN
	1    7950 5750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R21
U 1 1 5D8CB201
P 8250 5550
F 0 "R21" V 8043 5550 50  0000 C CNN
F 1 "10K" V 8134 5550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8180 5550 50  0001 C CNN
F 3 "~" H 8250 5550 50  0001 C CNN
	1    8250 5550
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5D8CB69C
P 7650 6600
F 0 "R12" V 7443 6600 50  0000 C CNN
F 1 "10K" V 7534 6600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7580 6600 50  0001 C CNN
F 3 "~" H 7650 6600 50  0001 C CNN
	1    7650 6600
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 6750 7800 6750
Wire Wire Line
	7800 6750 7800 6600
Wire Wire Line
	8450 6750 7800 6750
Connection ~ 7800 6750
Wire Wire Line
	8600 6300 8250 6300
Wire Wire Line
	7500 6300 7500 6600
Connection ~ 8600 5550
Wire Wire Line
	8600 5550 8600 6300
Connection ~ 8450 5200
Wire Wire Line
	6050 4300 6050 4450
Connection ~ 8600 4300
Wire Wire Line
	8600 6300 8600 7300
Connection ~ 8600 6300
Wire Wire Line
	8450 6750 8450 7400
Connection ~ 8450 6750
$Comp
L Device:LED g1
U 1 1 5D917BBD
P 10650 6950
F 0 "g1" H 10641 7166 50  0000 C CNN
F 1 "onLED" H 10641 7075 50  0000 C CNN
F 2 "LED_THT:LED_Rectangular_W3.9mm_H1.8mm" H 10650 6950 50  0001 C CNN
F 3 "~" H 10650 6950 50  0001 C CNN
	1    10650 6950
	-1   0    0    1   
$EndComp
$Comp
L Device:LED r1
U 1 1 5D917C49
P 10650 6700
F 0 "r1" H 10641 6916 50  0000 C CNN
F 1 "offLED" H 10641 6825 50  0000 C CNN
F 2 "LED_THT:LED_Rectangular_W3.9mm_H1.8mm" H 10650 6700 50  0001 C CNN
F 3 "~" H 10650 6700 50  0001 C CNN
	1    10650 6700
	-1   0    0    1   
$EndComp
$Comp
L Device:LED y1
U 1 1 5D917C89
P 10650 6450
F 0 "y1" H 10641 6666 50  0000 C CNN
F 1 "otherLED" H 10641 6575 50  0000 C CNN
F 2 "LED_THT:LED_Rectangular_W3.9mm_H1.8mm" H 10650 6450 50  0001 C CNN
F 3 "~" H 10650 6450 50  0001 C CNN
	1    10650 6450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5D917D65
P 10200 6950
F 0 "R1" H 10270 6996 50  0000 L CNN
F 1 "220" H 10270 6905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10130 6950 50  0001 C CNN
F 3 "~" H 10200 6950 50  0001 C CNN
	1    10200 6950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5D917E46
P 10200 6700
F 0 "R2" H 10270 6746 50  0000 L CNN
F 1 "220" H 10270 6655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10130 6700 50  0001 C CNN
F 3 "~" H 10200 6700 50  0001 C CNN
	1    10200 6700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D917E8C
P 10200 6450
F 0 "R3" H 10270 6496 50  0000 L CNN
F 1 "220" H 10270 6405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10130 6450 50  0001 C CNN
F 3 "~" H 10200 6450 50  0001 C CNN
	1    10200 6450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10500 6950 10350 6950
Wire Wire Line
	10500 6700 10350 6700
Wire Wire Line
	10500 6450 10350 6450
Wire Wire Line
	10800 6450 10900 6450
Wire Wire Line
	10900 6450 10900 6700
Wire Wire Line
	10900 6950 10800 6950
Wire Wire Line
	10800 6700 10900 6700
Connection ~ 10900 6700
Wire Wire Line
	10900 6700 10900 6950
$Comp
L Relay:G5Q-1 onRelay1
U 1 1 5D9434D8
P 11100 4900
F 0 "onRelay1" H 11530 4946 50  0000 L CNN
F 1 "onRelay" H 11530 4855 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_HUGE_32mm" H 11550 4850 50  0001 L CNN
F 3 "https://www.omron.com/ecb/products/pdf/en-g5q.pdf" H 11750 4750 50  0001 L CNN
	1    11100 4900
	1    0    0    -1  
$EndComp
$Comp
L Relay:G5Q-1 offRelay1
U 1 1 5D94356C
P 11100 5800
F 0 "offRelay1" H 11530 5846 50  0000 L CNN
F 1 "offRelay" H 11530 5755 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_HUGE_32mm" H 11550 5750 50  0001 L CNN
F 3 "https://www.omron.com/ecb/products/pdf/en-g5q.pdf" H 11750 5650 50  0001 L CNN
	1    11100 5800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 5D94370B
P 9750 4900
F 0 "Q1" H 9941 4946 50  0000 L CNN
F 1 "BC547" H 9941 4855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9950 4825 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 9750 4900 50  0001 L CNN
	1    9750 4900
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q2
U 1 1 5D9438AB
P 9750 5800
F 0 "Q2" H 9941 5846 50  0000 L CNN
F 1 "BC547" H 9941 5755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9950 5725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 9750 5800 50  0001 L CNN
	1    9750 5800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q3
U 1 1 5D94396F
P 5700 3200
F 0 "Q3" H 5891 3246 50  0000 L CNN
F 1 "BC547" H 5891 3155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5900 3125 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 5700 3200 50  0001 L CNN
	1    5700 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2900 8750 3900
Wire Wire Line
	9850 5600 9850 5450
Wire Wire Line
	9850 5450 8750 5450
Wire Wire Line
	9850 4700 9850 4550
Wire Wire Line
	9850 4550 8750 4550
Connection ~ 8750 4550
Wire Wire Line
	8750 4550 8750 5450
Wire Wire Line
	9850 6000 9850 6200
Wire Wire Line
	9850 6200 10350 6200
Wire Wire Line
	10900 6200 10900 6100
Wire Wire Line
	9850 5100 9850 5300
Wire Wire Line
	9850 5300 10350 5300
Wire Wire Line
	10900 5300 10900 5200
Wire Wire Line
	10900 4600 10900 4400
Wire Wire Line
	11750 5400 10900 5400
Wire Wire Line
	10900 5400 10900 5500
Wire Bus Line
	8000 8950 8850 8950
Wire Bus Line
	8850 7750 9750 7750
Wire Bus Line
	9750 8950 10750 8950
Entry Wire Line
	8000 8050 8100 8150
Entry Wire Line
	8000 7950 8100 8050
Entry Wire Line
	8000 8150 8100 8250
Entry Wire Line
	8000 8250 8100 8350
Entry Wire Line
	8000 8350 8100 8450
Entry Wire Line
	8000 8450 8100 8550
Entry Wire Line
	8000 8550 8100 8650
Entry Wire Line
	8000 8650 8100 8750
Entry Wire Line
	8850 7950 8950 8050
Entry Wire Line
	8850 8050 8950 8150
Entry Wire Line
	8850 8150 8950 8250
Entry Wire Line
	8850 8250 8950 8350
Entry Wire Line
	8850 8350 8950 8450
Entry Wire Line
	8850 8450 8950 8550
Entry Wire Line
	8850 8550 8950 8650
Entry Wire Line
	8850 8650 8950 8750
Entry Wire Line
	9750 7950 9850 8050
Entry Wire Line
	9750 8050 9850 8150
Entry Wire Line
	9750 8150 9850 8250
Entry Wire Line
	9750 8250 9850 8350
Entry Wire Line
	9750 8350 9850 8450
Entry Wire Line
	9750 8450 9850 8550
Entry Wire Line
	9750 8550 9850 8650
Entry Wire Line
	9750 8650 9850 8750
Entry Wire Line
	10750 7950 10850 8050
Entry Wire Line
	10750 8050 10850 8150
Entry Wire Line
	10750 8150 10850 8250
Entry Wire Line
	10750 8250 10850 8350
Entry Wire Line
	10750 8350 10850 8450
Entry Wire Line
	10750 8450 10850 8550
Entry Wire Line
	10750 8550 10850 8650
Entry Wire Line
	10750 8650 10850 8750
Wire Wire Line
	8950 8050 9000 8050
Wire Wire Line
	8950 8150 9000 8150
Wire Wire Line
	8950 8250 9000 8250
Wire Wire Line
	8950 8350 9000 8350
Wire Wire Line
	8950 8450 9000 8450
Wire Wire Line
	8950 8550 9000 8550
Wire Wire Line
	8950 8650 9000 8650
Wire Wire Line
	8950 8750 9000 8750
Wire Wire Line
	9850 8050 9900 8050
Wire Wire Line
	9850 8150 9900 8150
Wire Wire Line
	9850 8250 9900 8250
Wire Wire Line
	9850 8350 9900 8350
Wire Wire Line
	9850 8450 9900 8450
Wire Wire Line
	9850 8550 9900 8550
Wire Wire Line
	9850 8650 9900 8650
Wire Wire Line
	9850 8750 9900 8750
Wire Wire Line
	10850 8050 10900 8050
Wire Wire Line
	10850 8150 10900 8150
Wire Wire Line
	10850 8250 10900 8250
Wire Wire Line
	10850 8350 10900 8350
Wire Wire Line
	10850 8450 10900 8450
Wire Wire Line
	10850 8550 10900 8550
Wire Wire Line
	10850 8650 10900 8650
Wire Wire Line
	10850 8750 10900 8750
Text Label 8100 8050 0    50   ~ 0
A0
Text Label 8100 8150 0    50   ~ 0
A1
Text Label 8100 8250 0    50   ~ 0
A2
Text Label 8100 8350 0    50   ~ 0
A3
Text Label 8100 8450 0    50   ~ 0
A4
Text Label 8100 8550 0    50   ~ 0
A5
Text Label 8100 8650 0    50   ~ 0
A6
Text Label 8100 8750 0    50   ~ 0
A7
Text Label 8950 8050 0    50   ~ 0
A0
Text Label 8950 8150 0    50   ~ 0
A1
Text Label 8950 8250 0    50   ~ 0
A2
Text Label 8950 8350 0    50   ~ 0
A3
Text Label 8950 8450 0    50   ~ 0
A4
Text Label 8950 8550 0    50   ~ 0
A5
Text Label 8950 8650 0    50   ~ 0
A6
Text Label 8950 8750 0    50   ~ 0
A7
Text Label 9850 8050 0    50   ~ 0
A0
Text Label 9850 8150 0    50   ~ 0
A1
Text Label 9850 8250 0    50   ~ 0
A2
Text Label 9850 8350 0    50   ~ 0
A3
Text Label 9850 8450 0    50   ~ 0
A4
Text Label 9850 8550 0    50   ~ 0
A5
Text Label 9850 8650 0    50   ~ 0
A6
Text Label 9850 8750 0    50   ~ 0
A7
Text Label 10850 8050 0    50   ~ 0
A0
Text Label 10850 8150 0    50   ~ 0
A1
Text Label 10850 8250 0    50   ~ 0
A2
Text Label 10850 8350 0    50   ~ 0
A3
Text Label 10850 8450 0    50   ~ 0
A4
Text Label 10850 8550 0    50   ~ 0
A5
Text Label 10850 8650 0    50   ~ 0
A6
Text Label 10850 8750 0    50   ~ 0
A7
Wire Wire Line
	6350 8000 6750 8000
Wire Wire Line
	6350 8100 6750 8100
Wire Wire Line
	6350 8200 6750 8200
Wire Wire Line
	6350 8300 6750 8300
Wire Wire Line
	6350 8400 6750 8400
Wire Wire Line
	6350 8500 6750 8500
Wire Wire Line
	6350 8600 6750 8600
Wire Wire Line
	6350 7850 6350 7900
Wire Wire Line
	6350 7900 6750 7900
$Comp
L 74xx_IEEE:74164 U74164
U 1 1 5DB55DEC
P 5800 7800
F 0 "U74164" H 5800 8366 50  0000 C CNN
F 1 "74164" H 5800 8275 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5800 7800 50  0001 C CNN
F 3 "" H 5800 7800 50  0001 C CNN
	1    5800 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 7800 5100 7800
Wire Wire Line
	5100 7800 5100 7550
Wire Wire Line
	5100 7300 6000 7300
Wire Wire Line
	6000 7300 6000 7450
Wire Wire Line
	6000 7300 8600 7300
Connection ~ 6000 7300
Wire Wire Line
	5800 7450 5800 7400
Wire Wire Line
	5800 7400 8450 7400
Wire Wire Line
	5250 7550 5100 7550
Connection ~ 5100 7550
Wire Wire Line
	5100 7550 5100 7300
$Comp
L Display_Character:KCSA02-107 U2
U 1 1 5DCB2C82
P 8450 8350
F 0 "U2" H 8450 9017 50  0000 C CNN
F 1 "KCSA02-107" H 8450 8926 50  0000 C CNN
F 2 "Display_7Segment:7SegmentLED_LTS6760_LTS6780" H 8450 7750 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/KCSA02-107(Ver.10A).pdf" H 7950 8825 50  0001 L CNN
	1    8450 8350
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:KCSA02-107 U6
U 1 1 5DCB2FC3
P 10200 8350
F 0 "U6" H 10200 9017 50  0000 C CNN
F 1 "KCSA02-107" H 10200 8926 50  0000 C CNN
F 2 "Display_7Segment:7SegmentLED_LTS6760_LTS6780" H 10200 7750 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/KCSA02-107(Ver.10A).pdf" H 9700 8825 50  0001 L CNN
	1    10200 8350
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:KCSA02-107 U7
U 1 1 5DCB301D
P 11200 8350
F 0 "U7" H 11200 9017 50  0000 C CNN
F 1 "KCSA02-107" H 11200 8926 50  0000 C CNN
F 2 "Display_7Segment:7SegmentLED_LTS6760_LTS6780" H 11200 7750 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/KCSA02-107(Ver.10A).pdf" H 10700 8825 50  0001 L CNN
	1    11200 8350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5DCB33F1
P 9850 3300
F 0 "#PWR01" H 9850 3150 50  0001 C CNN
F 1 "+5V" H 9865 3473 50  0000 C CNN
F 2 "" H 9850 3300 50  0001 C CNN
F 3 "" H 9850 3300 50  0001 C CNN
	1    9850 3300
	-1   0    0    1   
$EndComp
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 5D8B65A8
P 6150 5450
F 0 "A1" H 6150 6628 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 6150 6537 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 6300 4400 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 5950 6500 50  0001 C CNN
	1    6150 5450
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D4
U 1 1 5D912DA9
P 10350 4900
F 0 "D4" V 10304 5028 50  0000 L CNN
F 1 "DIODE" V 10395 5028 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 10350 4900 50  0001 C CNN
F 3 "" H 10350 4900 50  0001 C CNN
	1    10350 4900
	0    1    1    0   
$EndComp
$Comp
L pspice:DIODE D5
U 1 1 5D912ED6
P 10350 5800
F 0 "D5" V 10304 5928 50  0000 L CNN
F 1 "DIODE" V 10395 5928 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 10350 5800 50  0001 C CNN
F 3 "" H 10350 5800 50  0001 C CNN
	1    10350 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	10900 4400 10350 4400
Wire Wire Line
	10350 4400 10350 4700
Connection ~ 10900 4400
Wire Wire Line
	10350 5100 10350 5300
Connection ~ 10350 5300
Wire Wire Line
	10350 5300 10900 5300
Wire Wire Line
	10350 5600 10350 5400
Wire Wire Line
	10350 5400 10900 5400
Connection ~ 10900 5400
Wire Wire Line
	10350 6000 10350 6200
Connection ~ 10350 6200
Wire Wire Line
	10350 6200 10900 6200
Wire Wire Line
	8600 3550 8600 4300
Wire Wire Line
	8600 4300 8600 4700
Wire Wire Line
	8450 3800 8450 5200
Wire Wire Line
	5800 2900 5800 3000
Wire Wire Line
	5500 3200 5250 3200
Wire Wire Line
	9450 3300 9450 3550
Wire Wire Line
	9450 3550 8600 3550
Wire Wire Line
	9850 3300 9450 3300
Text Notes 8600 4100 1    50   ~ 0
5V
Text Notes 8450 4000 1    50   ~ 0
GND
Text Notes 8750 4300 1    50   ~ 0
12V
Wire Wire Line
	9700 3900 9700 3200
Connection ~ 8750 3900
Wire Wire Line
	8750 3900 8750 4550
Connection ~ 10150 3050
Wire Wire Line
	9550 3050 9550 3200
Wire Wire Line
	9550 3800 8450 3800
Wire Wire Line
	9550 3050 10150 3050
$Comp
L 74xx_IEEE:7414 U7414
U 1 1 5DA8142A
P 7200 5200
F 0 "U7414" V 6900 5000 50  0000 L CNN
F 1 "7414" V 6900 5250 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7200 5200 50  0001 C CNN
F 3 "" H 7200 5200 50  0001 C CNN
	1    7200 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 6550 6150 6750
Wire Wire Line
	8400 5550 8600 5550
Wire Wire Line
	8450 5200 8450 5950
Wire Wire Line
	7950 5550 8100 5550
Wire Wire Line
	7950 5950 8450 5950
Connection ~ 8450 5950
Wire Wire Line
	8450 5950 8450 6750
$Comp
L Device:R R20
U 1 1 5DAB5CF5
P 7750 5550
F 0 "R20" V 7543 5550 50  0000 C CNN
F 1 "1K" V 7634 5550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7680 5550 50  0001 C CNN
F 3 "~" H 7750 5550 50  0001 C CNN
	1    7750 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 5550 7950 5550
Connection ~ 7950 5550
Wire Wire Line
	7600 5950 7950 5950
Connection ~ 7950 5950
Wire Wire Line
	7600 5550 7600 5650
Wire Wire Line
	7600 5550 7400 5550
Wire Wire Line
	7400 5550 7400 5750
Wire Wire Line
	7400 5750 7200 5750
Connection ~ 7600 5550
Wire Wire Line
	6950 5200 6950 5050
Wire Wire Line
	6950 5050 7600 5050
Wire Wire Line
	7600 5050 7600 4700
Connection ~ 8600 4700
Wire Wire Line
	8600 4700 8600 5550
Wire Wire Line
	7600 4700 8000 4700
Wire Wire Line
	7450 5200 8000 5200
Wire Wire Line
	8000 5100 8000 5200
Connection ~ 8000 5200
Wire Wire Line
	8000 5200 8450 5200
Wire Wire Line
	8000 4800 8000 4700
Connection ~ 8000 4700
Wire Wire Line
	8000 4700 8600 4700
Wire Wire Line
	11750 5400 11750 6700
Wire Wire Line
	11750 6700 10900 6700
Connection ~ 11750 5400
$Comp
L Device:R R19
U 1 1 5DBF2382
P 9350 4750
F 0 "R19" V 9143 4750 50  0000 C CNN
F 1 "1K" V 9234 4750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9280 4750 50  0001 C CNN
F 3 "~" H 9350 4750 50  0001 C CNN
	1    9350 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	9550 4900 9350 4900
$Comp
L Device:R R18
U 1 1 5DBFC37B
P 9200 5650
F 0 "R18" V 8993 5650 50  0000 C CNN
F 1 "1K" V 9084 5650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9130 5650 50  0001 C CNN
F 3 "~" H 9200 5650 50  0001 C CNN
	1    9200 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	9550 5800 9200 5800
$Comp
L Device:R R13
U 1 1 5DC06CDA
P 5100 3200
F 0 "R13" H 5170 3246 50  0000 L CNN
F 1 "1K" H 5170 3155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5030 3200 50  0001 C CNN
F 3 "~" H 5100 3200 50  0001 C CNN
	1    5100 3200
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5D944546
P 9350 3200
F 0 "J2" H 9270 2875 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 9270 2966 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 9350 3200 50  0001 C CNN
F 3 "~" H 9350 3200 50  0001 C CNN
	1    9350 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5D94463A
P 9250 3050
F 0 "J1" H 9170 2725 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 9170 2816 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 9250 3050 50  0001 C CNN
F 3 "~" H 9250 3050 50  0001 C CNN
	1    9250 3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 3400 9100 2850
Wire Wire Line
	9100 2850 9450 2850
Wire Wire Line
	9450 2850 9450 2950
Wire Wire Line
	5800 2900 8750 2900
Wire Wire Line
	6050 4300 8600 4300
Wire Wire Line
	8750 3900 9700 3900
Wire Wire Line
	10150 3050 11750 3050
Wire Wire Line
	9700 3200 9850 3200
Wire Wire Line
	9450 3050 9450 3100
Wire Wire Line
	9450 3100 9700 3100
Wire Wire Line
	9700 3100 9700 3200
Connection ~ 9700 3200
Connection ~ 9550 3200
Wire Wire Line
	9550 3200 9550 3800
Wire Wire Line
	5650 5150 6900 5150
Wire Wire Line
	6900 5150 6900 4650
Wire Wire Line
	6900 4650 7200 4650
Wire Wire Line
	7500 6300 6900 6300
Wire Wire Line
	6900 6300 6900 5450
Wire Wire Line
	6900 5450 6650 5450
Connection ~ 7500 6300
Wire Wire Line
	8800 7550 6300 7550
Wire Wire Line
	6300 7550 6300 7100
Wire Wire Line
	6300 7100 5200 7100
Wire Wire Line
	5200 7100 5200 5550
Wire Wire Line
	5200 5550 5650 5550
Wire Wire Line
	5550 5250 5650 5250
Wire Wire Line
	5550 5450 5650 5450
$Comp
L power:GND #PWR02
U 1 1 5D9AA8D0
P 10900 4400
F 0 "#PWR02" H 10900 4150 50  0001 C CNN
F 1 "GND" H 10905 4227 50  0000 C CNN
F 2 "" H 10900 4400 50  0001 C CNN
F 3 "" H 10900 4400 50  0001 C CNN
	1    10900 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	11750 3050 11750 3400
Wire Wire Line
	10900 4400 11750 4400
Connection ~ 11750 4400
Text Label 5250 7650 2    50   ~ 0
CLK
Text Label 11500 8750 0    50   ~ 0
D4
Text Label 8750 8650 0    50   ~ 0
D1
Text Label 5650 5550 0    50   ~ 0
D1
Text Label 5650 5350 0    50   ~ 0
D4
$Comp
L Switch:SW_DPDT_x2 SW2
U 1 1 5D95FFDE
P 7950 6250
F 0 "SW2" H 7950 6575 50  0000 C CNN
F 1 "SW_DPDT_x2" H 7850 6400 50  0000 C CNN
F 2 "Button_Switch_THT:SW_6-Pin-Switch_Self_Lock_DPDT_Latching" H 7950 6250 50  0001 C CNN
F 3 "" H 7950 6250 50  0001 C CNN
	1    7950 6250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW2
U 2 1 5D960079
P 7950 6300
F 0 "SW2" H 7950 6625 50  0000 C CNN
F 1 "SW_DPDT_x2" H 7850 6500 50  0000 C CNN
F 2 "Button_Switch_THT:SW_6-Pin-Switch_Self_Lock_DPDT_Latching" H 7950 6300 50  0001 C CNN
F 3 "" H 7950 6300 50  0001 C CNN
	2    7950 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 6300 7750 6300
Wire Wire Line
	8250 6300 8250 6350
Wire Wire Line
	8250 6350 8150 6350
Wire Wire Line
	8150 6350 8150 6400
Connection ~ 8150 6350
Wire Wire Line
	8150 6200 8150 6150
Wire Wire Line
	7750 6300 7750 6250
Connection ~ 7750 6300
Wire Wire Line
	8750 8650 8800 8650
Wire Wire Line
	8800 8650 8800 7550
Wire Wire Line
	11750 4400 11750 5400
Wire Wire Line
	5650 4850 4750 4850
Wire Wire Line
	4750 4850 4750 6850
Wire Wire Line
	10050 6450 9950 6450
Wire Wire Line
	9950 6450 9950 6850
Wire Wire Line
	10050 6700 10000 6700
Wire Wire Line
	10000 6700 10000 6900
Wire Wire Line
	10000 6900 4850 6900
Wire Wire Line
	4850 6900 4850 4950
Wire Wire Line
	4850 4950 5650 4950
Wire Wire Line
	4750 6850 9950 6850
Wire Wire Line
	10050 6950 4950 6950
Wire Wire Line
	4950 6950 4950 5050
Wire Wire Line
	4950 5050 5650 5050
Text Label 10050 6450 0    50   ~ 0
otherLed
Text Label 10050 6700 0    50   ~ 0
offLed
Text Label 10050 6950 0    50   ~ 0
onLed
Text Label 7200 4650 0    50   ~ 0
pushButton
Text Label 6650 5450 0    50   ~ 0
slideSwitch
Text Label 6650 5550 0    50   ~ 0
pot
Text Label 7850 4950 0    50   ~ 0
pot
Text Label 6650 5950 0    50   ~ 0
monitor
Text Label 5250 7900 2    50   ~ 0
data
Text Label 6650 5650 0    50   ~ 0
data
Text Label 6650 5750 0    50   ~ 0
CLK
$Comp
L connectors:HEADER-1x01 d2.1
U 1 1 5DA4CDFB
P 5400 5250
F 0 "d2.1" H 5369 5038 60  0000 C CNB
F 1 "HEADER-1x01" H 5369 5129 40  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5250 5225 60  0001 C CNN
F 3 "" H 5350 5325 60  0001 C CNN
F 4 "-" H 5350 5450 40  0001 L BNN "Part"
F 5 "Connector" H 5350 5550 40  0001 L BNN "Family"
	1    5400 5250
	-1   0    0    1   
$EndComp
$Comp
L connectors:HEADER-1x01 d3.1
U 1 1 5DA4CEF7
P 5400 5450
F 0 "d3.1" H 5369 5238 60  0000 C CNB
F 1 "HEADER-1x01" H 5369 5329 40  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5250 5425 60  0001 C CNN
F 3 "" H 5350 5525 60  0001 C CNN
F 4 "-" H 5350 5650 40  0001 L BNN "Part"
F 5 "Connector" H 5350 5750 40  0001 L BNN "Family"
	1    5400 5450
	-1   0    0    1   
$EndComp
$Comp
L connectors:HEADER-1x01 d2
U 1 1 5DA4CFD7
P 9600 8400
F 0 "d2" V 9607 8317 60  0000 R CNB
F 1 "HEADER-1x01" V 9516 8317 40  0000 R CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 9450 8375 60  0001 C CNN
F 3 "" H 9550 8475 60  0001 C CNN
F 4 "-" H 9550 8600 40  0001 L BNN "Part"
F 5 "Connector" H 9550 8700 40  0001 L BNN "Family"
	1    9600 8400
	0    -1   -1   0   
$EndComp
$Comp
L connectors:HEADER-1x01 d3
U 1 1 5DA4D20E
P 10500 8400
F 0 "d3" V 10507 8317 60  0000 R CNB
F 1 "HEADER-1x01" V 10416 8317 40  0000 R CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 10350 8375 60  0001 C CNN
F 3 "" H 10450 8475 60  0001 C CNN
F 4 "-" H 10450 8600 40  0001 L BNN "Part"
F 5 "Connector" H 10450 8700 40  0001 L BNN "Family"
	1    10500 8400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10500 8750 10550 8750
Wire Wire Line
	10550 8750 10550 8550
Wire Wire Line
	10550 8550 10500 8550
Wire Wire Line
	9600 8750 9650 8750
Wire Wire Line
	9650 8750 9650 8550
Wire Wire Line
	9650 8550 9600 8550
$Comp
L Display_Character:KCSA02-107 U5
U 1 1 5DCB2EF5
P 9300 8350
F 0 "U5" H 9300 9017 50  0000 C CNN
F 1 "KCSA02-107" H 9300 8926 50  0000 C CNN
F 2 "Display_7Segment:7SegmentLED_LTS6760_LTS6780" H 9300 7750 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/KCSA02-107(Ver.10A).pdf" H 8800 8825 50  0001 L CNN
	1    9300 8350
	1    0    0    -1  
$EndComp
Text Label 6650 5850 0    50   ~ 0
buzz
Text Label 4950 3200 2    50   ~ 0
buzz
$Comp
L Transistor_BJT:BC547 Q6
U 1 1 5D9FED94
P 13350 2000
F 0 "Q6" V 13586 2000 50  0000 C CNN
F 1 "BC547" V 13677 2000 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 13550 1925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 13350 2000 50  0001 L CNN
	1    13350 2000
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q5
U 1 1 5D9FEEFB
P 13000 2350
F 0 "Q5" V 13236 2350 50  0000 C CNN
F 1 "BC547" V 13327 2350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 13200 2275 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 13000 2350 50  0001 L CNN
	1    13000 2350
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q4
U 1 1 5D9FEF99
P 12600 2650
F 0 "Q4" V 12836 2650 50  0000 C CNN
F 1 "BC547" V 12927 2650 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 12800 2575 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 12600 2650 50  0001 L CNN
	1    12600 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5D9FF036
P 13550 2250
F 0 "R17" H 13620 2296 50  0000 L CNN
F 1 "1M" H 13620 2205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 13480 2250 50  0001 C CNN
F 3 "~" H 13550 2250 50  0001 C CNN
	1    13550 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5D9FF104
P 13200 2600
F 0 "R16" H 13270 2646 50  0000 L CNN
F 1 "100K" H 13270 2555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 13130 2600 50  0001 C CNN
F 3 "~" H 13200 2600 50  0001 C CNN
	1    13200 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5D9FF192
P 12800 2900
F 0 "R15" H 12870 2946 50  0000 L CNN
F 1 "1K" H 12870 2855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 12730 2900 50  0001 C CNN
F 3 "~" H 12800 2900 50  0001 C CNN
	1    12800 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5DA0D55E
P 12150 2950
F 0 "D1" V 12196 2871 50  0000 R CNN
F 1 "D" V 12105 2871 50  0000 R CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 12150 2950 50  0001 C CNN
F 3 "~" H 12150 2950 50  0001 C CNN
	1    12150 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R14
U 1 1 5DA0D756
P 12150 3250
F 0 "R14" H 12220 3296 50  0000 L CNN
F 1 "2.2K" H 12220 3205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 12080 3250 50  0001 C CNN
F 3 "~" H 12150 3250 50  0001 C CNN
	1    12150 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	13350 1450 13350 1800
Wire Wire Line
	13150 2100 13000 2100
Wire Wire Line
	13000 2100 13000 2150
Wire Wire Line
	12800 2450 12600 2450
Wire Wire Line
	9850 3300 12800 3300
Wire Wire Line
	13550 3300 13550 2400
Connection ~ 9850 3300
Wire Wire Line
	13200 2750 13200 3300
Connection ~ 13200 3300
Wire Wire Line
	13200 3300 13550 3300
Wire Wire Line
	12800 3050 12800 3300
Connection ~ 12800 3300
Wire Wire Line
	12800 3300 13200 3300
Wire Wire Line
	12400 2750 12150 2750
Wire Wire Line
	12150 2750 12150 2800
Connection ~ 12150 3100
Connection ~ 11750 3400
Wire Wire Line
	11750 3400 11750 4400
Wire Wire Line
	11150 3100 11150 2650
Text Label 11150 2650 0    50   ~ 0
monitor
Wire Wire Line
	5800 3400 9100 3400
Wire Wire Line
	9150 3200 9550 3200
Wire Wire Line
	9150 3300 9450 3300
Connection ~ 9450 3300
Wire Wire Line
	7200 8750 8150 8750
Wire Wire Line
	7400 8150 8150 8150
Wire Wire Line
	7500 8050 8150 8050
Wire Wire Line
	7300 8250 8150 8250
Wire Wire Line
	7200 8350 8150 8350
Wire Wire Line
	7500 8450 8150 8450
Wire Wire Line
	7400 8550 8150 8550
Wire Wire Line
	7300 8650 8150 8650
Wire Bus Line
	10750 7950 10750 8950
Wire Bus Line
	9750 7750 9750 8950
Wire Bus Line
	8850 7750 8850 8950
Wire Bus Line
	8000 7900 8000 8950
Text Label 9200 5500 0    50   ~ 0
offRelay
Text Label 5650 5950 2    50   ~ 0
offRelay
Text Label 9350 4600 0    50   ~ 0
onRelay
Text Label 5650 6050 2    50   ~ 0
onRelay
$Comp
L Device:CP1 C1
U 1 1 5DA150C2
P 7600 5800
F 0 "C1" H 7715 5846 50  0000 L CNN
F 1 "10uF" H 7715 5755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 7600 5800 50  0001 C CNN
F 3 "~" H 7600 5800 50  0001 C CNN
	1    7600 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 3100 11950 3100
Wire Wire Line
	11750 3400 11950 3400
$Comp
L Device:CP1 C2
U 1 1 5DA15D96
P 11950 3250
F 0 "C2" H 12065 3296 50  0000 L CNN
F 1 "100uF" H 12065 3205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 11950 3250 50  0001 C CNN
F 3 "~" H 11950 3250 50  0001 C CNN
	1    11950 3250
	1    0    0    -1  
$EndComp
Connection ~ 11950 3100
Wire Wire Line
	11950 3100 12150 3100
Connection ~ 11950 3400
Wire Wire Line
	11950 3400 12150 3400
$Comp
L connectors:HEADER-1x01 ANT1
U 1 1 5DA18092
P 13200 1450
F 0 "ANT1" H 13169 1238 60  0000 C CNB
F 1 "ANT" H 13169 1329 40  0000 C CIN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 13050 1425 60  0001 C CNN
F 3 "" H 13150 1525 60  0001 C CNN
F 4 "-" H 13150 1650 40  0001 L BNN "Part"
F 5 "Connector" H 13150 1750 40  0001 L BNN "Family"
	1    13200 1450
	-1   0    0    1   
$EndComp
$EndSCHEMATC
