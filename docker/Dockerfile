# docker build -t ctf .
# docker run --rm -v $PWD:/pwd --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -d --name ctf -i ctf
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
mkdir tools
WORKDIR /root/tools/
RUN git clone https://github.com/JonathanSalwan/ROPgadget
WORKDIR /root/tools/ROPgadget
RUN python setup.py install
WORKDIR /root/tools/
RUN git clone https://github.com/radare/radare2
WORKDIR /root/tools/radare2
RUN sys/install.sh
WORKDIR /root/tools/
RUN git clone https://github.com/xct/ropstar && \
git clone https://github.com/pwndbg/pwndbg
WORKDIR /root/tools/pwndbg/
RUN ./setup.sh
WORKDIR /root/tools/
RUN git clone https://github.com/niklasb/libc-database
WORKDIR /root/tools/libc-database
RUN chmod +x get && ./get && \
gem install one_gadget

WORKDIR /opt/
RUN  git clone https://github.com/TarushS/ctfenv 
WORKDIR /opt/ctfenv/
RUN mv picossh.sh /opt/ && mv finish.sh /opt/
WORKDIR /opt/
RUN rm -r ctfenv
WORKDIR /root/tools/
RUN mkdir stegsolve
WORKDIR /root/tools/stegsolve
RUN wget http://www.caesum.com/handbook/Stegsolve.jar -O stegsolve.jar
WORKDIR /root/tools/
RUN apt-get install zbar-tools exiftool ghex binwalk steghide stegsnow pngcheck fcrackzip ruby wine -y && \
wget -O /usr/bin/jsteg https://github.com/lukechampine/jsteg/releases/download/v0.1.0/jsteg-linux-amd64 && chmod +x /usr/bin/jsteg && \
wget -O /usr/bin/slink https://github.com/lukechampine/jsteg/releases/download/v0.2.0/slink-linux-amd64 && chmod +x /usr/bin/slink
WORKDIR /root/
RUN mkdir CTF
WORKDIR /root/CTF/
RUN git clone https://gitlab.com/Anonimbus/encore
WORKDIR /root/
RUN rm .bashrc && git clone https://github.com/TarushS/bashrc
WORKDIR /root/bashrc
RUN mv .bashrc /root
WORKDIR /root/
RUN rm -r bashrc
