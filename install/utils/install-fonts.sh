#!/bin/bash

mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts

wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.zip
unzip Hack.zip
rm Hack.zip

fc-cache -fv
