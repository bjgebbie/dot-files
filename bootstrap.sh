#!/bin/bash
get_options () { 
    echo "Choose Options"
    echo "0) all"
    echo "1) zsh"
    echo "2) kitty"
    echo "3) hypr"
    echo "4) dolphinrc"
    echo "5) waybar"
    echo "6) nvim"
    echo "7) rofi"
    echo -n "Enter number(s): "

    local input=$1
    read -r input

    if [[ ${#input} == 0 ]]; then
        printf "\nNo Option(s) Selected! \n\n"
        get_options ""
    fi
}
input=""
get_options input 

if [[ $dryrun != "1" ]]; then 
    mkdir ~/temp 
    git clone https://github.com/bjgebbie/dot-files.git ~/temp
fi

if [[ $input == *0* ]]; then
    echo "asdf"
fi

if [[ $input == *1* ]]; then
    source ~/temp/install/zsh.sh
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
    source ~/temp/install/nvim.sh
fi

# rm -rf ~/temp
