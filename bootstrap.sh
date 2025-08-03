#!/bin/bash

get_options () { 
    echo "Choose Options"
    echo "1) kitty"
    echo "2) zsh"
    echo "3) nvim"
    echo "4) hypr"
    echo "5) dolphinrc"
    echo "6) waybar"
    echo "7) rofi"
    echo -n "Enter number(s): "

    read -r input

    if [[ ${#input} == 0 ]]; then
        printf "\nNo Option(s) Selected! \n\n"
        get_options
    fi
}

get_options 

if [[ $dryrun != "1" ]]; then 
    mkdir ~/temp 
    git clone https://github.com/bjgebbie/dot-files.git ~/temp
fi

if [[ $input == *1* ]]; then
    source ~/temp/install/kitty.sh
fi

if [[ $input == *2* ]]; then
    source ~/temp/install/zsh.sh
fi

if [[ $input == *3* ]]; then
    source ~/temp/install/nvim.sh
fi

# rm -rf ~/temp
