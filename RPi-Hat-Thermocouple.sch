EESchema Schematic File Version 2
LIBS:cui-ml
LIBS:Raspberry-ml
LIBS:memory-ml
LIBS:onsemi-ml
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
LIBS:switches
LIBS:maxim
LIBS:RPi-Hat-Thermocouple-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Raspberry Pi Thermocouple Hat"
Date "March 2017"
Rev "1.2"
Comp "Mike Lawrence"
Comment1 "Rev 1.1 Added Alert, Ext 1-Wire connections, and console connections."
Comment2 "Rev 1.2 Added R7 to prevent Alert from activating on power on."
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RPi_GPIO J1
U 1 1 5516AE26
P 1950 1450
F 0 "J1" H 2700 1700 60  0000 C CNN
F 1 "RPi_GPIO" H 2700 1600 60  0000 C CNN
F 2 "raspberry-ml:Pin_Header_Straight_2x20" H 1950 1450 60  0001 C CNN
F 3 "https://www.adafruit.com/products/2222" H 1950 1450 60  0001 C CNN
F 4 "2222" H 1950 1450 60  0001 C CNN "Part Number"
F 5 "Adafruit" H 1950 1450 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 1950 1450 60  0001 C CNN "Vendor"
F 7 "485-2222" H 1950 1450 60  0001 C CNN "Vendor Part Number"
	1    1950 1450
	1    0    0    -1  
$EndComp
$Comp
L MAX31855KASA U2
U 1 1 58A99B99
P 8000 1600
F 0 "U2" H 7700 1950 50  0000 L CNN
F 1 "MAX31855" H 7900 1250 50  0000 R CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 8000 1600 50  0001 C CIN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX31855.pdf" H 8000 1600 50  0001 C CNN
F 4 "MAX31855KASA+" H 8000 1600 60  0001 C CNN "Part Number"
F 5 "Maxim Integrated" H 8000 1600 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 8000 1600 60  0001 C CNN "Vendor"
F 7 "700-MAX31855KASA+" H 8000 1600 60  0001 C CNN "Vendor Part Number"
	1    8000 1600
	-1   0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 58A9B1BF
P 5200 5100
F 0 "R1" H 5250 5150 50  0000 L CNN
F 1 "1k" V 5200 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5130 5100 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C283.pdf" V 5200 5100 50  0001 C CNN
F 4 "1%" H 5250 5050 50  0000 L CNN "Tolerance"
F 5 "Panasonic" H 5200 5100 60  0001 C CNN "Manufacturer"
F 6 "ERJ-3EKF1001V" H 5200 5100 60  0001 C CNN "Part Number"
F 7 "Mouser" H 5200 5100 60  0001 C CNN "Vendor"
F 8 "667-ERJ-3EKF1001V" H 5200 5100 60  0001 C CNN "Vendor Part Number"
	1    5200 5100
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR22
U 1 1 58A9C6BD
P 5750 6200
F 0 "#PWR22" H 5750 5950 50  0001 C CNN
F 1 "GND" H 5750 6050 50  0000 C CNN
F 2 "" H 5750 6200 50  0000 C CNN
F 3 "" H 5750 6200 50  0000 C CNN
	1    5750 6200
	-1   0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 58A9C93F
P 4900 5100
F 0 "R2" H 4950 5150 50  0000 L CNN
F 1 "3.9k" V 4900 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4830 5100 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C283.pdf" V 4900 5100 50  0001 C CNN
F 4 "1%" H 4950 5050 50  0000 L CNN "Tolerance"
F 5 "Panasonic" H 4900 5100 60  0001 C CNN "Manufacturer"
F 6 "ERJ-3EKF3901V" H 4900 5100 60  0001 C CNN "Part Number"
F 7 "Mouser" H 4900 5100 60  0001 C CNN "Vendor"
F 8 "667-ERJ-3EKF3901V" H 4900 5100 60  0001 C CNN "Vendor Part Number"
	1    4900 5100
	-1   0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 58A9CC2E
P 4600 5100
F 0 "R3" H 4650 5150 50  0000 L CNN
F 1 "3.9k" V 4600 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4530 5100 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C283.pdf" V 4600 5100 50  0001 C CNN
F 4 "1%" H 4650 5050 50  0000 L CNN "Tolerance"
F 5 "Panasonic" H 4600 5100 60  0001 C CNN "Manufacturer"
F 6 "ERJ-3EKF3901V" H 4600 5100 60  0001 C CNN "Part Number"
F 7 "Mouser" H 4600 5100 60  0001 C CNN "Vendor"
F 8 "667-ERJ-3EKF3901V" H 4600 5100 60  0001 C CNN "Vendor Part Number"
	1    4600 5100
	-1   0    0    -1  
$EndComp
$Comp
L +3V3 #PWR19
U 1 1 58A9E27B
P 5750 4800
F 0 "#PWR19" H 5750 4650 50  0001 C CNN
F 1 "+3V3" H 5750 4940 50  0000 C CNN
F 2 "" H 5750 4800 50  0000 C CNN
F 3 "" H 5750 4800 50  0000 C CNN
	1    5750 4800
	-1   0    0    -1  
$EndComp
$Comp
L AT24CS32-SSHM U1
U 1 1 58A9E6D9
P 5750 5500
F 0 "U1" H 6000 5800 50  0000 R CNN
F 1 "AT24CS32" H 5450 5800 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5750 5500 50  0001 C CIN
F 3 "http://www.atmel.com/images/Atmel-8869-SEEPROM-AT24CS32-Datasheet.pdf" H 5750 5000 50  0001 C CNN
F 4 "AT24CS32-SSHM" H 5750 6000 60  0001 C CNN "Part Number"
F 5 "Atmel" H 5750 6100 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 5750 6200 60  0001 C CNN "Vendor"
F 7 "556-AT24CS32-SSHM-T" H 5800 6300 60  0001 C CNN "Vendor Part Number"
	1    5750 5500
	-1   0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x02 J2
