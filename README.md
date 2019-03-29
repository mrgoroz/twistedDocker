### Install Docker on Ubuntu:
```
sudo apt-get remove docker docker-engine docker.io containerd runc -y
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
sudo groupadd docker
sudo usermod -aG docker $USER
su -
docker ps
```

### Build the image:
```
docker build --rm -f Dockerfile -t twistedcont:latest .
```

### Start the container:
```
export con_id="$(docker run -t -d twistedcont:latest)"
```

### Connect to the bash of a running container:
```
docker exec -i -t $con_id /bin/bash
```

### Kill all running containers:
```
docker kill $(docker ps -q)
```

### Delete all stopped containers:
```
docker rm $(docker ps -a -q)
```

### Delete all images:
```
docker rmi $(docker images -q)
```
