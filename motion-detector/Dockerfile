FROM resin/rpi-raspbian:latest

RUN apt-get update && apt-get -y --no-install-recommends install git python-picamera python-imaging dos2unix python-pyexiv2 libav-tools python-scipy gpac fonts-freefont-ttf && \
    adduser --home=/usr/src/app --uid 1000 motion

USER motion
WORKDIR /usr/src/app

RUN git clone https://github.com/pageauc/pi-timolo
