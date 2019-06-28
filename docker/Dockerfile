FROM debian:stretch
LABEL maintainer="bithatchain Developers <dev@bithatchain.org>"
LABEL description="Dockerised bithatchainCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
