FROM hortonworks/ambari-base:7.2-v7
MAINTAINER weitao <wtzhou@dataman-inc.com>

ADD http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.1.2/ambari.repo /etc/yum.repos.d/

# initscripts (service wrapper for servicectl) is need othewise the Ambari is unable to start postgresql
RUN yum install -y ambari-server && yum clean all

ADD init/init-server.sh /opt/ambari-server/init-server.sh
ADD non-init-entrypoint.sh /opt/ambari-server/non-init-entrypoint.sh
RUN chmod u+x /opt/ambari-server/init-server.sh
RUN chmod u+x /opt/ambari-server/non-init-entrypoint.sh

# add mysql and psql connectors to ambari-server so it can be downloaded by services (e.g.: Ranger)
ADD http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.39.tar.gz /var/lib/ambari-server/resources/mysql-jdbc-driver.jar
ADD https://jdbc.postgresql.org/download/postgresql-9.4.1208.jre7.jar /var/lib/ambari-server/resources/postgres-jdbc-driver.jar

VOLUME ["/var/log/ambari-server/", "/var/lib/pgsql/"]

ADD init/ambari-server.service /etc/systemd/system/ambari-server.service
RUN systemctl enable ambari-server

RUN echo DefaultEnvironment=\"JAVA_HOME=$JAVA_HOME\" >> /etc/systemd/system.conf

EXPOSE 8080
