FROM       2breakfast/java:oracle-7-jdk
MAINTAINER Weitao Zhou <wtzhou@dataman-inc.com>

ENV        HADOOP_VERSION 2.7.3
ENV        HADOOP_INSTALL_DIR /opt/hadoop

RUN        mkdir -p ${HADOOP_INSTALL_DIR} && \
           curl -L http://mirrors.koehn.com/apache/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz | tar -xz --strip=1 -C ${HADOOP_INSTALL_DIR} && \
           yum install -y vim

WORKDIR    ${HADOOP_INSTALL_DIR}
