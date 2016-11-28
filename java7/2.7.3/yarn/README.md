# hdfs-datanode

hadoop yarn in docker

## How to use it

### start resourcemanager

```bash
docker run -e PUBLISHED_IP=X.X.X.X -e HDFS_NAMENODE_RPC_HOST=$NAMENODEHOST -e RM_HOST=X.X.X.X -e ROLE=resourcemanager -v /data/tmp/hadoop:/tmp/hadoop -p8030-8033:8030-8033 -p8040:8040 -p8042:8042 -p8088:8088 -p8090:8090 -p10020:10020 -p19888:19888 --name resourcemanager -d 2breakfast/hadoop:2.7.3-yarn
```

### start nodemanager

```bash
docker run -e PUBLISHED_IP=X.X.X.X -e HDFS_NAMENODE_RPC_HOST=$NAMENODEHOST -e RM_HOST=X.X.X.X -e ROLE=nodemanager -v /data/tmp/hadoop:/tmp/hadoop -p8030-8033:8030-8033 -p8040:8040 -p8042:8042 -p8088:8088 -p8090:8090 -p10020:10020 -p19888:19888 --name nodemanager -d 2breakfast/hadoop:2.7.3-yarn
```

### start proxyserver

```bash
docker run -e PUBLISHED_IP=X.X.X.X -e HDFS_NAMENODE_RPC_HOST=$NAMENODEHOST -e RM_HOST=X.X.X.X -e JH_HOST=X.X.X.X -e ROLE=proxyserver -v /data/tmp/hadoop:/tmp/hadoop -p8030-8033:8030-8033 -p8040:8040 -p8042:8042 -p8088:8088 -p8090:8090 -p10020:10020 -p19888:19888 --name proxyserver -d 2breakfast/hadoop:2.7.3-yarn
```

### start historyserver

```bash
docker run -e PUBLISHED_IP=X.X.X.X -e HDFS_NAMENODE_RPC_HOST=$NAMENODEHOST -e RM_HOST=X.X.X.X -e JH_HOST=X.X.X.X -e ROLE=historyserver -v /data/tmp/hadoop:/tmp/hadoop -p8030-8033:8030-8033 -p8040:8040 -p8042:8042 -p8088:8088 -p8090:8090 -p10020:10020 -p19888:19888 --name historyserver -d 2breakfast/hadoop:2.7.3-yarn
```

## Exposed ports

* TCP 10020 MapReduce JobHistory Server host:port
* TCP 19888 MapReduce JobHistory Server Web UI host:port
