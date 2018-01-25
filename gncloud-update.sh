#!/bin/bash
cd /root/sucloud-all-in-one;
docker-compose down
docker pull sucloud/sucloud-mysql
docker pull sucloud/sucloud-web
docker pull sucloud/sucloud-scheduler
docker pull sucloud/sucloud-downloadfilemanager
docker pull sucloud/sucloud-manager
docker pull sucloud/sucloud-docker
docker pull sucloud/sucloud-hyperv
docker pull sucloud/sucloud-kvm
docker pull sucloud/sucloud-registry
docker pull sucloud/sucloud-haproxy
docker-compose up -d