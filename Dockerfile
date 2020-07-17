FROM centos:latest
MAINTAINER NPI

ENV SONAR_SCANNER_VERSION 4.4.0.2170
 
RUN yum -y install wget \
 && yum -y install unzip

WORKDIR /opt

RUN wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONAR_SCANNER_VERSION}-linux.zip
RUN unzip sonar-scanner-cli-${SONAR_SCANNER_VERSION}-linux.zip
RUN rm sonar-scanner-cli-${SONAR_SCANNER_VERSION}-linux.zip
  
ENV PATH="/opt/sonar-scanner-${SONAR_SCANNER_VERSION}-linux/bin:${PATH}"

CMD sonar-scanner
