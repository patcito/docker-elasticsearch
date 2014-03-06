FROM stackbrew/ubuntu:saucy
VERSION 0.1
MAINTAINER Patrick Aljord <patcito@gmail.com>
## install openjdk
RUN apt-get install wget openjdk-7-jre-headless -y --force-yes
## download install elasticsearch
RUN wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.10.deb
RUN dpkg -i elasticsearch-0.90.10.deb
RUN rm elasticsearch-0.90.10.deb
## start elasticsearch
ENTRYPOINT  ["service elasticsearch start"]
