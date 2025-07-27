#!/bin/bash

echo "Choose Options"
echo "0) all"
echo "1) zshrc"
echo "2) dolphinrc"
echo "3) hypr"
echo "4) kitty"
echo "5) waybar"
echo -n "Enter number(s): "
read -r input

install_zsh_config () {
    # this needs git, xz-utils, curl, and gcc
    cd $HOME
    echo "Installing zshrc..."
    sleep 1

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
    zsh
}

if [[ $input == *0* ]]; then
    echo "al"
fi

if [[ $input == *1* ]]; then
    # Define the total number of steps for the progress bar
    TOTAL_STEPS=50

    # Define the character to represent progress
    PROGRESS_CHAR="#"

    # Loop through the steps
    for i in $(seq 1 $TOTAL_STEPS); do
        # Calculate the percentage
        PERCENT=$(( (i * 100) / TOTAL_STEPS ))

        # Create the progress bar string
        BAR=$(printf "%${i}s" | tr ' ' "$PROGRESS_CHAR")
        EMPTY_BAR=$(printf "%$((TOTAL_STEPS - i))s" | tr ' ' "-")

        # Print the progress bar and percentage, overwriting the current line
        echo -ne "\r[${BAR}${EMPTY_BAR}] ${PERCENT}%"

        install_zsh_config > /dev/null
    done
fi

if [[ $input == *2* ]]; then
    echo "Running flow 2..."
fi

if [[ $input == *3* ]]; then
    echo "Running flow 3..."
fi

if [[ $input == *4* ]]; then
    echo "Running flow 4..."
fi

if [[ $input == *5* ]]; then
    echo "Running flow 5..."
fi



