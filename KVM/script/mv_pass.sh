#!/bin/bash
instance_ip=$1
os=$2
ssh ${os}@${instance_ip} sudo mv /tmp/ifcfg-eth1 /etc/sysconfig/network-scripts/.