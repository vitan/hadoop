## centos 7

docker run --privileged -p 8080:8080 -v /data/ambari-server/:/var/log/ambari-server/ -v /data/pgsql/:/var/lib/pgsql/ -d 2breakfast/ambari:server
docker run --privileged -v /data/lib/modules:/lib/modules -d 2breakfast/ambari:agent systemd.setenv=AMBARI_SERVER_ADDR=192.168.1.20
