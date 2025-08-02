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

install_syntax_stuff () {
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

    git clone https://github.com/zsh-users/zsh-autosuggestions \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
}
install_zsh_config () {
    # this needs git, xz-utils, curl, and gcc
    cd $HOME

    curl -fsSL https://sourceforge.net/projects/zsh/files/zsh/5.9/zsh-5.9.tar.xz/download -o zsh-5.9.tar.xz
    tar -xf zsh-5.9.tar.xz

    cd zsh-5.9
    ./configure
    make
    make install
    zsh --version

    cd $HOME
    RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" 
    curl https://raw.githubusercontent.com/bjgebbie/dot-files/refs/heads/master/.zshrc -o "$HOME/.zshrc"
    curl https://raw.githubusercontent.com/bjgebbie/dot-files/refs/heads/master/.p10k.zsh -o "$HOME/.p10k.zsh"
    git clone --depth 1 https://github.com/junegunn/fzf.git "$HOME/.fzf"
    ~/.fzf/install --all --no-update-rc

    install_syntax_stuff
}

install_zsh_config > /dev/null 2>&1 </dev/null &
show_progress $!
