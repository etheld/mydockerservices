FROM alpine:3.3

RUN adduser -S znc && addgroup -S znc

ENV CONFIGUREFLAGS="--enable-python"
ENV CLEANCMD="apk del build-dependencies && rm -Rf /src*"
ENV MAKEFLAGS=""

ENV ZNC_VERSION 1.6.3

RUN apk add --no-cache --virtual runtime-dependencies \
        icu \
        openssl \
        boost \
        python3 \
        perl \
        cyrus-sasl

RUN apk add --no-cache --virtual build-dependencies \
        build-base \
        cmake \
        git \
        icu-dev \
        openssl-dev \
        cyrus-sasl-dev \
        perl-dev \
        python3-dev \
        swig \
        gettext-dev \
        boost-dev

RUN apk add --no-cache py-requests

RUN mkdir /src && cd /src && wget "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" \
    && tar -zxf "znc-${ZNC_VERSION}.tar.gz" \
    && cd "znc-${ZNC_VERSION}" \
    && ./configure ${CONFIGUREFLAGS} \
    && make ${MAKEFLAGS} \
    && make install \
    && sh -c "${CLEANCMD}"

COPY docker-entrypoint.sh /entrypoint.sh

USER znc

VOLUME /znc-data

EXPOSE 6667

ENTRYPOINT ["/entrypoint.sh"]
CMD [""]
# ENTRYPOINT ["/usr/local/bin/znc", "-f", "-d", "/znc-data"]
