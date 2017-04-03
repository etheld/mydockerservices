FROM resin/rpi-raspbian:latest

VOLUME /data

COPY upnp.patch /root/

# Install yaml from apt, to also install the cpp lib.
RUN apt-get update && apt-get install -y \
    python3-dev \
    python3-pip \
    python3-yaml \
    python3-lxml \
    libxslt-dev \
    libxml2-dev \
    net-tools \
    nmap \
	  openssh-client \
	  libpq-dev \
    build-essential \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Install home assistant dependencies
RUN pip3 install \
    netdisco \
	  psutil \
	  speedtest-cli \
	  python-mpd2 \
	  python-nmap \
	  fritzconnection \
	  psycopg2 \
    sqlalchemy \
    aiohttp_cors \
    paho-mqtt \
    libnacl \
    xmltodict \
    gTTS-token \
    orvibo \
    distro \
    colorlog \
    fuzzywuzzy \
    jsonrpc-async \
    astral && \
    pip3 install homeassistant


WORKDIR /usr/local/lib/python3.4/dist-packages/homeassistant/components/emulated_hue/
RUN patch < /root/upnp.patch

WORKDIR /data

CMD ["hass", "--config", "/data/.homeassistant"]

USER 1000

EXPOSE 8123
