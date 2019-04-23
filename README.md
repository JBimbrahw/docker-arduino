# docker-arduino
Compile an Arduino sketch from the command line using a docker image

In order to compile an Arduino Sketch from the command line.

1) pull the docker image from here: https://hub.docker.com/r/jbimbrahw/docker-arduino

using:

docker pull jbimbrahw/docker-arduino

2) download commands.sh from this repo (https://github.com/JBimbrahw/docker-arduino)

This script will need to be modified if you are using a different arduino board from arduino:avr:uno

3) run the following docker command run the image:

docker run -v /PATH_TO_YOUR_ARDUINO_SKETCH/MySketch/:/root/MySketch -i jbimbrahw/docker-arduino bash -C "./commands.sh

Run this command from the same directory in which you have commands.sh
It is important that your sketch be called MySketch.ino and is saved in /PATH_TO_YOUR_ARDUINO_SKETCH/MySketch

You will see that extra files get created in your directory MySketch after the compilation is complete.

This image only compiles the code - it will not upload it to the Arduino.


