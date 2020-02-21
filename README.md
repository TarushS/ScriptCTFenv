## CTF Env
For CTF starters

# Installation Script
```bash
git clone https://github.com/TarushS/ScriptCTFenv
cd ScriptCTFenv
chmod +x script.sh
sudo bash script.sh
```

# Installation Docker container
```bash
docker build -t ctf:ubuntu19.10 .
docker run --rm -v $PWD:/pwd --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -d --name ctf -i ctf:ubuntu19.1
docker exec -it ctf /bin/bash
```