U 1 1 58A9F16B
P 9300 1600
F 0 "J2" H 9300 1850 50  0000 C TNN
F 1 "Push Terminal" H 9300 1400 50  0000 C TNN
F 2 "Connectors_Phoenix:PhoenixContact_PTSM0,5_2-2,5-V_SMD" H 9300 1375 50  0001 C CNN
F 3 "https://www.phoenixcontact.com/online/portal/us?uri=pxc-oc-itemdetail:pid=1771091&library=usen&tab=1" H 9275 1600 50  0001 C CNN
F 4 "1771091" H 9300 1600 60  0001 C CNN "Part Number"
F 5 "Phoenix Contact" H 9300 1600 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 9300 1600 60  0001 C CNN "Vendor"
F 7 "651-1771091" H 9300 1600 60  0001 C CNN "Vendor Part Number"
	1    9300 1600
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 58A9F489
P 8750 1600
F 0 "C5" H 8850 1650 50  0000 L CNN
F 1 "10nF" H 8850 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8750 1600 50  0001 C CNN
F 3 "http://www.mouser.com/ProductDetail/Murata-Electronics/GRM188R71H103KA01D/?qs=sGAEpiMZZMs0AnBnWHyRQNOmsPzkISN05dIajb7qEY0%3d" H 8750 1600 50  0001 C CNN
F 4 "GRM188R71H103KA01D" H 8750 1600 60  0001 C CNN "Part Number"
F 5 "Murata Electronics" H 8750 1600 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 8750 1600 60  0001 C CNN "Vendor"
F 7 "81-GRM39X103K50D" H 8750 1600 60  0001 C CNN "Vendor Part Number"
	1    8750 1600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 58A9FAF4
P 6050 4850
F 0 "C1" V 5950 4850 50  0000 C CNN
F 1 "0.1uF" V 6150 4850 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 6050 4850 50  0001 C CNN
F 3 "http://www.mouser.com/ProductDetail/Murata-Electronics/GRM188R71H103KA01D/?qs=sGAEpiMZZMs0AnBnWHyRQNOmsPzkISN05dIajb7qEY0%3d" H 6050 4850 50  0001 C CNN
F 4 "GRM188R71H104KA93D" H 6050 4850 60  0001 C CNN "Part Number"
F 5 "Murata Electronics" H 6050 4850 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 6050 4850 60  0001 C CNN "Vendor"
F 7 "81-GRM39X104K50D" H 6050 4850 60  0001 C CNN "Vendor Part Number"
	1    6050 4850
	0    -1   1    0   
$EndComp
$Comp
L C_Small C2
U 1 1 58AA09C4
P 8300 1050
F 0 "C2" V 8400 1050 50  0000 C CNN
F 1 "0.1uF" V 8200 1050 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 8300 1050 50  0001 C CNN
F 3 "http://www.mouser.com/ProductDetail/Murata-Electronics/GRM188R71H103KA01D/?qs=sGAEpiMZZMs0AnBnWHyRQNOmsPzkISN05dIajb7qEY0%3d" H 8300 1050 50  0001 C CNN
F 4 "GRM188R71H104KA93D" H 8300 1050 60  0001 C CNN "Part Number"
F 5 "Murata Electronics" H 8300 1050 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 8300 1050 60  0001 C CNN "Vendor"
F 7 "81-GRM39X104K50D" H 8300 1050 60  0001 C CNN "Vendor Part Number"
	1    8300 1050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR7
U 1 1 58AA0BFC
P 8000 2100
F 0 "#PWR7" H 8000 1850 50  0001 C CNN
F 1 "GND" H 8000 1950 50  0000 C CNN
F 2 "" H 8000 2100 50  0000 C CNN
F 3 "" H 8000 2100 50  0000 C CNN
	1    8000 2100
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR1
U 1 1 58AA0C37
P 8000 950
F 0 "#PWR1" H 8000 800 50  0001 C CNN
F 1 "+3V3" H 8000 1090 50  0000 C CNN
F 2 "" H 8000 950 50  0000 C CNN
F 3 "" H 8000 950 50  0000 C CNN
	1    8000 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 58AA0CAF
P 8500 1050
F 0 "#PWR2" H 8500 800 50  0001 C CNN
F 1 "GND" H 8500 900 50  0000 C CNN
F 2 "" H 8500 1050 50  0000 C CNN
F 3 "" H 8500 1050 50  0000 C CNN
	1    8500 1050
	0    -1   -1   0   
$EndComp
Text Notes 9400 1550 0    60   ~ 0
+ Thermocouple 1
Text Notes 9400 1750 0    60   ~ 0
- Thermocouple 1\n
$Comp
L MAX31855KASA U3
U 1 1 58AA1493
P 8000 3350
F 0 "U3" H 7700 3700 50  0000 L CNN
F 1 "MAX31855" H 8100 3700 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 8000 3350 50  0001 C CIN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX31855.pdf" H 8000 3350 50  0001 C CNN
F 4 "MAX31855KASA+" H 8000 3350 60  0001 C CNN "Part Number"
F 5 "Maxim Integrated" H 8000 3350 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 8000 3350 60  0001 C CNN "Vendor"
F 7 "700-MAX31855KASA+" H 8000 3350 60  0001 C CNN "Vendor Part Number"
	1    8000 3350
	-1   0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x02 J3
