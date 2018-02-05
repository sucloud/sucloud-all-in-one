#!/bin/bash

vm_name=$1
bridge_name="br0"

status=`virsh list --all | grep  ${vm_name} | awk '{print $3}'`

echo -n "${status}"