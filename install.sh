#!/bin/bash

echo "Choose Options"
echo "0: all"
echo "1: zshrc"
echo "2: dolphinrc"
echo "3: hypr"
echo "4: kitty"
echo "5: waybar"
echo -n "Enter number(s): "
read -r input


if [[ $input == *0* ]]; then
    echo "Running flow 0..."
fi

if [[ $input == *1* ]]; then
    echo "Running flow 1..."
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


