#!/bin/bash

show_progress() {
    local spin='-\|/'
    local i=0

    while kill -0 "$1" 2>/dev/null; do
        i=$(( (i+1) %4 ))
        printf "\r[%c] Installing ZSH" "${spin:$i:1}"
        sleep 0.1
    done
    printf "\r[✓] ZSH Done!        \n"
}

install_zsh_config () {
    if [ command -v kitty ]; then
        curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
    fi;
}
