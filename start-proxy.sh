#!/bin/bash

docker run -d -v /opt/docker/configuration/:/var/lib/haproxy-restapi/conf --restart always --network host -p 9999:9999 --name gncloud-haproxy  gncloudkr/gncloud-haproxy