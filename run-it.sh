#!/bin/bash

# build and run Dockerfile with a local data directory.
TAG=tmp:latest

# set data directory from the command line or a default.
DATA_DIR=$(pwd)/data
if [ -n "$1" ]; then
    DATA_DIR=$1
fi

CWD=$(pwd)
cd ${DATA_DIR} && DATA_DIR=$(pwd) && cd ${CWD}

docker buildx build --tag ${TAG} . && \
docker run -it --rm -v ${DATA_DIR}:/data ${TAG}
