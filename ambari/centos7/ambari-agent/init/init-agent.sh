#!/bin/bash

[[ "TRACE" ]] && set -x

debug() {
  [[ "DEBUG" ]]  && echo "[DEBUG] $@" 1>&2
}

ambari_server_addr() {
  sed -i "s/^hostname=.*/hostname=${AMBARI_SERVER_ADDR}/" /etc/ambari-agent/conf/ambari-agent.ini
}

main() {
  ambari_server_addr
}

main "$@"

