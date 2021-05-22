#!/bin/bash
cd /opt/
git clone https://github.com/TarushS/ctfenv
cd ctfenv
mv picossh.sh ..
mv finish.sh ..
cd ..
rm -r ctfenv
cd ~
rm .bashrc
git clone https://github.com/TarushS/bashrc
cd bashrc
mv .bashrc ..
cd ..
rm -r bashrc
mkdir tools
cd tools
git clone https://github.com/niklasb/libc-database
cd libc-database
chmod +x get
./get
cd ..
git clone https://github.com/JonathanSalwan/ROPgadget
apt install python -y
apt install python-pip -y
pip install pwntools
apt install python3 -y
apt install python3-pip -y
pip install capstone
cd ROPgadget
python setup.py install
cd ..
git clone https://github.com/xct/ropstar
cd ..
mkdir CTF
cd CTF
cd ..
cd tools
apt-get update
apt-get install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential -y
pip3 install pwntools
apt install exiftool -y
apt install ghex -y
apt install binwalk -y
apt install steghide -y
mkdir stegsolve
cd stegsolve
wget http://www.caesum.com/handbook/Stegsolve.jar -O stegsolve.jar
apt-get install zbar-tools -y
apt install stegsnow -y
apt install pngcheck -y
apt install fcrackzip -y
cd ..
wget -O /usr/bin/jsteg https://github.com/lukechampine/jsteg/releases/download/v0.1.0/jsteg-linux-amd64
chmod +x /usr/bin/jsteg
wget -O /usr/bin/slink https://github.com/lukechampine/jsteg/releases/download/v0.2.0/slink-linux-amd64
chmod +x /usr/bin/slink
apt install ruby -y
gem install zsteg
apt install wine -y
cd
source .bashrc
