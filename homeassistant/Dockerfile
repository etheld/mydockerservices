FROM lsiobase/alpine:3.6

MAINTAINER Gwelican <superfly@gwelican.eu>


COPY requirements.txt /tmp/

RUN apk add --no-cache python3 openssl libjpeg py3-pillow && \
    apk add --no-cache --virtual build-dependencies gcc g++ python3-dev libffi-dev openssl-dev linux-headers libxml2-dev libxml2 libxslt
RUN    pip3 install --no-cache-dir -r /tmp/requirements.txt 
RUN apk add --no-cache make
RUN    pip3 install --no-cache-dir uvloop cchardet cython homeassistant && \
    apk del --purge build-dependencies

COPY root /

# Install home assistant dependencies
#RUN pip3 install \
 #   netdisco \
#	  psutil \
#	  speedtest-cli \
#	  python-mpd2 \
#	  python-nmap \
#	  fritzconnection \
#	  psycopg2 \
 #   sqlalchemy \
  #  aiohttp_cors \
   # paho-mqtt \
#    #libnacl \
 #   xmltodict \
#    gTTS-token \
  #  orvibo \
  #  distro \
#    colorlog \
 #   fuzzywuzzy \
  #  jsonrpc-async \
   # astral && \
    #pip3 install homeassistant


EXPOSE 8123
