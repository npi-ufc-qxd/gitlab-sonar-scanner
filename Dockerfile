FROM alpine:latest
MAINTAINER NPI

ENV SONAR_SCANNER_VERSION 4.4.0.2170

RUN apk update
RUN apk upgrade

RUN apk fetch wget && apk fetch unzip
RUN apk add --no-cache wget && apk add --no-cache unzip

WORKDIR /opt

RUN wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONAR_SCANNER_VERSION}-linux.zip \
 && unzip sonar-scanner-cli-${SONAR_SCANNER_VERSION}-linux.zip
 
RUN ls
