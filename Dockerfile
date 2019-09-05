# Zookeeper (Vanilla) on CentOS 7.
# Copyright (C) 2016-2019 Rodrigo Martínez <dev@brunneis.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

FROM ibmjava:8-jre

################################################
# ZOOKEEPER
################################################

ARG ZOOKEEPER_VERSION

RUN \
	ARCHIVE=apache-zookeeper-$ZOOKEEPER_VERSION-bin.tar.gz && \
	ARCHIVE_URL=https://dist.apache.org/repos/dist/release/zookeeper/zookeeper-$ZOOKEEPER_VERSION/$ARCHIVE && \
	CHECKSUM_URL=$ARCHIVE_URL.asc && \
	KEYS_URL=https://dist.apache.org/repos/dist/release/zookeeper/KEYS && \
	wget $ARCHIVE_URL && \
	wget $CHECKSUM_URL && \
	wget $KEYS_URL && \
	gpg --import KEYS && \
	gpg --verify $ARCHIVE.asc && \
	mkdir /opt/zookeeper && \
	tar xvf $ARCHIVE -C /opt/zookeeper && \
	rm -f $ARCHIVE && \
	rm -f $ARCHIVE.asc && \
	rm -f KEYS && \
	ln -s /opt/zookeeper/*zookeeper* /opt/zookeeper/default

ENV PATH=$PATH:/opt/zookeeper/default/bin
ENTRYPOINT bash --login -i