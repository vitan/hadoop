FROM hortonworks/ambari-base:7.2-v7
MAINTAINER weitao <wtzhou@dataman-inc.com>

# add ambari repo
ADD http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.1.2/ambari.repo /etc/yum.repos.d/

# initscripts (service wrapper for servicectl) is need othewise the Ambari is unable to start postgresql
RUN yum install -y ambari-server && yum clean all

RUN echo DefaultEnvironment=\"JAVA_HOME=$JAVA_HOME\" >> /etc/systemd/system.conf

EXPOSE 8080
