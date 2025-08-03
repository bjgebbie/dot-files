#!/bin/bash

install_lua () {
    curl -R https://www.lua.org/ftp/lua-5.4.6.tar.gz -o /usr/local/lua-5.4.6.tar.gz
    tar zxf /usr/local/lua-5.4.6.tar.gz -C /usr/local/
    cd /usr/local/lua-5.4.6
    make linux test
    make install  # May require sudo
}

install_node () {
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bashrc
    echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.bashrc
    nvm install --lts
}

install_rip_grep () {
    # install rust
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    export PATH="$HOME/.cargo/bin/:$PATH"

    # build rip
    mkdir ~/ripgrep
    git clone https://github.com/BurntSushi/ripgrep ~/ripgrep
    cd ~/ripgrep
    cargo build --release
    mv ./target/release/rg /usr/local/bin/rg

    # verify
    rg --version
}

install_nvim_by_platform () {
    if ! command -v nvim; then
        OS=$(uname -s | tr '[:upper:]' '[:lower:]')
        case "$OS" in
            linux) 
                curl -L https://github.com/neovim/neovim/releases/download/v0.11.3/nvim-linux-x86_64.tar.gz -o /usr/local/nvim-linux-x86_64.tar.gz
                tar xzf /usr/local/nvim-linux-x86_64.tar.gz -C /usr/local
                sudo ln -s /usr/local/nvim-linux-x86_64/bin/nvim /usr/local/bin/nvim
                nvim --version
            ;;
            darwin) brew install neovim;;
        esac
    fi
}

install_nvim_config () {
    install_nvim_by_platform

    # NeoVim config deps
    install_lua > /dev/null
    install_rip_grep > /dev/null
    install_node > /dev/null
 
    mkdir ~/temp
    mkdir -p ~/.config/nvim
    cp -r ~/temp/.config/nvim/. ~/.config/nvim/
}

install_nvim_config > /dev/null &
source ~/temp/install/utils/progress-spinner.sh
progress_spinner "NeoVim" $!
source ~/.bashrc
