#!/usr/bin/env python

#Importamos Gpip
import RPi.GPIO as GPIO

#Le decimo que utilizamos la nomeclatura BCM
GPIO.setmode(GPIO.BCM)

#Aqui indicamos cual es el puerto que utilizaremos, y que es de salida
GPIO.setup(17, GPIO.OUT)
GPIO.output(17, False)
# GPIO.cleanup()
