## CTF Env
For CTF starters
PS. if anything happens, feel free to create a issue

# Installation Script
```bash
git clone https://github.com/TarushS/ScriptCTFenv
cd ScriptCTFenv
chmod +x script.sh
sudo bash script.sh
```

# Docker automated script usage:
```bash
git clone https://github.com/TarushS/ScriptCTFenv
cd ScriptCTFenv
cd docker
chmod +x script.sh
./script.sh <valid_args>
```

# Docker automated script valid args:
```
build           : Is used for building the docker image
install_build   : Is used to install docker and build docker image
init            : It builds docker image and runs container and gives shell
shell           : Gives shell to existing docker conainer
run             : Runs docker container if image exists
stop            : Stops the docker container
delete		: Delete the image
help            : you are reading this right now
```
