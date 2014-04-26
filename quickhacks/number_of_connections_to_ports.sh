#!/bin/bash
port=$1
state=$2
state=$(echo ${state} | tr '[:lower:]' '[:upper:]')

echo "netstat -a | grep ":${port}" | grep ${state} | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c"
