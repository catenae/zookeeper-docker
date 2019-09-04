#!/bin/bash
ZOOKEEPER_VERSION=3.5.5
ARCHIVE=apache-zookeeper-$ZOOKEEPER_VERSION-bin.tar.gz
ARCHIVE_URL=https://dist.apache.org/repos/dist/release/zookeeper/zookeeper-$ZOOKEEPER_VERSION/$ARCHIVE
CHECKSUM_URL=$ARCHIVE_URL.asc
ZOOKEEPER_KEYS=https://dist.apache.org/repos/dist/release/zookeeper/KEYS
