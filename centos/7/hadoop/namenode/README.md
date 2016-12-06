# hdfs-namenode

hdfs namenode in docker

## How to use it

```bash
docker run -e PUBLISHED_IP=X.X.X.X -e CLUSTER_NAME=test_cluster -v /data:/var/hdfs/namenode -d --name hdfs-nn -p 8020:8020 -p 50070:50070 2breakfast/hadoop:2.7.3-nn
```

## Exposed ports

* TCP   8020    fs.defaultFS                    IPC: ClientProtocol
* TCP   50070   dfs.namenode.http-address       HTTP connector
* TCP   50470   dfs.namenode.https-address      HTTPS connector
