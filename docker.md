```
apt-get remove docker docker-engine docker.io
apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-get install docker-ce
```

```
sudo curl -L https://github.com/docker/compose/releases/download/1.20.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod 755 /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/local/bin/dcompose

sudo curl -L https://raw.githubusercontent.com/docker/compose/1.20.0/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose

sed '/complete \-F/ s/$/ dcompose' /etc/bash_completion.d/docker-compose


sudo curl -L https://raw.githubusercontent.com/docker/machine/v0.14.0/contrib/completion/bash/docker-machine.bash -o /etc/bash_completion.d/docker-machine

```
