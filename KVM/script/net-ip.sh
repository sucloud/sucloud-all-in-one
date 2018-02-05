#!/bin/bash
ip=$1
gateway=$2
netmask=$3
>/tmp/.net-ip
echo "DEVICE=eth1" >> /tmp/.net-ip
echo "BOOTPROTO=static" >> /tmp/.net-ip
echo "ONBOOT=yes" >> /tmp/.net-ip
echo "TYPE=Ethernet" >> /tmp/.net-ip
echo "USERCTL=yes" >> /tmp/.net-ip
echo "PEERDNS=yes" >> /tmp/.net-ip
echo "IPV6INIT=no" >> /tmp/.net-ip
echo "PERSISTENT_DHCLIENT=1" >> /tmp/.net-ip
echo "IPADDR=${ip}" >> /tmp/.net-ip
echo "GATEWAY=${gateway}" >> /tmp/.net-ip
echo "NETMASK=${netmask}" >> /tmp/.net-ip