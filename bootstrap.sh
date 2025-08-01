#!/bin/bash

echo "Choose Options"
echo "0) all"
echo "1) zshrc"
echo "2) kitty"
echo "3) hypr"
echo "4) dolphinrc"
echo "5) waybar"
echo "6) nvim"
echo -n "Enter number(s): "
read -r input

if [[ $input == *0* ]]; then
    bash <(curl -fsSL https://raw.githubusercontent.com/bjgebbie/dot-files/refs/heads/master/install/zsh.sh)
    bash <(curl -fsSL https://raw.githubusercontent.com/bjgebbie/dot-files/refs/heads/master/install/kitty.sh)
fi

if [[ $input == *1* ]]; then
    bash <(curl -fsSL https://raw.githubusercontent.com/bjgebbie/dot-files/refs/heads/master/install/zsh.sh)
fi

if [[ $input == *2* ]]; then
    bash <(curl -fsSL https://raw.githubusercontent.com/bjgebbie/dot-files/refs/heads/master/install/kitty.sh)
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

if [[ $input == *6* ]]; then
    bash <(curl -fsSL https://raw.githubusercontent.com/bjgebbie/dot-files/refs/heads/master/install/nvim.sh)
fi
