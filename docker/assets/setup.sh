#!/bin/bash

# Install OpenSSH
yum -q -y update &&
yum -q -y install openssh-server openssh-clients &&
mkdir -p /var/run/sshd &&

# Install toolbox
yum -q -y install wget &&
yum -q -y install make gcc gcc-c++ patch &&
pushd /usr/local &&
tar xzf /assets/my-linux-toolbox.tar.gz &&
./my-linux-toolbox/scripts/build-all.sh &&
popd &&

# Generate host keys
ssh-keygen -t rsa1  -N '' -f /etc/ssh/ssh_host_key > /dev/null &&
ssh-keygen -t rsa   -N '' -f /etc/ssh/ssh_host_rsa_key > /dev/null &&
ssh-keygen -t dsa   -N '' -f /etc/ssh/ssh_host_dsa_key > /dev/null &&
ssh-keygen -t ecdsa -N '' -f /etc/ssh/ssh_host_ecdsa_key > /dev/null &&

# Setup user
echo 'root:admin' | chpasswd &&

# Remove installation files
rm -r /assets/

exit $?
