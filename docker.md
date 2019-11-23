```
apt-get remove docker docker-engine docker.io
apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
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

sed -i '/complete \-F/ s/$/\ dcompose/' docker-compose


sudo curl -L https://raw.githubusercontent.com/docker/machine/v0.14.0/contrib/completion/bash/docker-machine.bash -o /etc/bash_completion.d/docker-machine

```

Remove docker logs:
```truncate -s 0 /var/lib/docker/containers/*/*-json.log```



Docker logs:
Create /etc/docker/daemon.json and restart docker daemon

```
{
"log-driver": "json-file",
"log-opts": {
    "max-size": "10m",
    "max-file": "3"
    }
}
```

# Docker on ZFS
level=error msg="'overlay2' is not supported over zfs" storage-driver=overlay2  
To use ZFS as the storage driver, we need to specify it to the deamon.  

Modify /lib/systemd/system/docker.service  
Each docker container will have own mount-point 
```
ExecStart=/usr/bin/dockerd --storage-driver=zfs --data-root=/tank/docker -H fd://
```  

---
```diff
- DEPRECATED
```
Seems that options in /etc/docker/daemon.js are deprecated. Doesn't work on Ubuntu 18.04 and/or Docker version 18.09.1. 
```
{
  "storage-driver": "zfs",
  "graph": "/tank/docker"
}
```
