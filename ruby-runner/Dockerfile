FROM ruby:2.3.3-alpine

RUN mkdir /ambient
WORKDIR /ambient

RUN apk add --no-cache --virtual build-dependencies build-base cmake g++ gcc
RUN apk add --no-cache git
RUN apk add --no-cache libxml2-dev libxml2 libxslt-dev

RUN apk --no-cache add postgresql-dev make
RUN bundle config build.nokogiri --use-system-libraries
COPY Gemfile /ambient/
RUN bundle install

RUN apk del build-dependencies
