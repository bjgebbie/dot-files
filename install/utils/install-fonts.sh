#!/bin/bash

install_fonts () {
    mkdir -p ~/.local/share/fonts
    cd ~/.local/share/fonts

    wget -q https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.zip > /dev/null
    unzip -q Hack.zip > /dev/null
    rm Hack.zip

    fc-cache -fv > /dev/null
}
