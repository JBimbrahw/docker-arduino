#!/bin/bash
/root/arduino-cli core update-index
/root/arduino-cli core install arduino:avr
/root/arduino-cli compile --fqbn arduino:avr:uno MySketch
