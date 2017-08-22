FROM hypriot/rpi-node:8.1

WORKDIR /app/flood
RUN mkdir -p /app/flood && \
    apt-get install git && \
    git clone https://github.com/jfurrow/flood.git /app/flood && \
    npm install --production

ADD config.js /app/flood/

ENTRYPOINT ["/usr/bin/npm", "start"]

EXPOSE 3000
VOLUME ["/data"]
