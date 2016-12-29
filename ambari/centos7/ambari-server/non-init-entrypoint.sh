#!/bin/bash

su postgres -c 'source /var/lib/pgsql/.bash_profile; pg_ctl init'
su postgres -c 'source /var/lib/pgsql/.bash_profile; pg_ctl start'
/opt/ambari-server/init-server.sh && ambari-server start

exec "$@"
