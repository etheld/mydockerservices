FROM ubuntu:16.04
MAINTAINER dreamcat4 <dreamcat4@gmail.com>


ENV _clean="rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*"
ENV _apt_clean="eval apt-get clean && $_clean"

# Install jackett dependancies
RUN apt-get update -qq && DEBIAN_FRONTEND=noninteractive apt-get install -qqy curl bzip2 sudo libmono-cil-dev libcurl4-openssl-dev \
 && $_apt_clean


# Download jackett
ENV jackett_version="0.7.1483"
RUN curl -Lo /tmp/jackett.tar.gz https://github.com/Jackett/Jackett/releases/download/v${jackett_version}/Jackett.Binaries.Mono.tar.gz \
 && mkdir /jackett && tar -xzf /tmp/jackett.tar.gz --strip-components=1 -C /jackett && rm -f /tmp/jackett.tar.gz

# Default container settings
VOLUME /config
EXPOSE 9117

ENTRYPOINT ["/usr/bin/mono", "--debug", "/jackett/JackettConsole.exe"]
CMD ["-x", "true"]