U 1 1 58AA149D
P 9300 3350
F 0 "J3" H 9300 3600 50  0000 C TNN
F 1 "Push Terminal" H 9300 3150 50  0000 C TNN
F 2 "Connectors_Phoenix:PhoenixContact_PTSM0,5_2-2,5-V_SMD" H 9300 3125 50  0001 C CNN
F 3 "https://www.phoenixcontact.com/online/portal/us?uri=pxc-oc-itemdetail:pid=1771091&library=usen&tab=1" H 9275 3350 50  0001 C CNN
F 4 "1771091" H 9300 3350 60  0001 C CNN "Part Number"
F 5 "Phoenix Contact" H 9300 3350 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 9300 3350 60  0001 C CNN "Vendor"
F 7 "651-1771091" H 9300 3350 60  0001 C CNN "Vendor Part Number"
	1    9300 3350
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 58AA14A7
P 8750 3350
F 0 "C6" H 8850 3400 50  0000 L CNN
F 1 "10nF" H 8850 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8750 3350 50  0001 C CNN
F 3 "http://www.mouser.com/ProductDetail/Murata-Electronics/GRM188R71H103KA01D/?qs=sGAEpiMZZMs0AnBnWHyRQNOmsPzkISN05dIajb7qEY0%3d" H 8750 3350 50  0001 C CNN
F 4 "GRM188R71H103KA01D" H 8750 3350 60  0001 C CNN "Part Number"
F 5 "Murata Electronics" H 8750 3350 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 8750 3350 60  0001 C CNN "Vendor"
F 7 "81-GRM39X103K50D" H 8750 3350 60  0001 C CNN "Vendor Part Number"
	1    8750 3350
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 58AA14B5
P 8300 2800
F 0 "C3" V 8400 2800 50  0000 C CNN
F 1 "0.1uF" V 8200 2800 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 8300 2800 50  0001 C CNN
F 3 "http://www.mouser.com/ProductDetail/Murata-Electronics/GRM188R71H103KA01D/?qs=sGAEpiMZZMs0AnBnWHyRQNOmsPzkISN05dIajb7qEY0%3d" H 8300 2800 50  0001 C CNN
F 4 "GRM188R71H104KA93D" H 8300 2800 60  0001 C CNN "Part Number"
F 5 "Murata Electronics" H 8300 2800 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 8300 2800 60  0001 C CNN "Vendor"
F 7 "81-GRM39X104K50D" H 8300 2800 60  0001 C CNN "Vendor Part Number"
	1    8300 2800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR14
U 1 1 58AA14BB
P 8000 3850
F 0 "#PWR14" H 8000 3600 50  0001 C CNN
F 1 "GND" H 8000 3700 50  0000 C CNN
F 2 "" H 8000 3850 50  0000 C CNN
F 3 "" H 8000 3850 50  0000 C CNN
	1    8000 3850
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR8
U 1 1 58AA14C1
P 8000 2700
F 0 "#PWR8" H 8000 2550 50  0001 C CNN
F 1 "+3V3" H 8000 2840 50  0000 C CNN
F 2 "" H 8000 2700 50  0000 C CNN
F 3 "" H 8000 2700 50  0000 C CNN
	1    8000 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR9
U 1 1 58AA14C7
P 8500 2800
F 0 "#PWR9" H 8500 2550 50  0001 C CNN
F 1 "GND" H 8500 2650 50  0000 C CNN
F 2 "" H 8500 2800 50  0000 C CNN
F 3 "" H 8500 2800 50  0000 C CNN
	1    8500 2800
	0    -1   -1   0   
$EndComp
Text Notes 9400 3300 0    60   ~ 0
+ Thermocouple 2
Text Notes 9400 3500 0    60   ~ 0
- Thermocouple 2\n
$Comp
L MAX31855KASA U4
U 1 1 58AA1582
P 8000 5150
F 0 "U4" H 7700 5500 50  0000 L CNN
F 1 "MAX31855" H 8100 5500 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 8000 5150 50  0001 C CIN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX31855.pdf" H 8000 5150 50  0001 C CNN
F 4 "MAX31855KASA+" H 8000 5150 60  0001 C CNN "Part Number"
F 5 "Maxim Integrated" H 8000 5150 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 8000 5150 60  0001 C CNN "Vendor"
F 7 "700-MAX31855KASA+" H 8000 5150 60  0001 C CNN "Vendor Part Number"
	1    8000 5150
	-1   0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x02 J4
U 1 1 58AA158C
P 9300 5150
F 0 "J4" H 9300 5400 50  0000 C TNN
F 1 "Push Terminal" H 9300 4950 50  0000 C TNN
F 2 "Connectors_Phoenix:PhoenixContact_PTSM0,5_2-2,5-V_SMD" H 9300 4925 50  0001 C CNN
F 3 "https://www.phoenixcontact.com/online/portal/us?uri=pxc-oc-itemdetail:pid=1771091&library=usen&tab=1" H 9275 5150 50  0001 C CNN
F 4 "1771091" H 9300 5150 60  0001 C CNN "Part Number"
F 5 "Phoenix Contact" H 9300 5150 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 9300 5150 60  0001 C CNN "Vendor"
F 7 "651-1771091" H 9300 5150 60  0001 C CNN "Vendor Part Number"
	1    9300 5150
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C7
U 1 1 58AA1596
P 8750 5150
F 0 "C7" H 8850 5200 50  0000 L CNN
F 1 "10nF" H 8850 5100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8750 5150 50  0001 C CNN
F 3 "http://www.mouser.com/ProductDetail/Murata-Electronics/GRM188R71H103KA01D/?qs=sGAEpiMZZMs0AnBnWHyRQNOmsPzkISN05dIajb7qEY0%3d" H 8750 5150 50  0001 C CNN
F 4 "GRM188R71H103KA01D" H 8750 5150 60  0001 C CNN "Part Number"
F 5 "Murata Electronics" H 8750 5150 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 8750 5150 60  0001 C CNN "Vendor"
F 7 "81-GRM39X103K50D" H 8750 5150 60  0001 C CNN "Vendor Part Number"
	1    8750 5150
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 58AA15A4
P 8300 4600
F 0 "C4" V 8400 4600 50  0000 C CNN
F 1 "0.1uF" V 8200 4600 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 8300 4600 50  0001 C CNN
F 3 "http://www.mouser.com/ProductDetail/Murata-Electronics/GRM188R71H103KA01D/?qs=sGAEpiMZZMs0AnBnWHyRQNOmsPzkISN05dIajb7qEY0%3d" H 8300 4600 50  0001 C CNN
F 4 "GRM188R71H104KA93D" H 8300 4600 60  0001 C CNN "Part Number"
F 5 "Murata Electronics" H 8300 4600 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 8300 4600 60  0001 C CNN "Vendor"
F 7 "81-GRM39X104K50D" H 8300 4600 60  0001 C CNN "Vendor Part Number"
	1    8300 4600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR20
