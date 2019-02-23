#!/bin/sh
iptables-restore < /var/iptables.rules && /opt/docker-tinyproxy/run.sh "$@"

