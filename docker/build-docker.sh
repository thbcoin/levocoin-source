#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-levocoinpay/levocoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/levocoind docker/bin/
cp $BUILD_DIR/src/levocoin-cli docker/bin/
cp $BUILD_DIR/src/levocoin-tx docker/bin/
strip docker/bin/levocoind
strip docker/bin/levocoin-cli
strip docker/bin/levocoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
