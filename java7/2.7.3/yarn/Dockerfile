FROM		        2breakfast/hadoop:2.7.3-base
MAINTAINER      Weitao Zhou <wtzhou@dataman-inc.com>

ENV             JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
ENV             HDFS_NAMENODE_RPC_HOST=please_input_nn_ip
ENV             HDFS_NAMENODE_RPC_PORT=8020
ENV             RM_SCHEDULER=org.apache.hadoop.yarn.server.resourcemanager.scheduler.capacity.CapacityScheduler
ENV             HADOOP_TMP_DIR=/tmp/hadoop
ENV             RM_HOST=please_input_host_ip
ENV             JH_HOST=please_input_host_ip
ENV             ROLE=resourcemanager
ENV             PUBLISHED_IP=please_input_host_ip
ENV             RESOURCE_MEM_MB=8192
ENV             RESOURCE_CPU_VCORE=8

ADD             conf/* ${HADOOP_INSTALL_DIR}/etc/hadoop/
ADD             docker-entrypoint.sh /usr/local/sbin/docker-entrypoint.sh

VOLUME          ["${HADOOP_TMP_DIR}"]


# TCP 10020 MapReduce JobHistory Server host:port
# TCP 19888 MapReduce JobHistory Server Web UI host:port

EXPOSE 8030-8033 8040 8042 8088 8090 10020 19888

RUN chmod a+x /usr/local/sbin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/sbin/docker-entrypoint.sh"]
