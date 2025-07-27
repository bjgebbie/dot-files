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

show_progress() {
    local spin='-\|/'
    local i=0

    while kill -0 "$1" 2>/dev/null; do
        i=$(( (i+1) %4 ))
        printf "\r[%c] Installing..." "${spin:$i:1}"
        sleep 0.1
    done
    printf "\r[✓] Done!        \n"
}

if [[ $input == *0* ]]; then
    echo "al"
fi

if [[ $input == *1* ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/bjgebbie/dot-files/refs/heads/master/install/zsh.sh)"
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



