#!/bin/bash
set -eux
useradd stack
cat <<EOF >/etc/sudoers.d/stack
stack ALL=(root) NOPASSWD:ALL
Defaults !requiretty
EOF
chmod 0440 /etc/sudoers.d/stack