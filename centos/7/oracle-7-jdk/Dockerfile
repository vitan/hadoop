FROM       centos:7
MAINTAINER Weitao Zhou <wtzhou@dataman-inc.com>

RUN yum update -y && \
yum install -y wget && \
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/7u80-b15/jdk-7u80-linux-x64.rpm" && \
yum localinstall -y jdk-7u80-linux-x64.rpm && \
rm -f jdk-7u80-linux-x64.rpm && \
yum clean all
