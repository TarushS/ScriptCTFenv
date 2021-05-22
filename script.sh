#!/bin/bash
cd

# Installing dependencies
sudo apt update -y
sudo apt-get install python python-pip -y
sudo apt-get install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential ruby -y
pip3 install pwntools
pip install capstone

# Installing Tools
mkdir tools

## ROPGadget
git clone https://github.com/JonathanSalwan/ROPgadget && cd ROPgadget
python setup.py install
cd ..

## Forensic tools
sudo apt-get install exiftool eog ghex binwalk steghide stegsnow pngcheck zbar-tools fcrackzip wine -y
gem install zsteg

## Stegsolve
mkdir stegsolve && cd stegsolve
wget http://www.caesum.com/handbook/Stegsolve.jar -O stegsolve.jar
cd..

## Jsteg
wget -O /usr/bin/jsteg https://github.com/lukechampine/jsteg/releases/download/v0.1.0/jsteg-linux-amd64
chmod +x /usr/bin/jsteg
wget -O /usr/bin/slink https://github.com/lukechampine/jsteg/releases/download/v0.2.0/slink-linux-amd64
chmod +x /usr/bin/slink

## GDB peda+gef+pwndbg
git clone https://github.com/soaringk/gdb-peda-pwndbg-gef.git
cd gdb-peda-pwndbg-gef
./install.sh
cd ..

## Misc
if uname -r |grep -qi 'microsoft' ; then
  echo -e "\nexport DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0" >> ~/.bashrc
  echo "export LIBGL_ALWAYS_INDIRECT=1" >> ~/.bashrc
  echo "export PATH=\"$PATH:/mnt/c/Windows/system32:/mnt/c/Windows\"" >> ~/.bashrc
  echo -e "alias explorer=\"explorer.exe\"\nalias nautilus=\"explorer.exe .\"" >> ~/.bash_aliases
  echo "export GPG_TTY=$(tty)" >> ~/.bashrc
  wget https://cdn.discordapp.com/attachments/688712511289426075/845718503016497162/dir_colors -O ~/.dir_colors
  echo "eval \"$(dircolors ~/.dir_colors)\""
fi

source ~/.bashrc
sudo apt install neofetch -y