U 1 1 58AA15AA
P 8000 5650
F 0 "#PWR20" H 8000 5400 50  0001 C CNN
F 1 "GND" H 8000 5500 50  0000 C CNN
F 2 "" H 8000 5650 50  0000 C CNN
F 3 "" H 8000 5650 50  0000 C CNN
	1    8000 5650
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR15
U 1 1 58AA15B0
P 8000 4500
F 0 "#PWR15" H 8000 4350 50  0001 C CNN
F 1 "+3V3" H 8000 4640 50  0000 C CNN
F 2 "" H 8000 4500 50  0000 C CNN
F 3 "" H 8000 4500 50  0000 C CNN
	1    8000 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR18
U 1 1 58AA15B6
P 8500 4600
F 0 "#PWR18" H 8500 4350 50  0001 C CNN
F 1 "GND" H 8500 4450 50  0000 C CNN
F 2 "" H 8500 4600 50  0000 C CNN
F 3 "" H 8500 4600 50  0000 C CNN
	1    8500 4600
	0    -1   -1   0   
$EndComp
Text Notes 9400 5100 0    60   ~ 0
+ Thermocouple 3
Text Notes 9400 5300 0    60   ~ 0
- Thermocouple 3
$Comp
L +3V3 #PWR3
U 1 1 58AA1D76
P 1650 1300
F 0 "#PWR3" H 1650 1150 50  0001 C CNN
F 1 "+3V3" H 1650 1440 50  0000 C CNN
F 2 "" H 1650 1300 50  0000 C CNN
F 3 "" H 1650 1300 50  0000 C CNN
	1    1650 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR13
U 1 1 58AA2E66
P 3750 3550
F 0 "#PWR13" H 3750 3300 50  0001 C CNN
F 1 "GND" H 3750 3400 50  0000 C CNN
F 2 "" H 3750 3550 50  0000 C CNN
F 3 "" H 3750 3550 50  0000 C CNN
	1    3750 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 58AA2EAA
P 1550 3550
F 0 "#PWR12" H 1550 3300 50  0001 C CNN
F 1 "GND" H 1550 3400 50  0000 C CNN
F 2 "" H 1550 3550 50  0000 C CNN
F 3 "" H 1550 3550 50  0000 C CNN
	1    1550 3550
	1    0    0    -1  
$EndComp
$Comp
L 74LS139 U5
U 1 1 58ADBEF1
P 5750 2300
F 0 "U5" H 5750 2400 50  0000 C CNN
F 1 "74LVC139" H 5750 2200 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 5750 2300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc139a.pdf" H 5750 2300 50  0001 C CNN
F 4 "SN74LVC139APWR" H 5750 2300 60  0001 C CNN "Part Number"
F 5 "TI" H 5750 2300 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 5750 2300 60  0001 C CNN "Vendor"
F 7 "595-SN74LVC139APWR" H 5750 2300 60  0001 C CNN "Vendor Part Number"
	1    5750 2300
	1    0    0    -1  
$EndComp
$Comp
L 74LS139 U5
U 2 1 58ADDB2B
P 5750 3750
F 0 "U5" H 5750 3850 50  0000 C CNN
F 1 "74LVC139" H 5750 3650 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 5750 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc139a.pdf" H 5750 3750 50  0001 C CNN
F 4 "SN74LVC139APWR" H 5750 3750 60  0001 C CNN "Part Number"
F 5 "TI" H 5750 3750 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 5750 3750 60  0001 C CNN "Vendor"
F 7 "595-SN74LVC139APWR" H 5750 3750 60  0001 C CNN "Vendor Part Number"
	2    5750 3750
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR11
U 1 1 58ADE093
P 4850 3400
F 0 "#PWR11" H 4850 3250 50  0001 C CNN
F 1 "+3V3" H 4850 3540 50  0000 C CNN
F 2 "" H 4850 3400 50  0000 C CNN
F 3 "" H 4850 3400 50  0000 C CNN
	1    4850 3400
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR5
U 1 1 58ADEFE7
P 5300 1550
F 0 "#PWR5" H 5300 1400 50  0001 C CNN
F 1 "+3V3" H 5300 1690 50  0000 C CNN
F 2 "" H 5300 1550 50  0000 C CNN
F 3 "" H 5300 1550 50  0000 C CNN
	1    5300 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR10
U 1 1 58ADF0BC
P 5300 2900
F 0 "#PWR10" H 5300 2650 50  0001 C CNN
F 1 "GND" H 5300 2750 50  0000 C CNN
F 2 "" H 5300 2900 50  0000 C CNN
F 3 "" H 5300 2900 50  0000 C CNN
	1    5300 2900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C8
U 1 1 58AE110C
P 5500 1650
F 0 "C8" V 5400 1650 50  0000 C CNN
F 1 "0.1uF" V 5600 1650 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 5500 1650 50  0001 C CNN
F 3 "http://www.mouser.com/ProductDetail/Murata-Electronics/GRM188R71H103KA01D/?qs=sGAEpiMZZMs0AnBnWHyRQNOmsPzkISN05dIajb7qEY0%3d" H 5500 1650 50  0001 C CNN
F 4 "GRM188R71H104KA93D" H 5500 1650 60  0001 C CNN "Part Number"
F 5 "Murata Electronics" H 5500 1650 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 5500 1650 60  0001 C CNN "Vendor"
F 7 "81-GRM39X104K50D" H 5500 1650 60  0001 C CNN "Vendor Part Number"
	1    5500 1650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR6
U 1 1 58AE1194
P 5750 1650
F 0 "#PWR6" H 5750 1400 50  0001 C CNN
F 1 "GND" H 5750 1500 50  0000 C CNN
F 2 "" H 5750 1650 50  0000 C CNN
F 3 "" H 5750 1650 50  0000 C CNN
	1    5750 1650
	0    -1   -1   0   
