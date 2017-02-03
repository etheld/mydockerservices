FROM hypriot/rpi-node:6.9.4

RUN apt-get update && apt-get install build-essential libavahi-compat-libdnssd-dev git curl wget dbus avahi-daemon node-gyp make g++ avahi-discover libnss-mdns 
RUN npm config set unsafe-perm true && npm -g install homebridge homebridge-homeassistant

RUN sed -i.bak 's/^#enable-dbus/enable-dbus/' /etc/avahi/avahi-daemon.conf

COPY run.sh /root/run.sh
ENTRYPOINT ["/bin/sh", "/root/run.sh"]

EXPOSE 5353 51826
