FROM       2breakfast/hadoop:centos7-2.7.3-base
MAINTAINER Weitao Zhou <wtzhou@dataman-inc.com>

ENV       HDFS_NAMENODE_ROOT_DIR=/var/hdfs/namenode
ENV       JAVA_HOME=/usr/java/jdk1.7.0_80/
ENV       CLUSTER_NAME=hdfs_cluster
ENV       PUBLISHED_IP=please_input_host_ip

ADD       conf/* ${HADOOP_INSTALL_DIR}/etc/hadoop/
ADD       docker-entrypoint.sh /usr/local/sbin/docker-entrypoint.sh

VOLUME    ["${HDFS_NAMENODE_ROOT_DIR}"]

# TCP 8020  fs.defaultFS IPC: ClientProtocol
# TCP 50070 dfs.namenode.http-address HTTP connector
# TCP 50470 dfs.namenode.https-address HTTPS connector

EXPOSE 8020 50070 50470

RUN chmod a+x /usr/local/sbin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/sbin/docker-entrypoint.sh"]

CMD ["bin/hdfs", "namenode"]
