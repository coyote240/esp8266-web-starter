# ESP8266 Web Starter

A basic starter project for a web project targeting the ESP8266 microcontroller.

This project provides basic functions:

* separate handling of code and static files
* http file serving
* tls
* build and deploy scripts using arduino-cli
* deploy scripts for static assets, including html, css, javascript, etc.


## Dependencies

This starter project relies upon `arduino-cli`, which maybe installed following
these instructions:

https://arduino.github.io/arduino-cli/installation/

In order to build the LittleFS filesystem, you will require `mklittlefs`:

https://github.com/earlephilhower/mklittlefs

In order to upload to the flash filesystem on the esp8266, you will also need
`esptool.py` from espressif:

https://github.com/espressif/esptool


## Build

```shell
make build
```

### Upload

```shell
make upload
```

### Flash

```shell
make flash
```
