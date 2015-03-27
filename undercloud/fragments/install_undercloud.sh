#!/bin/bash
set -eux

su - stack -c "curl https://raw.githubusercontent.com/rdo-management/instack-undercloud/master/scripts/instack-setup-host | bash -x"
yum install -y instack-undercloud
echo 127.0.0.1 `hostname -s`.openstacklocal >> /etc/hosts
su - stack -c "cp /usr/share/instack-undercloud/instack.answers.sample ~/instack.answers"
su - stack -c "instack-install-undercloud"
cp /root/tripleo-undercloud-passwords ~stack
cp /root/stackrc ~stack