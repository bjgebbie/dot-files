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

git clone git@github.com:bjgebbie/dot-files.git $HOME

if [[ $input == *0* ]]; then
    echo "al"
fi

if [[ $input == *1* ]]; then
    cd $HOME
    echo "Installing zshrc..."
    sleep 2

    curl -fsSL https://sourceforge.net/projects/zsh/files/zsh/5.9/zsh-5.9.tar.xz/download -o zsh-5.9.tar.xz
    tar -xf zsh-5.9.tar.xz
    cd zsh-5.9
    ./configure
    make
    make install
    zsh --version

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
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


