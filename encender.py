#!/usr/bin/env python

#Importamos Gpio
import RPi.GPIO as GPIO
import sys
pin = int(sys.argv[1])
#Le decimo que utilizamos la nomeclatura BCM
GPIO.setmode(GPIO.BCM)
#Aqui indicamos cual es el puerto que utilizaremos, y que es de salida
GPIO.setup(pin, GPIO.OUT)
GPIO.output(pin, True)
