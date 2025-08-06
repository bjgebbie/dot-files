#!/bin/bash

install_syntax_stuff () {
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

    git clone https://github.com/zsh-users/zsh-autosuggestions \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
}

install_fzf () { 
    git clone --depth 1 https://github.com/junegunn/fzf.git "$HOME/.fzf"
    ~/.fzf/install --all --no-update-rc
    echo "source <(fzf --zsh)" >> ~/.zshrc
}

install_python () {

}

install_sdk_man () {

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
}

dynamic_load () {
    if ! command -v zsh >/dev/null 2>&1; then
        install_zsh_config > /dev/null
    fi

    if ! command -v fzf >/dev/null 2>&1; then
        install_fzf > /dev/null
    fi

    install_syntax_stuff > /dev/null
}

dynamic_load &
source ~/temp/install/utils/progress-spinner.sh
progress_spinner "zsh" $!
