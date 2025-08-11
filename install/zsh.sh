#!/bin/bash

install_zsh_plugins () {
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

    git clone https://github.com/zsh-users/zsh-autosuggestions \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
}

install_fzf () { 
    git clone --depth 1 https://github.com/junegunn/fzf.git "$HOME/.fzf"
    ~/.fzf/install --all --no-update-rc
    echo "source <(fzf --zsh)" >> "$HOME/.zshrc"
}

install_zsh() {
    # this needs git, xz-utils, curl, and gcc
    curl -fsSL https://sourceforge.net/projects/zsh/files/zsh/5.9/zsh-5.9.tar.xz/download -o zsh-5.9.tar.xz
    tar -xf zsh-5.9.tar.xz

    cd zsh-5.9
    ./configure
    make
    make install
    zsh --version
    cd "$HOME/temp"
}

install_oh_my_zsh () {
    RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

install_p10k () {
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" 
}

install_zsh_config () {
    if ! command -v zsh >/dev/null 2>&1; then
        install_zsh > /dev/null
    fi
    if ! command -v fzf >/dev/null 2>&1; then
        install_fzf > /dev/null
    fi

    install_oh_my_zsh 
    install_p10k
    install_zsh_plugins 
    cp .zshrc .p10k.zsh "$HOME"
}

install_zsh_config  &
source install/utils/progress-spinner.sh
progress_spinner "zsh" $!
