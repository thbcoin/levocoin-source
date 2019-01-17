FROM debian:stretch
LABEL maintainer="Levocoin Developers <dev@levocoin.org>"
LABEL description="Dockerised LevocoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