$EndComp
$Comp
L SW_Push SW1
U 1 1 58AE1963
P 5200 5900
F 0 "SW1" V 5150 6050 50  0000 L CNN
F 1 "Write" V 5250 6050 50  0000 L CNN
F 2 "Buttons_Switches_SMD:SW_SPST_B3U-1000P-B" H 5200 6100 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/307/en-b3u-3615.pdf" H 5200 6100 50  0001 C CNN
F 4 "B3U-1000P" H 5200 5900 60  0001 C CNN "Part Number"
F 5 "Omron" H 5200 5900 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 5200 5900 60  0001 C CNN "Vendor"
F 7 "653-B3U-1000P" H 5200 5900 60  0001 C CNN "Vendor Part Number"
	1    5200 5900
	0    -1   1    0   
$EndComp
Text Label 8450 1500 0    60   ~ 0
TC1+
Text Label 8450 3250 0    60   ~ 0
TC2+
Text Label 8450 1700 0    60   ~ 0
TC1-
Text Label 8450 3450 0    60   ~ 0
TC2-
Text Label 8450 5050 0    60   ~ 0
TC3+
Text Label 8450 5250 0    60   ~ 0
TC3-
Text Label 6700 2000 0    60   ~ 0
~TC_CS1~
Text Label 6700 2200 0    60   ~ 0
~TC_CS2~
Text Label 6700 2400 0    60   ~ 0
~TC_CS3~
$Comp
L DS18S20 U6
U 1 1 58AFBC55
P 2700 7050
F 0 "U6" H 2550 7300 50  0000 C CNN
F 1 "DS18S20" H 2700 6800 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 2550 7300 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS18S20.pdf" H 2550 7300 50  0001 C CNN
F 4 "DS18S20" H 2700 7050 60  0001 C CNN "Part Number"
F 5 "Maxim Integrated" H 2700 7050 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 2700 7050 60  0001 C CNN "Vendor"
F 7 "700-DS18S20" H 2700 7050 60  0001 C CNN "Vendor Part Number"
	1    2700 7050
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 58AFBF2D
P 1800 6600
F 0 "R4" V 1900 6600 50  0000 C CNN
F 1 "4.7k" V 1800 6600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1730 6600 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C283.pdf" V 1800 6600 50  0001 C CNN
F 4 "ERJ-3EKF4701V" H 1800 6600 60  0001 C CNN "Part Number"
F 5 "Panasonic" H 1800 6600 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 1800 6600 60  0001 C CNN "Vendor"
F 7 "667-ERJ-3EKF4701V" H 1800 6600 60  0001 C CNN "Vendor Part Number"
F 8 "1%" V 1700 6600 50  0000 C CNN "Tolerance"
	1    1800 6600
	0    1    -1   0   
$EndComp
$Comp
L Battery_Cell BT1
U 1 1 58B051ED
P 3300 5700
F 0 "BT1" H 3400 5800 50  0000 L CNN
F 1 "CR1225" H 3400 5700 50  0000 L CNN
F 2 "Battery_Holders:Keystone_3000_1x12mm-CoinCell" V 3300 5760 50  0001 C CNN
F 3 "http://www.keyelco.com/product-pdf.cfm?p=777" V 3300 5760 50  0001 C CNN
F 4 "3000" H 3300 5700 60  0001 C CNN "Part Number"
F 5 "Keystone Electronics" H 3300 5700 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 3300 5700 60  0001 C CNN "Vendor"
F 7 "534-3000" H 3300 5700 60  0001 C CNN "Vendor Part Number"
	1    3300 5700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR21
U 1 1 58B05713
P 2700 5900
F 0 "#PWR21" H 2700 5650 50  0001 C CNN
F 1 "GND" H 2700 5750 50  0000 C CNN
F 2 "" H 2700 5900 50  0000 C CNN
F 3 "" H 2700 5900 50  0000 C CNN
	1    2700 5900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C9
U 1 1 58B05917
P 2300 4600
F 0 "C9" V 2200 4600 50  0000 C CNN
F 1 "0.1uF" V 2400 4600 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 2300 4600 50  0001 C CNN
F 3 "http://www.mouser.com/ProductDetail/Murata-Electronics/GRM188R71H103KA01D/?qs=sGAEpiMZZMs0AnBnWHyRQNOmsPzkISN05dIajb7qEY0%3d" H 2300 4600 50  0001 C CNN
F 4 "GRM188R71H104KA93D" H 2300 4600 60  0001 C CNN "Part Number"
F 5 "Murata Electronics" H 2300 4600 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 2300 4600 60  0001 C CNN "Vendor"
F 7 "81-GRM39X104K50D" H 2300 4600 60  0001 C CNN "Vendor Part Number"
	1    2300 4600
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR17
U 1 1 58B05F55
P 2700 4550
F 0 "#PWR17" H 2700 4400 50  0001 C CNN
F 1 "+3V3" H 2700 4690 50  0000 C CNN
F 2 "" H 2700 4550 50  0000 C CNN
F 3 "" H 2700 4550 50  0000 C CNN
	1    2700 4550
	1    0    0    -1  
$EndComp
Text Notes 4950 4550 0    100  ~ 20
Hat ID EEPROM
Text Notes 2600 4300 0    100  ~ 20
RTC
Text Notes 2500 6400 0    100  ~ 20
Temp
$Comp
L +3V3 #PWR23
U 1 1 58B06FC2
P 2300 6500
F 0 "#PWR23" H 2300 6350 50  0001 C CNN
F 1 "+3V3" H 2300 6640 50  0000 C CNN
F 2 "" H 2300 6500 50  0000 C CNN
F 3 "" H 2300 6500 50  0000 C CNN
	1    2300 6500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR28
U 1 1 58B07074
P 2300 7350
F 0 "#PWR28" H 2300 7100 50  0001 C CNN
F 1 "GND" H 2300 7200 50  0000 C CNN
F 2 "" H 2300 7350 50  0000 C CNN
F 3 "" H 2300 7350 50  0000 C CNN
	1    2300 7350
	1    0    0    -1  
