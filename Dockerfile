FROM ubuntu:artful

MAINTAINER Franck WIATROWSKI

ENV LANG C.UTF-8

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install gnupg apt-transport-https ca-certificates -y

RUN apt-get install python-software-properties software-properties-common -y
RUN add-apt-repository ppa:scribus/ppa
RUN apt-get update
RUN apt-get install -y --allow-unauthenticated scribus-ng locales locales-all 
RUN rm -rf /var/lib/apt/lists/*

ENV LC_ALL fr_FR.UTF-8
ENV LANG fr_FR.UTF-8
ENV LANGUAGE fr_FR.UTF-8

ADD scribus-launch.sh /scribus-launch.sh

CMD /scribus-launch.sh
