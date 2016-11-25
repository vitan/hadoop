#!/bin/sh

echo "$PUBLISHED_IP `hostname` localhost" >> /etc/hosts
if [ ! -f ${HDFS_NAMENODE_ROOT_DIR}/current/VERSION ]; then
	echo Formatting namenode root fs in ${HDFS_NAMENODE_ROOT_DIR}

	bin/hdfs namenode -format -force ${CLUSTER_NAME}
fi


exec "$@"
