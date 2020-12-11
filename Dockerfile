FROM openjdk:8-jdk-buster

LABEL maintainer="dwe@ecadia.de"

ENV TZ Europe/Berlin
ENV ANT_HOME /usr/share/ant
ENV PATH "~/bin:${PATH}"

RUN echo "deb http://deb.debian.org/debian buster main contrib" > /etc/apt/sources.list && \
	echo "deb http://security.debian.org/debian-security buster/updates main contrib" >> /etc/apt/sources.list && \
	echo "deb http://deb.debian.org/debian buster-updates main contrib""

RUN apt update && \
	apt install -y ant gettext-base subversion zip unzip wget repo