$EndComp
Text Label 1300 1750 0    60   ~ 0
T_OW
Text Label 1300 1650 0    60   ~ 0
T_SCL
Text Label 1300 1550 0    60   ~ 0
T_SDA
Text Label 4150 5650 0    60   ~ 0
ID_SC
Text Label 6700 1000 0    60   ~ 0
TC_MISO
Text Label 6700 900  0    60   ~ 0
TC_CLK
$Comp
L +3V3 #PWR16
U 1 1 58B0D3B6
P 1550 4550
F 0 "#PWR16" H 1550 4400 50  0001 C CNN
F 1 "+3V3" H 1550 4690 50  0000 C CNN
F 2 "" H 1550 4550 50  0000 C CNN
F 3 "" H 1550 4550 50  0000 C CNN
	1    1550 4550
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 58B0D452
P 1550 4900
F 0 "R5" H 1600 4900 50  0000 L CNN
F 1 "DNI" V 1550 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1480 4900 50  0001 C CNN
F 3 "" V 1550 4900 50  0001 C CNN
	1    1550 4900
	-1   0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 58B0DA02
P 1850 4900
F 0 "R6" H 1900 4900 50  0000 L CNN
F 1 "DNI" V 1850 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1780 4900 50  0001 C CNN
F 3 "" V 1850 4900 50  0001 C CNN
	1    1850 4900
	-1   0    0    -1  
$EndComp
$Comp
L DS3232M U7
U 1 1 58B198BC
P 2700 5250
F 0 "U7" H 3050 5650 50  0000 R CNN
F 1 "DS3231M" H 2600 5650 50  0000 R CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 2750 4850 50  0001 L CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS3231M.pdf" H 2970 5500 50  0001 C CNN
F 4 "DS3231MZ" H 2700 5250 60  0001 C CNN "Part Number"
F 5 "Maxim Integrated" H 2700 5250 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 2700 5250 60  0001 C CNN "Vendor"
F 7 "700-DS3231MZ+" H 2700 5250 60  0001 C CNN "Vendor Part Number"
	1    2700 5250
	1    0    0    -1  
$EndComp
Text Label 3900 2150 0    60   ~ 0
TC_A1
Text Label 3900 2250 0    60   ~ 0
TC_A0
Text Label 4150 5500 0    60   ~ 0
ID_SD
$Comp
L Buzzer BZ1
U 1 1 58C3BAEC
P 4950 6950
F 0 "BZ1" H 5100 7000 50  0000 L CNN
F 1 "Buzzer" H 5100 6900 50  0000 L CNN
F 2 "cui-ml:CMI-9655S-SMT" V 4925 7050 50  0001 C CNN
F 3 "http://www.cui.com/product/resource/cmi-9655s-smt.pdf" V 4925 7050 50  0001 C CNN
F 4 "CMI-9655S-SMT-TR" H 4950 6950 60  0001 C CNN "Part Number"
F 5 "CUI" H 4950 6950 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 4950 6950 60  0001 C CNN "Vendor"
F 7 "490-CMI-9655S-SMT-TR" H 4950 6950 60  0001 C CNN "Vendor Part Number"
	1    4950 6950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR4
U 1 1 58C3BCED
P 3750 1300
F 0 "#PWR4" H 3750 1150 50  0001 C CNN
F 1 "+5V" H 3750 1440 50  0000 C CNN
F 2 "" H 3750 1300 50  0000 C CNN
F 3 "" H 3750 1300 50  0000 C CNN
	1    3750 1300
	1    0    0    -1  
$EndComp
$Comp
L NUD3124 Q1
U 1 1 58C44EBA
P 4650 7350
F 0 "Q1" H 4850 7400 50  0000 L CNN
F 1 "NUD3124" H 4850 7300 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4850 7450 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/NUD3124-D.PDF" H 4650 7350 50  0001 C CNN
F 4 "NUD3124LT1G" H 4650 7350 60  0001 C CNN "Part Number"
F 5 "OnSemi" H 4650 7350 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 4650 7350 60  0001 C CNN "Vendor"
F 7 "863-NUD3124LT1G" H 4650 7350 60  0001 C CNN "Vendor Part Number"
	1    4650 7350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR25
U 1 1 58C460AE
P 4750 6750
F 0 "#PWR25" H 4750 6600 50  0001 C CNN
F 1 "+5V" H 4750 6890 50  0000 C CNN
F 2 "" H 4750 6750 50  0000 C CNN
F 3 "" H 4750 6750 50  0000 C CNN
	1    4750 6750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR29
U 1 1 58C4617D
P 4750 7800
F 0 "#PWR29" H 4750 7550 50  0001 C CNN
F 1 "GND" H 4750 7650 50  0000 C CNN
F 2 "" H 4750 7800 50  0000 C CNN
F 3 "" H 4750 7800 50  0000 C CNN
	1    4750 7800
	1    0    0    -1  
$EndComp
Text Notes 4600 6500 0    100  ~ 20
Alert
Text Label 4150 7350 0    60   ~ 0
ALERT
$Comp
L C_Small C10
U 1 1 58C47891
P 2700 6600
F 0 "C10" V 2600 6600 50  0000 C CNN
F 1 "0.1uF" V 2800 6600 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 2700 6600 50  0001 C CNN
F 3 "http://www.mouser.com/ProductDetail/Murata-Electronics/GRM188R71H103KA01D/?qs=sGAEpiMZZMs0AnBnWHyRQNOmsPzkISN05dIajb7qEY0%3d" H 2700 6600 50  0001 C CNN
F 4 "GRM188R71H104KA93D" H 2700 6600 60  0001 C CNN "Part Number"
F 5 "Murata Electronics" H 2700 6600 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 2700 6600 60  0001 C CNN "Vendor"
F 7 "81-GRM39X104K50D" H 2700 6600 60  0001 C CNN "Vendor Part Number"
	1    2700 6600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR24
