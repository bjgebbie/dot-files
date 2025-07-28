#!/bin/bash

apt -y update
apt-get -y upgrade
apt install neovim-runtime -y
apt install unzip

if [ ! $(which rg) ]; then
    apt install ripgrep -y 
fi

if [ ! $(which git) ]; then
    apt install git -y 
fi

if [ ! $(which luarocks) ]; then
    apt install luarocks -y
fi

if [ ! $(which node) ]; then
    apt install nodejs npm -y
fi

# Installing Nvim
if [ ! $(which nvim) ]; then
    wget -P /opt https://github.com/neovim/neovim/releases/download/v0.11.0/nvim-linux-x86_64.tar.gz
    tar -xvf /opt/nvim-linux-x86_64.tar.gz -C /opt
    ln -s /opt/nvim-linux-x86_64/bin/nvim /bin/nvim

    echo "alias vim=\"nvim\"" >> ~/.bashrc
fi

