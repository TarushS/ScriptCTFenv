#!/bin/bash

build () {
	docker build -t ctf .
}

install_build () {
	curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
	echo 'deb [arch=amd64] https://download.docker.com/linux/debian buster stable' | sudo tee /etc/apt/sources.list.d/docker.list
	sudo apt-get update
	sudo apt-get remove docker docker-engine docker.io
	sudo apt-get install docker-ce -y
	sudo systemctl start docker
	sudo systemctl enable docker
	sudo docker run hello-world
	docker build -t ctf .
}

install () {
	curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
	echo 'deb [arch=amd64] https://download.docker.com/linux/debian buster stable' | sudo tee /etc/apt/sources.list.d/docker.list
	sudo apt-get update
	sudo apt-get remove docker docker-engine docker.io
	sudo apt-get install docker-ce -y
	sudo systemctl start docker
	sudo systemctl enable docker
	sudo docker run hello-world
}

shell () {
	docker exec -it ctf /bin/bash
}

init () {
	docker build -t ctf .
	docker run --rm -v $PWD:/pwd --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -d --name ctf -i ctf
	docker exec -it ctf /bin/bash
}

run () {
	docker run --rm -v $PWD:/pwd --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -d --name ctf -i ctf
}

stop () {
	docker container stop ctf
}

help () {
	cat .help
}

arg=$1

if [[ $arg == "build" ]]
then
	build
elif [[ $arg == "install_build" ]]
then
	install_build
elif [[ $arg == "shell" ]]
then
	shell
elif [[ $arg == "init" ]]
then
	init
elif [[ $arg == "run" ]]
then
	run
elif [[ $arg == "stop" ]]
then
	stop
elif [[ $arg == "help" ]]
then
	help
elif [[ $arg == "" ]]
then
	echo "wrong arguments specified please run the following:"
	cat .help
fi
echo "wrong arguments specified please run the following:"
cat .help