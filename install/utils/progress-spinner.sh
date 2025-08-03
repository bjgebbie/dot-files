#!/bin/bash

progress_spinner () {
    local spin='-\|/'
    local i=0
    local installation=$1
    local installationPID=$2

    while kill -0 "$2" 2>/dev/null; do
        i=$(( (i+1) %4 ))
        printf "\r[%c] Installing ${installation}" "${spin:$i:1}"
        sleep 0.1
    done
    printf "\r[✓] ${installation} Installed!        \n"
}
