FROM centos:latest
MAINTAINER NPI

ENV SONAR_SCANNER_VERSION 4.4.0.2170

WORKDIR /opt

RUN wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONAR_SCANNER_VERSION}-linux.zip \
 && unzip sonar-scanner-cli-${SONAR_SCANNER_VERSION}-linux.zip \
 && rm sonar-scanner-cli-${SONAR_SCANNER_VERSION}-linux.zip
  
ENV PATH="/opt/sonar-scanner-${SONAR_SCANNER_VERSION}-linux/bin:${PATH}"

CMD sonar-scanner
