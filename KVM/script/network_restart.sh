#!/bin/bash
instance_ip=$1
os=$2
ssh ${os}@${instance_ip} sudo service network restart