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

delete () {
	docker images
	echo "to delete the container, run:"
	echo "docker image rm <container_id>"
	echo "with <container_id> as the container_id. NOTE: do not include <>"
}

arg=$1
val=1

if [[ $arg == "build" ]]
then
	build
	val=2
elif [[ $arg == "install_build" ]]
then
	install_build
	val=2
elif [[ $arg == "shell" ]]
then
	shell
	val=2
elif [[ $arg == "init" ]]
then
	init
	val=2
elif [[ $arg == "run" ]]
then
	run
	val=2
elif [[ $arg == "stop" ]]
then
	stop
	val=2
elif [[ $arg == "help" ]]
then
	help
	val=2
elif [[ $arg == "delete" ]]
then
	delete
	val=2
elif [[ $arg == "" ]]
then
	echo "wrong arguments specified please run the following:"
	cat .help
fi

if [[ $val = 1 ]]
then
	echo "wrong arguments specified please run the following:"
	cat .help
	echo ""
else
	echo ""
fi








