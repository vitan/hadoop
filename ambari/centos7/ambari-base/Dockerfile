FROM centos:7
MAINTAINER weitao <zhouwtlord@gmail.com>

ENV JDK_ARTIFACT jdk-7u67-linux-x64.tar.gz
ENV JDK_VERSION jdk1.7.0_67
ENV JAVA_HOME /usr/jdk64/$JDK_VERSION
ENV PATH $PATH:$JAVA_HOME/bin

RUN yum install epel-release curl unzip tar initscripts -y && yum clean all && \
    mkdir -p ${JAVA_HOME}  && curl -L http://public-repo-1.hortonworks.com/ARTIFACTS/$JDK_ARTIFACT | tar -xz --strip=1 -C ${JAVA_HOME}

RUN cd $JAVA_HOME/jre/lib/security && curl -L http://public-repo-1.hortonworks.com/ARTIFACTS/UnlimitedJCEPolicyJDK7.zip -o UnlimitedJCEPolicyJDK7.zip && \
    unzip UnlimitedJCEPolicyJDK7.zip && rm -f UnlimitedJCEPolicyJDK7.zip && mv UnlimitedJCEPolicy/*jar . && rm -rf UnlimitedJCEPolicy

ENV PS1 "[\u@docker-ambari \W]# "