U 1 1 58C47897
P 2950 6600
F 0 "#PWR24" H 2950 6350 50  0001 C CNN
F 1 "GND" H 2950 6450 50  0000 C CNN
F 2 "" H 2950 6600 50  0000 C CNN
F 3 "" H 2950 6600 50  0000 C CNN
	1    2950 6600
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X03 P1
U 1 1 58C498D6
P 1250 7500
F 0 "P1" V 1350 7500 50  0000 C CNN
F 1 "CONN_01X03" V 1350 7500 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.00mm" H 1250 7500 50  0001 C CNN
F 3 "" H 1250 7500 50  0000 C CNN
	1    1250 7500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR27
U 1 1 58C4A2EC
P 1500 7250
F 0 "#PWR27" H 1500 7000 50  0001 C CNN
F 1 "GND" H 1500 7100 50  0000 C CNN
F 2 "" H 1500 7250 50  0000 C CNN
F 3 "" H 1500 7250 50  0000 C CNN
	1    1500 7250
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR26
U 1 1 58C4A35A
P 1000 7250
F 0 "#PWR26" H 1000 7100 50  0001 C CNN
F 1 "+3V3" H 1000 7390 50  0000 C CNN
F 2 "" H 1000 7250 50  0000 C CNN
F 3 "" H 1000 7250 50  0000 C CNN
	1    1000 7250
	0    -1   -1   0   
$EndComp
Text Notes 900  7800 0    100  ~ 20
Ext 1-Wire
$Comp
L CONN_01X03 P2
U 1 1 58C4B7E1
P 4300 1850
F 0 "P2" H 4300 2050 50  0000 C CNN
F 1 "CONN_01X03" V 4400 1850 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 4300 1850 50  0001 C CNN
F 3 "" H 4300 1850 50  0000 C CNN
	1    4300 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5350 5200 5350
Wire Wire Line
	5200 5250 5200 5700
Wire Wire Line
	3750 5500 5350 5500
Wire Wire Line
	4900 5500 4900 5250
Wire Wire Line
	3900 5650 5350 5650
Wire Wire Line
	4600 5650 4600 5250
Wire Wire Line
	5750 5900 5750 6200
Wire Wire Line
	6300 6150 5200 6150
Connection ~ 5750 6150
Wire Wire Line
	5750 4800 5750 5100
Wire Wire Line
	5200 4850 5200 4950
Wire Wire Line
	4600 4850 5950 4850
Connection ~ 5750 4850
Wire Wire Line
	4900 4850 4900 4950
Connection ~ 5200 4850
Wire Wire Line
	4600 4850 4600 4950
Connection ~ 4900 4850
Connection ~ 5200 5350
Connection ~ 4900 5500
Connection ~ 4600 5650
Wire Wire Line
	950  2450 1750 2450
Wire Wire Line
	3900 2750 3650 2750
Wire Wire Line
	1450 2750 1750 2750
Connection ~ 8750 1500
Connection ~ 8750 1700
Wire Wire Line
	6300 4850 6300 6150
Wire Wire Line
	6150 5650 6300 5650
Connection ~ 6300 5650
Wire Wire Line
	6150 5500 6300 5500
Connection ~ 6300 5500
Wire Wire Line
	6150 5350 6300 5350
Connection ~ 6300 5350
Wire Wire Line
	6300 4850 6150 4850
Wire Wire Line
	8000 950  8000 1200
Connection ~ 8000 1050
Wire Wire Line
	8400 1050 8500 1050
Wire Wire Line
	8000 2000 8000 2100
Wire Wire Line
	8200 1050 8000 1050
Connection ~ 8750 3250
Connection ~ 8750 3450
Wire Wire Line
	8000 2700 8000 2950
Connection ~ 8000 2800
Wire Wire Line
	8400 2800 8500 2800
Wire Wire Line
	8000 3750 8000 3850
Wire Wire Line
	8200 2800 8000 2800
Connection ~ 8750 5050
Connection ~ 8750 5250
Wire Wire Line
	8000 4500 8000 4750
Connection ~ 8000 4600
Wire Wire Line
	8400 4600 8500 4600
Wire Wire Line
	8000 5550 8000 5650
Wire Wire Line
	8200 4600 8000 4600
Wire Wire Line
	850  2550 1750 2550
Wire Wire Line
	7350 1400 7600 1400
Wire Wire Line
	7450 1500 7600 1500
Wire Wire Line
	7450 5050 7600 5050
Wire Wire Line
	7450 1000 7450 5050
Connection ~ 7450 1500
Wire Wire Line
	7600 3250 7450 3250
Connection ~ 7450 3250
Wire Wire Line
	7350 4950 7600 4950
Wire Wire Line
	7350 900  7350 4950
Wire Wire Line
	7350 3150 7600 3150
Connection ~ 7350 1400
Connection ~ 7350 3150
Wire Wire Line
	1650 1450 1750 1450
Wire Wire Line
	1650 1300 1650 2250
Wire Wire Line
	1650 2250 1750 2250
Connection ~ 1650 1450
Wire Wire Line
	1550 1850 1750 1850
Wire Wire Line
	1550 1850 1550 3550
Wire Wire Line
	1550 2650 1750 2650
Wire Wire Line
	1550 3350 1750 3350
Connection ~ 1550 2650
Wire Wire Line
	3750 3050 3650 3050
Wire Wire Line
	3750 1650 3750 3550
Wire Wire Line
	3750 2850 3650 2850
Wire Wire Line
	3650 1650 3750 1650
Connection ~ 3750 2850
Wire Wire Line
	3650 2350 3750 2350
Connection ~ 3750 2350
Wire Wire Line
	3650 2050 3750 2050
Connection ~ 3750 2050
Connection ~ 3750 3050
Connection ~ 1550 3350
Wire Wire Line
	8400 1500 9100 1500
Wire Wire Line
	8400 1700 9100 1700
Wire Wire Line
	8400 3250 9100 3250
Wire Wire Line
	8400 3450 9100 3450
Wire Wire Line
	8400 5050 9100 5050
Wire Wire Line
	8400 5250 9100 5250
Wire Wire Line
	4900 2550 3650 2550
Wire Wire Line
	4900 2200 4700 2200
Wire Wire Line
	4700 2200 4700 2250
Wire Wire Line
	4700 2250 3650 2250
Wire Wire Line
	4900 2050 4600 2050
