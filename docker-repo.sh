#!/bin/bash
# add docker repo on Debian or Ubuntu
# from https://docs.docker.com/install/linux/docker-ce/debian/

apt-get remove docker docker-engine docker.io containerd runc

apt-get update
apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common

# Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

apt-get update
apt-get install docker-ce docker-ce-cli containerd.io

echo
echo "apt-cache madison docker-ce"

