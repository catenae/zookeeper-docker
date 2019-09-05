#!/bin/bash
source env.sh
docker build \
--build-arg ZOOKEEPER_VERSION=$ZOOKEEPER_VERSION \
-t catenae/zookeeper-base .