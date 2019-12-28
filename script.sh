#!/bin/bash
sudo su
cd /opt/
git clone https://github.com/TarushS/ctfenv
cd ~
rm .bashrc
git clone https://github.com/TarushS/bashrc
mkdir tools
cd tools
git clone https://github.com/niklasb/libc-database
cd libc-database
chmod +x get
./get
cd ..
git clone https://github.com/JonathanSalwan/ROPgadget
apt install python
apt install python-pip
apt install python3
apt install python3-pip
pip install capstone
cd ROPgadget
python setup.py install
cd ..
git clone https://github.com/xct/ropstar
cd ..
mkdir CTF
cd CTF
git clone https://gitlab.com/Anonimbus/encore
cd ..
cd tools
apt-get update
apt-get install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade git+https://github.com/Gallopsled/pwntools.git@dev3
apt install exiftool
apt install ghex
apt install binwalk
apt install steghide
mkdir stegsolve
cd stegsolve
wget http://www.caesum.com/handbook/Stegsolve.jar -O stegsolve.jar
apt-get install zbar-tools
apt install stegsnow
apt install pngcheck
apt install fcrackzip
cd ..
wget -O /usr/bin/jsteg https://github.com/lukechampine/jsteg/releases/download/v0.1.0/jsteg-linux-amd64
chmod +x /usr/bin/jsteg
wget -O /usr/bin/slink https://github.com/lukechampine/jsteg/releases/download/v0.2.0/slink-linux-amd64
chmod +x /usr/bin/slink
apt install ruby
gem install zsteg
apt install wine-stable
cd
source .bashrc
