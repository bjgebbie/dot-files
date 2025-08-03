#!/bin/bash

install_kitty_config () {

    if command -v kitty >/dev/null 2>&1; then
        curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
    fi;
    mkdir -p .config/kitty/
    cp -r ~/temp/.config/kitty/. .config/kitty/
}

source ~/temp/install/utils/install-fonts.sh
install_kitty_config > /dev/null &
source ~/temp/install/utils/progress-spinner.sh
progress_spinner "Kitty" $!
