#!/bin/bash

show_progress() {
    local spin='-\|/'
    local i=0

    while kill -0 "$1" 2>/dev/null; do
        i=$(( (i+1) %4 ))
        printf "\r[%c] Installing Nvim" "${spin:$i:1}"
        sleep 0.1
    done
    printf "\r[✓] Nvim Done!        \n"
}

install_nvim_config () {
    if ! command -v nvim; then
        OS=$(uname -s | tr '[:upper:]' '[:lower:]')
        case "$OS" in
            linux) 
                curl -L https://github.com/neovim/neovim/releases/download/v0.11.3/nvim-linux-x86_64.tar.gz -o /usr/local/nvim-linux-x86_64.tar.gz
                tar xzf /usr/local/nvim-linux-x86_64.tar.gz -C /usr/local
                sudo ln -s /usr/local/nvim-linux-x86_64/bin/nvim /usr/local/bin/nvim
                nvim --version
            ;;
            darwin) echo apple;;
        esac
    fi
    # Node deps for LSPs
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    nvm install --lts

    mkdir -p ~/.config/nvim
    curl https://github.com/bjgebbie/dot-files/raw/refs/heads/master/nvim.tar.gz -o ~/.config/nvim/nvim.tar.gz
    tar -xzf ~/.config/nvim/nvim.tar.gz -C ~/.config/nvim
}

install_nvim_config

# install_zsh_config > /dev/null 2>&1 </dev/null &
# show_progress $!
# echo "Launching Nvim!"
# nvim
