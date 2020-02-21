# docker build -t ctf:ubuntu19.10 .
# docker run --rm -v $PWD:/pwd --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -d --name ctf -i ctf:ubuntu19.1
# docker exec -it ctf /bin/bash

FROM ubuntu:19.10
ENV LC_CTYPE C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive
RUN dpkg --add-architecture i386 && \
apt-get update && \
apt-get install -y build-essential jq strace ltrace curl wget rubygems gcc dnsutils netcat gcc-multilib net-tools vim gdb gdb-multiarch python python3 python3-pip python3-dev libssl-dev libffi-dev wget git make procps libpcre3-dev libdb-dev libxt-dev libxaw7-dev python-pip libc6:i386 libncurses5:i386 libstdc++6:i386 && \
pip install capstone requests r2pipe && \
pip3 install keystone-engine unicorn capstone ropper && \
python3 -m pip install --upgrade git+https://github.com/Gallopsled/pwntools.git@dev && \
mkdir tools && cd tools && \
git clone https://github.com/JonathanSalwan/ROPgadget && \
git clone https://github.com/radare/radare2 && cd radare2 && sys/install.sh && \
cd .. && git clone https://github.com/xct/ropstar && \
git clone https://github.com/pwndbg/pwndbg && cd pwndbg && ./setup.sh && \
cd .. && git clone https://github.com/niklasb/libc-database && cd libc-database && ./get && \
gem install one_gadget && \
cd /opt/ && git clone https://github.com/TarushS/ctfenv && cd ctfenv && mv picossh.sh .. && mv finish.sh .. && cd .. && rm -r ctfenv && \
cd ~ && rm .bashrc && git clone https://github.com/TarushS/bashrc && cd bashrc && mv .bashrc .. && cd .. && rm -r bashrc && \
cd ~/tools && mkdir stegsolve && cd stegsolve && wget http://www.caesum.com/handbook/Stegsolve.jar -O stegsolve.jar && cd .. && \
apt-get install zbar-tools exiftool ghex binwalk steghide stegsnow pngcheck fcrackzip ruby zsteg wine -y && \
wget -O /usr/bin/jsteg https://github.com/lukechampine/jsteg/releases/download/v0.1.0/jsteg-linux-amd64 && chmod +x /usr/bin/jsteg && \
wget -O /usr/bin/slink https://github.com/lukechampine/jsteg/releases/download/v0.2.0/slink-linux-amd64 && chmod +x /usr/bin/slink && \
cd && mkdir CTF && cd CTF && git clone https://gitlab.com/Anonimbus/encore && \
cd && source .bashrc
