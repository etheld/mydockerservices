FROM openjdk:8-alpine
LABEL MAINTAINER Gwelican

WORKDIR /usr/local

ENV SONAR_RUNNER 2.4

RUN apk add --no-cache curl && \
    curl -sL -o sonar-runner.zip http://repo1.maven.org/maven2/org/codehaus/sonar/runner/sonar-runner-dist/${SONAR_RUNNER}/sonar-runner-dist-${SONAR_RUNNER}.zip && \
    unzip sonar-runner.zip && \
    rm sonar-runner.zip && \
    apk del curl

ENV PATH /usr/local/sonar-runner-2.4/bin:$PATH

WORKDIR /data

