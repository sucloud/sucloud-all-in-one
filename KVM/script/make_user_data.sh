#!/bin/bash

> /var/lib/sucloud/KVM/script/initcloud/user-data
echo "#cloud-config" >> /var/lib/sucloud/KVM/script/initcloud/user-data
echo "password: sucloud" >> /var/lib/sucloud/KVM/script/initcloud/user-data
echo "chpasswd: {expire: False}" >> /var/lib/sucloud/KVM/script/initcloud/user-data
echo "ssh_pwauth: true" >> /var/lib/sucloud/KVM/script/initcloud/user-data
echo "ssh_authorized_keys:" >> /var/lib/sucloud/KVM/script/initcloud/user-data
echo " - `cat ~/.ssh/id_rsa.pub`" >> /var/lib/sucloud/KVM/script/initcloud/user-data
echo "runcmd:" >> /var/lib/sucloud/KVM/script/initcloud/user-data
echo " - [ sh, -c, echo \" `cat ~/.ssh/id_rsa.pub`\" >> ~/.ssh/authorized_keys ] " >> \
    /var/lib/sucloud/KVM/script/initcloud/user-data
