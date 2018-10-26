FROM openjdk:8-jdk-stretch

LABEL maintainer="dwe@ecadia.de"

ENV TZ Europe/Berlin
ENV ANT_HOME /usr/share/ant

RUN apt update && \
	apt install -y ant gettext-base subversion && \
	mkdir ~/bin && \
	curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && \
	chmod a+x ~/bin/repo && \
	PATH=~/bin:$PATH
	
