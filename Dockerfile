FROM jenkins
MAINTAINER Michael Koch <michael.koch@enough.de>

ENV DEBIAN_FRONTEND=noninteractive

USER root
RUN \
	dpkg --add-architecture i386 && \
	apt-get update && \
	apt-get install -y libstdc++6:i386 zlib1g:i386 && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*
 
USER jenkins

