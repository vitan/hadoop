#!/bin/sh

sed "s/HDFS_NAMENODE_RPC_HOST/$HDFS_NAMENODE_RPC_HOST/;s/HDFS_NAMENODE_RPC_PORT/$HDFS_NAMENODE_RPC_PORT/" ${HADOOP_INSTALL_DIR}/etc/hadoop/core-site.xml.template > ${HADOOP_INSTALL_DIR}/etc/hadoop/core-site.xml
sed "s/JH_HOST/$JH_HOST/" ${HADOOP_INSTALL_DIR}/etc/hadoop/mapred-site.xml.template > ${HADOOP_INSTALL_DIR}/etc/hadoop/mapred-site.xml
sed "s/RM_HOST/$RM_HOST/;s/RM_SCHEDULER/$RM_SCHEDULER/;s/HADOOP_TMP_DIR/$HADOOP_TMP_DIR/" ${HADOOP_INSTALL_DIR}/etc/hadoop/yarn-site.xml.template > ${HADOOP_INSTALL_DIR}/etc/hadoop/yarn-site.xml

case "$ROLE" in
    resourcemanager|nodemanager|proxyserver):
        ${HADOOP_INSTALL_DIR}/bin/yarn --daemon start $ROLE
        ;;
    historyserver):
        ${HADOOP_INSTALL_DIR}/bin/mapred --daemon start $ROLE
        ;;
    *)
        exit 1;
        ;;
esac

exec "$@"
