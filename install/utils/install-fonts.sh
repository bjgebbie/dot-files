#!/bin/bash

mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts

wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.zip > /dev/null
unzip Hack.zip > /dev/null
rm Hack.zip

fc-cache -fv > /dev/null
