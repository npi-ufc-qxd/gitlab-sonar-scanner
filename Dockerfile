FROM alpine:latest
MAINTAINER NPI

RUN apk update
RUN apk upgrade

COPY sonar-scanner/ /sonar-scanner
RUN chmod +x /sonar-scanner/bin/sonar-scanner
RUN chmod +x /sonar-scanner/bin/sonar-scanner-debug

WORKDIR /sonar-scanner/bin
CMD sonar-scanner
