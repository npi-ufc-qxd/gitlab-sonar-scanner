FROM alpine:latest
MAINTAINER NPI

ENV HOME /sonar-scanner/bin/

RUN apk update
RUN apk upgrade

COPY sonar-scanner/ /sonar-scanner
RUN chmod +x /sonar-scanner/bin/sonar-scanner
RUN chmod +x /sonar-scanner/bin/sonar-scanner-debug

CMD ${HOME}sonar-scanner
