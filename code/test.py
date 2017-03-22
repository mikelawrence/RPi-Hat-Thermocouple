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
from w1thermsensor import NoSensorFoundError
import RPi.GPIO as GPIO
import MAX31855 as MAX31855

# DS18S20 sensor on PCB
try:
  boardSensor = W1ThermSensor()
except NoSensorFoundError:
  boardSensor = None
  print('DS18S20 Sensor not found!')

# just creating the object will open the correct port and address lines
remoteSensor = MAX31855.MAX31855()

# turn alert signal into an output
ALERT = 5
GPIO.setmode(GPIO.BCM)
GPIO.setup(ALERT, GPIO.OUT)
GPIO.output(ALERT, GPIO.LOW)

# Define a function to convert celsius to fahrenheit.
def c_to_f(c):
  return c * 9.0 / 5.0 + 32.0

# Loop printing measurements every second.
try:
  print('Press Ctrl-C to quit.')
  print("Testing alert buzzer...")
  GPIO.output(ALERT, GPIO.HIGH)
  time.sleep(1)
  GPIO.output(ALERT, GPIO.LOW)
  while True:
    print()
    if boardSensor != None:
      try:
        temp = boardSensor.get_temperature()
        print('DS18S20 on PCB: {0:0.2F}C / {1:0.2F}F'.format(temp, c_to_f(temp)))
      except KeyboardInterrupt:
        break
    for n in range(0,3):
      tempState = remoteSensor.readState(n)
      temp = remoteSensor.readLinearizedTempC(n)
      if tempState['fault']:
        # there is a fault in the reading
        if tempState['openCircuit']:
          error = 'No thermocouple connected'
        elif tempState['shortGND']:
          error = 'Thermocouple shorted to ground'
        elif tempState['shortVCC']:
          error = 'Thermocouple shorted to VCC';
        print('Thermocouple {0:d}: Error - {1}'.format(n, error))
      else:
        print('Thermocouple {0:d}: {1:0.2F}C / {2:0.2F}F'.format(n, temp, c_to_f(temp)))

    time.sleep(1.0)

finally:
  # release GPIO stuff
  GPIO.cleanup()
