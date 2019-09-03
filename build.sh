#!/bin/bash
source env.sh
docker build \
--build-arg ARCHIVE=$ARCHIVE \
--build-arg ARCHIVE_URL=$ARCHIVE_URL \
--build-arg CHECKSUM_URL=$CHECKSUM_URL \
--build-arg ZOOKEEPER_KEYS=$ZOOKEEPER_KEYS -t catenae/zookeeper .