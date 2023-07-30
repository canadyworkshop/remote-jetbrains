#!/bin/bash

echo "root:${ROOT_PASSWORD}" | chpasswd || exit 1;

mkdir /root/development/
cd /root/development/

/usr/sbin/sshd -D