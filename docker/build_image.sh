#!/bin/bash
docker build -t ctf .
docker run --rm -v $PWD:/pwd --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -d --name ctf -i ctf
docker exec -it ctf /bin/bash
