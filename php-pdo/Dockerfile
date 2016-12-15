FROM php:7.1.0-fpm-alpine
RUN apk --no-cache add postgresql-dev
RUN docker-php-ext-install pdo pdo_mysql mysqli pdo_pgsql
COPY www.conf /usr/local/etc/php-fpm.d/
