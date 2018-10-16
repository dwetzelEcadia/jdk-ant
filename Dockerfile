FROM openjdk:8-jdk-stretch

LABEL maintainer="dwe@ecadia.de"


RUN apt update && apt install -y ant
