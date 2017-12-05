FROM lsiobase/alpine:3.6

MAINTAINER Gwelican <superfly@gwelican.eu>


COPY requirements.txt /tmp/

RUN apk add --no-cache python3 openssl libjpeg py3-pillow && \
    apk add --no-cache --virtual build-dependencies gcc g++ python3-dev libffi-dev openssl-dev linux-headers libxml2-dev libxml2 libxslt make && \
    pip3 install --no-cache-dir -r /tmp/requirements.txt && \
    pip3 install --no-cache-dir uvloop cchardet cython homeassistant && \
    apk del --purge build-dependencies

COPY root /

EXPOSE 8123
