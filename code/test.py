#!/usr/bin/python3
# Copyright (c) 2017 Mike Lawrence
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

# Can enable debug output by uncommenting:
#import logging
#logging.basicConfig(level=logging.DEBUG)

import time

from w1thermsensor import W1ThermSensor
import RPi.GPIO as GPIO
import MAX31855 as MAX31855

# board DS18S20 sensor
#boardSensor = W1ThermSensor()

# just creating the object will open the correct port and address lines
remoteSensor = MAX31855.MAX31855()

# Define a function to convert celsius to fahrenheit.
def c_to_f(c):
        return c * 9.0 / 5.0 + 32.0

# Loop printing measurements every second.
try:
  print('Press Ctrl-C to quit.')
  while True:
    #temp = boardSensor.get_temperature()
    #print('DS18S20 Temperature: {0:0.3F}C / {1:0.3F}F'.format(temp, c_to_f(temp)))

    for n in range(0,3):
      temp = remoteSensor.readTempC(n)
      internal = remoteSensor.readInternalC(n)
      linearized = remoteSensor.readLinearizedTempC(n)
      print('Thermocouple {0:d} Temperature: {1:0.3F}C / {2:0.3F}F'.format(n, temp, c_to_f(temp)))
      print('      Internal Temperature: {0:0.3F}C / {1:0.3F}F'.format(internal, c_to_f(internal)))
      print('    Linearized Temperature: {0:0.3F}C / {1:0.3F}F'.format(internal, c_to_f(internal)))
    
    time.sleep(1.0)

finally:
  # release GPIO stuff
  GPIO.cleanup()
