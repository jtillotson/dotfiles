#!/bin/bash
domainname=$1
command=$2
for ip in $(dig @localhost -tAXFR ${domainname} | awk '{if( $4 == "A" ) {print $1} }' | sed s/\.${domainname}\.// ) ; do
  ssh ${ip} "${command}"
done
