#!/bin/bash

bridge_name="br0"

arp-scan --interface ${bridge_name} -l | grep -v grep | grep -v Ending | grep -v packets | grep -v Starting | grep -v Interface | cut -d '	' -f1
[root@docker-registry script]# cat file_pass.sh
#!/bin/bash
instance_ip=$1
os=$2
scp /tmp/.net-ip ${os}@${instance_ip}:/tmp/ifcfg-eth1