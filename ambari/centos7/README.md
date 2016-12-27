## centos 7

docker run --cap-add SYS_ADMIN -p 8080:8080 -v /data/ambari-server/:/var/log/ambari-server/ -v /data/pgsql/:/var/lib/pgsql/ -d 2breakfast/ambari:server
