#!/bin/bash
set -xeuo pipefail
sed -i '/PermitRootLogin /c PermitRootLogin yes' /etc/ssh/sshd_config
sed -i '/PasswordAuthentication /c PasswordAuthentication yes' /etc/ssh/sshd_config
echo 'root:root' | chpasswd
