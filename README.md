# Raspberry Pi Thermocouple Hat
This is a [Raspberry Pi B+ Hat](https://github.com/raspberrypi/hats) PCB that supports:
* Three MAX31855 Thermocouple Converters for remote temperature sensing
* DS18S20 1-Wire Thermometer for local hat temperature
* DS3231M I2C Real Time Clock for keeping the time when Raspberry is not connected to the internet

PCB is designed in [KiCad](http://kicad-pcb.org) which is a great free EDA toolset and is based on [RPi_Hat_Template](https://github.com/xesscorp/RPi_Hat_Template) by XESS Corp.

You can order parts from Mouser using this [shared BOM](http://www.mouser.com/ProjectManager/ProjectDetail.aspx?AccessID=00ba6ee981).

## Status
Board has been ordered from OSH Park but has not arrived yet so everything here is currently untested.

[![OSH Park](https://oshpark.com/assets/badge-5b7ec47045b78aef6eb9d83b3bac6b1920de805e9a0c227658eac6e19a045b9c.png)](https://oshpark.com/shared_projects/kyDU2zJh)

## Board Preview
<img src="meta/RPi-Hat-Thermocouple-brd.png" style="width:100%">

## Raspberry Pi Setup
This setup makes two key assumptions. First you are using Raspbian Jessie. Second Python3 is the target programming environment. Python3 should be installed by default but if it isn't run `sudo apt-get install python3-dev`.

### Configure ID EEPROM
Raspberry Pi Hats require an ID EEPROM with data that uniquely identifies every hat ever made. Start by cloning this repository on your Raspberry Pi, building the EEPROM tools, and make the the `eeprom_settings.eep` file.
```
cd ~/Documents
git clone https://github.com/mikelawrence/RPi-Hat-Thermocouple
cd ~/Documents/RPi-Hat-Thermocouple/eepprom/
make all
./eepmake eeprom_settings.txt eeprom_settings.eep
```
The last command writes the freshly generated and unique `eeprom_settings.eep` file but you must push and hold the write switch on the hat before executing this command. By default the EEPROM on the hat is write protected. Pushing the write switch allows writes to occur while the switch is pushed.
```
sudo ./eepflash.sh -w -f=eeprom_settings.eep -t=24c32
```
### Setup Interfaces
For this Hat you will need to enable the SPI, I2C and 1-Wire interfaces. From the command line type
`sudo raspi-config ` and follow the prompts to install SPI support in the kernel.

<img src="meta/raspi-config-1.png" width="682">

<img src="meta/raspi-config-2.png" width="682">

<img src="meta/raspi-config-3.png" width="682">

Now follow the same actions but enabling the I2C and 1-Wire interfaces.

It's time to reboot your Raspberry Pi with `sudo reboot`.

### Configuring the DS3231 RTC
Now let's see if the RTC is is present on the I2C bus by running `sudo i2cdetect -y 1`. If you get a `command not found` you will need to install it with `sudo apt-get install python-smbus i2c-tools`. Looking at the output of the `i2cdetect` command you will see `68` in a field of `--` when the RTC is detected on the bus.
```
pi@raspberrypi:~ $ sudo i2cdetect -y 1
     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
00:          -- -- -- -- -- -- -- -- -- -- -- -- --
10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
40: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
60: -- -- -- -- -- -- -- -- 68 -- -- -- -- -- -- --
70: -- -- -- -- -- -- -- --                         
```
Enable kernel support for the DS3231 RTC by adding a device tree overlay by running `sudo nano /boot/config.txt` and adding the following to the end of the file. Don't forget to save the file.
```
# Enable Real Time Clock
dtoverlay=i2c-rtc,ds3231
```
Reboot again. Now when `sudo i2cdetect -y 1` is run we see:
```
pi@raspberrypi:~ $ sudo i2cdetect -y 1
     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
00:          -- -- -- -- -- -- -- -- -- -- -- -- --
10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
40: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
60: -- -- -- -- -- -- -- -- UU -- -- -- -- -- -- --
70: -- -- -- -- -- -- -- --                         
```
The `UU` at address 68 means the RTC is currently in use by a driver or in other words we have success!
### Using the DS18S20 1-Wire Thermometer
[Here](https://github.com/timofurrer/w1thermsensor) is a nice 1-Wire python library that also supports command line reading of the temperature. This library is most likely installed but if not install it with `sudo apt-get install python3-w1thermsensor`.

Now test the Thermocouple Hat's DS18S20 temperature sensor with
```
pi@raspberrypi:/ $ w1thermsensor all
Got temperatures of 0 sensors:
```
### Using the MAX31855 SPI Thermocouple Converters
The Thermocouple Hat design gets around the Raspberry Pi limitation of only two chip enables for the hardware SPI0 interface by adding a 74LVC139A 2to4 Decoder to CEO. The address lines of the 2to4 decoder are connected to GPIO24 and GPIO23 so when SPI0.CE0 is sent low only one of the Thermocouple converters will be selected according to the following logic.

| GPIO23 | GPIO24 | Thermocouple |
|--------|--------|--------------|
| 0      | 0      | TC1          |
| 0      | 1      | TC2          |
| 1      | 0      | TC3          |

[SPIDEV](https://github.com/doceme/py-spidev) is a commonly used Python library for Raspberry Pi SPI programming. This library is most likely installed but if not install it with `sudo apt-get install python3-spidev`.

# Acknowledgments
[Adafruit](www.adafruit.com) released a guide to [configuring a RTC on a Raspberry Pi](https://cdn-learn.adafruit.com/downloads/pdf/adding-a-real-time-clock-to-raspberry-pi.pdf) that was extremely helpful is setting up the DS3231M RTC. If you are just looking to add a RTC to your Raspberry Pi then buy one from them.
