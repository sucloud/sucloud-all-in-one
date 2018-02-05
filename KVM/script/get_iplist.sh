#!/bin/bash

bridge_name="br0"

arp-scan --interface ${bridge_name} -l | grep -v grep | grep -v Ending | grep -v packets | grep -v Starting | grep -v Interface | cut -d '	' -f1,2