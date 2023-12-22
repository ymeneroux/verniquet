import serial

from gpiozero import Button 
from gpiozero import LED
from time import sleep
from signal import pause
from subprocess import check_call
from datetime import datetime
from serial import SerialException

print("GNSS PROGRAM STARTED")

# ---------------------------------------------
# GPIO PINS
# ---------------------------------------------
led_running = LED(21)
led_problem = LED(20)
button_start = Button(2)
button_end = Button(3)
# ---------------------------------------------

file_root = "/home/pi/log_gnss_" 



def blink(led, number, period):
	for i in range(number):
		led.on()
		sleep(period/2.0)
		led.off()
		sleep(period/2.0)

# --------------------------------------------
# TEST SERIAL CONNEXION
# --------------------------------------------
serial_open = False
while (not serial_open):
	try:
		ser = serial.Serial('/dev/ttyACM0')
		serial_open = True
		blink(led_running, 3, 1.0)
	except SerialException:
		print("WARNING SERIAL NOT OPEN")
		blink(led_problem, 10, 0.4)
# --------------------------------------------


# --------------------------------------------
# MAIN PROGRAM
# --------------------------------------------

def shutdown():
	check_call(['sudo', 'poweroff'])

duration = 0
while True:
	if button_end.value == 1:
		led_problem.on()
		sleep(2)
		led_problem.off()
		if button_end.value == 1:
			sleep(0.5)
			print("SHUTDOWN")
			blink(led_problem, 3, 1)
			shutdown()
	val = button_start.value 
	if (val == 0) and (duration >= 0.5): 
		time = datetime.now().strftime("%d%m%Y-%H-%M-%S")
		file_name = file_root + time + ".ubx"
		f = open(file_name, "wb")
		print("START GNSS AQUISITION: "+ file_name)
		counter_led = 0
		while True:
			val = max(val, button_start.value)
			if (counter_led % 2 == 0):
				led_running.on()
			else:
				led_running.off()
			f.write(ser.readline())
			sleep(0.25)
			counter_led += 1
			if (val == 1):
				print("STOP GNSS AQUISITION")
				led_running.off()
				f.close()
				sleep(1)
				break
		duration = 0
	val = button_start.value
	duration = (duration+1)*val
	sleep(0.05)

shutdown()
