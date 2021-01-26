board_name = esp8266:esp8266:generic
port = /dev/ttyUSB0
baud_rate = 115200

all: build

build:
	arduino-cli compile --fqbn $(board_name) .

upload:
	arduino-cli upload -p $(port) --fqbn $(board_name) .

flash:
	esptool.py -p $(port) -b $(baud_rate)

info:
	esptool.py -p $(port) -b $(baud_rate) flash_id
