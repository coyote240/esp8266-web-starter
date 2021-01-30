board_name = esp8266:esp8266:generic
port = /dev/ttyUSB0
baud_rate = 115200
littlefs_address = 0x200000
build_temp = $(shell mktemp -d)

all: build

build:
	arduino-cli compile --fqbn $(board_name) .

upload:
	arduino-cli upload -p $(port) --fqbn $(board_name) .

flash:
	mklittlefs -c ./data $(build_temp)/flash.bin
	esptool.py -p $(port) -b $(baud_rate)

info:
	esptool.py -p $(port) -b $(baud_rate) flash_id
