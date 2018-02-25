#!/bin/bash

# Change root password
echo 'root:admin' | chpasswd &&

# Add group & user
useradd -u 1000 -m setup &&
echo 'setup:manager' | chpasswd &&

# Generate locale
localedef -i ja_JP -f UTF-8     -c -A /usr/share/locale/locale.alias ja_JP.UTF-8 &&
localedef -i ja_JP -f SHIFT_JIS -c -A /usr/share/locale/locale.alias ja_JP.SHIFT_JIS &&

# Install OpenSSH
yum -q -y install openssh-server openssh-clients &&
mkdir -p /var/run/sshd &&

# Generate host keys
ssh-keygen -t rsa1  -N '' -f /etc/ssh/ssh_host_key > /dev/null &&
ssh-keygen -t rsa   -N '' -f /etc/ssh/ssh_host_rsa_key > /dev/null &&
ssh-keygen -t dsa   -N '' -f /etc/ssh/ssh_host_dsa_key > /dev/null &&
ssh-keygen -t ecdsa -N '' -f /etc/ssh/ssh_host_ecdsa_key > /dev/null &&

# Remove installation files
rm -r /assets/

exit $?
