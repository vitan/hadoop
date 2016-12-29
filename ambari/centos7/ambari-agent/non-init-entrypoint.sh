#!/bin/bash

/opt/ambari-agent/init-agent.sh && ambari-agent start

exec "$@"
