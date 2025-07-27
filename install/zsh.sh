#!/bin/bash

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
    curl -O https://raw.githubusercontent.com/bjgebbie/dot-files/refs/heads/master/.zshrc
    curl -O https://raw.githubusercontent.com/bjgebbie/dot-files/refs/heads/master/.p10k.zsh
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --all --no-update-rc
}
