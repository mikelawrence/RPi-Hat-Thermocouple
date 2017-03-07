The MAX31855 Python file is based on [Adafruit's Python MAX31855 library](https://github.com/adafruit/Adafruit_Python_MAX31855).

It was modifed to use [RPi.GPIO](https://sourceforge.net/projects/raspberry-gpio-python/) and [Spidev](https://github.com/doceme/py-spidev). This library was further expanded to support the RPi Thermocouple Hat's way of connecting multiple MAX31855 chips to CE0 through a 2to4 decoder chip.
