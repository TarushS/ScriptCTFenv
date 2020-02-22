## CTF Env
For CTF starters

# Installation Script
```bash
git clone https://github.com/TarushS/ScriptCTFenv
cd ScriptCTFenv
chmod +x script.sh
sudo bash script.sh
```

# Install Docker and the container using one script
```bash
git clone https://github.com/TarushS/ScriptCTFenv
cd ScriptCTFenv
chmod +x script.sh
sudo bash script.sh
```

# Install Docker on linux
```bash
git clone https://github.com/TarushS/ScriptCTFenv
cd ScriptCTFenv
cd docker
chmod +x docker_install_build.sh
sudo bash docker_install_build.sh
```

# Installation Docker container (if docker installed)
```bash
docker build -t ctf .
docker run --rm -v $PWD:/pwd --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -d --name ctf -i ctf .
docker exec -it ctf /bin/bash
```

# Installation docker container using script. (if docker installed)
```bash
git clone https://github.com/TarushS/ScriptCTFenv
cd ScriptCTFenv
cd docker
chmod +x build_image.sh
sudo bash build_image.sh
```

