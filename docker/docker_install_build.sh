#!/bin/bash
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
echo 'deb [arch=amd64] https://download.docker.com/linux/debian buster stable' | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get remove docker docker-engine docker.io
sudo apt-get install docker-ce -y
sudo systemctl start docker
sudo systemctl enable docker
sudo docker run hello-world
docker build -t ctf .
docker run --rm -v $PWD:/pwd --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -d --name ctf -i ctf
docker exec -it ctf /bin/bash
