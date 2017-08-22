FROM lsiobase/alpine.armhf

RUN apk add --no-cache --virtual=build-dependencies curl tar git && apk add --no-cache nodejs-npm

RUN git clone https://github.com/jfurrow/flood.git /app/flood
WORKDIR /app/flood
RUN npm install --production

ADD config.js /app/flood/

ENTRYPOINT ["/usr/bin/npm", "start"]

EXPOSE 3000
VOLUME ["/data"]
