FROM ubuntu:18.04

LABEL maintainer="Angelita Rettore"
LABEL version="1.0"

RUN export TZ="America/Sao_Paulo"
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential autoconf automake libxmu-dev curl gcc-4.8 g++-4.8 ns2 tcl nam openjdk-8-jdk   

RUN mkdir /ns2
WORKDIR /ns2

ADD nsg2 /usr/bin/nsg2
RUN mkdir /opt/nsg2 && curl -L https://github.com/wushoupong/NSG2/raw/master/NSG2.1.jar -o /opt/nsg2/NSG2.1.jar && \
    chmod 755 /usr/bin/nsg2
VOLUME ["/ns2"]
