FROM alpine
MAINTAINER Gwelican <superfly@gwelican.eu>

RUN mkdir -p /var/www/localhost/htdocs
WORKDIR /var/www/localhost/htdocs

RUN apk --no-cache add lighttpd php5-common php5-iconv php5-json php5-gd php5-curl php5-xml php5-pgsql php5-imap php5-cgi fcgi wget unzip && \
    wget https://github.com/phppgadmin/phppgadmin/archive/master.zip && \
    unzip master.zip && \
    mv phppgadmin-master phppgadmin && \
    ln -sf /dev/stdout /var/log/lighttpd/error.log && \
    ln -sf /dev/stdout /var/log/lighttpd/access.log && \
    chown -R lighttpd /var/www/localhost

COPY lighttpd.conf /etc/lighttpd/
COPY fastcgi.conf /etc/lighttpd/

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]

EXPOSE 80