Wire Wire Line
	4600 2050 4600 2150
Wire Wire Line
	4600 2150 3650 2150
Wire Wire Line
	6600 2000 7250 2000
Wire Wire Line
	6600 2200 7250 2200
Wire Wire Line
	7250 2200 7250 3450
Wire Wire Line
	7250 3450 7600 3450
Wire Wire Line
	6600 2400 7150 2400
Wire Wire Line
	7150 2400 7150 5250
Wire Wire Line
	7150 5250 7600 5250
Wire Wire Line
	7250 2000 7250 1700
Wire Wire Line
	7250 1700 7600 1700
Wire Wire Line
	4900 3500 4850 3500
Wire Wire Line
	4850 3400 4850 4000
Wire Wire Line
	4850 3650 4900 3650
Wire Wire Line
	4850 4000 4900 4000
Connection ~ 4850 3650
Connection ~ 4850 3500
Wire Wire Line
	5300 1550 5300 1900
Wire Wire Line
	5300 2700 5300 2900
Wire Wire Line
	5400 1650 5300 1650
Connection ~ 5300 1650
Wire Wire Line
	5600 1650 5750 1650
Wire Wire Line
	5200 6150 5200 6100
Wire Wire Line
	3200 5450 3300 5450
Wire Wire Line
	3300 5450 3300 5500
Wire Wire Line
	2700 5750 2700 5900
Wire Wire Line
	2150 5850 3300 5850
Wire Wire Line
	3300 5850 3300 5800
Connection ~ 2700 5850
Wire Wire Line
	2400 4600 2700 4600
Wire Wire Line
	2700 4550 2700 4750
Connection ~ 2700 4600
Wire Wire Line
	2150 5850 2150 4600
Wire Wire Line
	2150 4600 2200 4600
Wire Wire Line
	2400 7150 2300 7150
Wire Wire Line
	2300 7150 2300 7350
Wire Wire Line
	2300 6950 2400 6950
Wire Wire Line
	2300 6500 2300 6950
Wire Wire Line
	1250 7050 2400 7050
Wire Wire Line
	1250 1750 1750 1750
Wire Wire Line
	1150 5150 2200 5150
Wire Wire Line
	1150 1650 1750 1650
Wire Wire Line
	1050 5250 2200 5250
Wire Wire Line
	1450 3950 3750 3950
Wire Wire Line
	1450 3950 1450 2750
Wire Wire Line
	950  2450 950  1000
Wire Wire Line
	950  1000 7450 1000
Wire Wire Line
	850  2550 850  900 
Wire Wire Line
	850  900  7350 900 
Wire Wire Line
	1850 5050 1850 5150
Connection ~ 1850 5150
Wire Wire Line
	1550 5050 1550 5250
Connection ~ 1550 5250
Wire Wire Line
	1550 4550 1550 4750
Wire Wire Line
	1850 4750 1850 4650
Wire Wire Line
	1850 4650 1550 4650
Connection ~ 1550 4650
Wire Wire Line
	3750 1550 3650 1550
Wire Wire Line
	3750 1300 3750 1550
Wire Wire Line
	3750 1450 3650 1450
Connection ~ 3750 1450
Wire Wire Line
	3750 3950 3750 5500
Wire Wire Line
	3900 5650 3900 2750
Wire Wire Line
	4850 7050 4750 7050
Wire Wire Line
	4750 7050 4750 7150
Wire Wire Line
	4850 6850 4750 6850
Wire Wire Line
	4750 6850 4750 6750
Wire Wire Line
	4750 7550 4750 7800
Wire Wire Line
	4450 7350 4050 7350
Wire Wire Line
	4050 4050 4050 7400
Wire Wire Line
	4050 4050 1350 4050
Wire Wire Line
	1350 4050 1350 2850
Wire Wire Line
	1350 2850 1750 2850
Wire Wire Line
	2800 6600 2950 6600
Wire Wire Line
	1950 6600 2600 6600
Connection ~ 2300 6600
Wire Wire Line
	1750 1550 1050 1550
Wire Wire Line
	1050 1550 1050 5250
Wire Wire Line
	1150 5150 1150 1650
Wire Wire Line
	1250 1750 1250 7300
Connection ~ 1250 7050
Wire Wire Line
	1500 7250 1350 7250
Wire Wire Line
	1350 7250 1350 7300
Wire Wire Line
	1000 7250 1150 7250
Wire Wire Line
	1150 7250 1150 7300
Wire Wire Line
	1650 6600 1250 6600
Connection ~ 1250 6600
Wire Wire Line
	4100 1750 3650 1750
Wire Wire Line
	3650 1850 4100 1850
Wire Wire Line
	4100 1950 3750 1950
Connection ~ 3750 1950
Text Notes 4000 1600 0    100  ~ 20
Console
Text Label 3900 1750 0    60   ~ 0
TX
Text Label 3900 1850 0    60   ~ 0
RX
Text Label 3900 1950 0    60   ~ 0
GND
Text Label 3900 2550 0    60   ~ 0
TC_CE
$Comp
L R R7
U 1 1 58D090D7
P 4050 7550
F 0 "R7" H 4000 7500 50  0000 R CNN
F 1 "4.7k" V 4050 7550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3980 7550 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C283.pdf" V 4050 7550 50  0001 C CNN
F 4 "ERJ-3EKF4701V" H 4050 7550 60  0001 C CNN "Part Number"
F 5 "Panasonic" H 4050 7550 60  0001 C CNN "Manufacturer"
F 6 "Mouser" H 4050 7550 60  0001 C CNN "Vendor"
F 7 "667-ERJ-3EKF4701V" H 4050 7550 60  0001 C CNN "Vendor Part Number"
F 8 "1%" H 4000 7600 50  0000 R CNN "Tolerance"
	1    4050 7550
	1    0    0    1   
$EndComp
Connection ~ 4050 7350
Wire Wire Line
	4050 7700 4050 7750
Wire Wire Line
	4050 7750 4750 7750
Connection ~ 4750 7750
$EndSCHEMATC
