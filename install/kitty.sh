#!/bin/bash

show_progress() {
    local spin='-\|/'
    local i=0

    while kill -0 "$1" 2>/dev/null; do
        i=$(( (i+1) %4 ))
        printf "\r[%c] Installing Kitty" "${spin:$i:1}"
        sleep 0.1
    done
    printf "\r[✓] Kitty Done!        \n"
}

install_kitty_config () {
    if command -v kitty >/dev/null 2>&1; then
        curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
    fi;
    mkdir -p .config/kitty/
    curl -o https://raw.githubusercontent.com/bjgebbie/dot-files/refs/heads/master/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf
}

install_kitty_config > /dev/null 2>&1 </dev/null &
show_progress $!
