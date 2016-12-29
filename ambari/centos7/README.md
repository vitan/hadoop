## centos 7

### docker mode

```bash
# start ambari-server
docker run --privileged -p 8080:8080 -v /data/ambari-server/:/var/log/ambari-server/ -v /data/pgsql/:/var/lib/pgsql/ -d 2breakfast/ambari:server
# start ambari-agent
docker run --privileged -v /data/lib/modules:/lib/modules -d 2breakfast/ambari:agent systemd.setenv=AMBARI_SERVER_ADDR=192.168.1.20
```

### hyper mode

#### ambari-server pod
```json
{
    "id": "ambari110",
    "hostname": "192.168.1.110",
    "resource": {
       "vcpu": 4,
       "memory": 6096
    },
    "containers" : [{
        "image": "2breakfast/ambari:server",
        "entryPoint": ["/opt/ambari-server/non-init-entrypoint.sh"],
        "command": ["/bin/bash"],
        "volumes": [{
            "volume": "data_vol",
            "path": "/lib/modules",
            "readOnly": false
        }]
    }],
    "volumes": [{
        "name": "data_vol",
        "source": "/ambari/ambari110",
        "driver": "vfs"
    }],
    "interfaces": [{
        "bridge": "hyper0",
        "ip": "192.168.1.110/24",
        "gateway": "192.168.1.20"
    }]
}
```

#### ambari-agent pod

```bash
{
    "id": "ambari112",
    "hostname": "192.168.1.112",
    "resource": {
       "vcpu": 4,
       "memory": 6096
    },
    "containers" : [{
        "image": "2breakfast/ambari:server",
        "entryPoint": ["/opt/ambari-server/non-init-entrypoint.sh"],
        "command": ["/bin/bash"],
        "volumes": [{
            "volume": "data_vol",
            "path": "/lib/modules",
            "readOnly": false
        }]
    }],
    "volumes": [{
        "name": "data_vol",
        "source": "/ambari/ambari112",
        "driver": "vfs"
    }],
    "interfaces": [{
        "bridge": "hyper0",
        "ip": "192.168.1.112/24",
        "gateway": "192.168.1.20"
    }]
}
```
