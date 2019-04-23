FROM ubuntu:xenial

RUN dpkg --add-architecture i386 && \
  apt-get update && apt-get install -y \
            wget \
            curl \
            adb \
            bzip2 \
            checkinstall \
            expect \
            git \
            lib32ncurses5 \
            libc6:i386 \
            libtool \
            libhidapi-dev \
            libhidapi-hidraw0 \
            libusb-0.1-4 \
            libusb-1.0-0 \
            libusb-1.0-0-dev \
            libusb-dev \
            make \
            python2.7 \
            ruby-full \
            automake \
            autotools-dev \
            pkg-config \
            sudo

WORKDIR /root
ENV USER root - This was the solution to this error I was getting: Error: getting default arduino data dir: retrieving user home dir: user: Current not implemented on linux/amd64    Error creating default configuration
ADD commands.sh /root/commands.sh

RUN wget https://downloads.arduino.cc/arduino-cli/arduino-cli-latest-linux64.tar.bz2
RUN tar xjf arduino-cli-latest-linux64.tar.bz2
RUN mv arduino-cli-0.3.6-alpha.preview-linux64 arduino-cli
RUN export PATH=$PATH:$(pwd)

RUN chmod +x arduino-cli
RUN chmod +x commands.sh
