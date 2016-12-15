FROM php:7.1-fpm-alpine

RUN apk --no-cache add postgresql-dev

RUN docker-php-ext-install pdo pdo_mysql pdo_pgsql
