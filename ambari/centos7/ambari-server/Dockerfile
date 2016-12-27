FROM 2breakfast/ambari:base
MAINTAINER weitao <wtzhou@dataman-inc.com>

# add ambari repo
ADD http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.1.2/ambari.repo /etc/yum.repos.d/

# initscripts (service wrapper for servicectl) is need othewise the Ambari is unable to start postgresql
RUN yum install -y ambari-server && yum clean all

# add mysql and psql connectors to ambari-server so it can be downloaded by services (e.g.: Ranger)
ADD http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.39.tar.gz /var/lib/ambari-server/resources/mysql-jdbc-driver.jar
ADD https://jdbc.postgresql.org/download/postgresql-9.4.1208.jre7.jar /var/lib/ambari-server/resources/postgres-jdbc-driver.jar

VOLUME ["/var/log/ambari-server/", "/var/lib/pgsql/"]

RUN echo DefaultEnvironment=\"JAVA_HOME=$JAVA_HOME\" >> /etc/systemd/system.conf

EXPOSE 8080
