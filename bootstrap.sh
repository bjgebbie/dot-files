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

case $input in
    *1*)
        source ~/temp/install/kitty.sh
        ;;
    *2*)
        source ~/temp/install/zsh.sh
        ;;
    *3*)
        source ~/temp/install/nvim.sh
        ;;
    *)
        echo "${input} not setup"
        ;;
esac
# rm -rf ~/temp
