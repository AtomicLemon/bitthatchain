#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-bithatchainpay/bithatchaind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/bithatchaind docker/bin/
cp $BUILD_DIR/src/bithatchain-cli docker/bin/
cp $BUILD_DIR/src/bithatchain-tx docker/bin/
strip docker/bin/bithatchaind
strip docker/bin/bithatchain-cli
strip docker/bin/bithatchain-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
