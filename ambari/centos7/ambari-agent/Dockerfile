FROM hortonworks/ambari-base:7.2-v7
MAINTAINER weitao <wtzhou@dataman-inc.com>

# add ambari repo
ADD http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.1.2/ambari.repo /etc/yum.repos.d/

# initscripts (service wrapper for servicectl) is need othewise the Ambari is unable to start postgresql
RUN yum install -y ambari-agent ntp && yum clean all

VOLUME ["/lib/modules"]

ENV AMBARI_SERVER_ADDR localhost

ADD init/init-agent.sh /opt/ambari-agent/init-agent.sh
RUN chmod u+x /opt/ambari-agent/init-agent.sh
ADD non-init-entrypoint.sh /opt/ambari-agent/non-init-entrypoint.sh
RUN chmod u+x /opt/ambari-agent/non-init-entrypoint.sh

ADD init/ambari-agent.service /etc/systemd/system/ambari-agent.service

RUN systemctl enable ambari-agent
RUN systemctl enable ntpd

RUN echo DefaultEnvironment=\"JAVA_HOME=$JAVA_HOME\" >> /etc/systemd/system.conf
