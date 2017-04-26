#!/bin/sh

# install my packages
yum install -y $(cat /tmp/packages.txt)

# add me
useradd -m alureon -s /bin/zsh

# get my dotfiles
mkdir -p /home/alureon/code/linux
cd /home/alureon/code/linux
git clone https://github.com/proxa/dotfiles.git
cd dotfiles
cp .zshrc .gitconfig .zprompt .dircolors /home/alureon
cp -r .vim /home/alureon
