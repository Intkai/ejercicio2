#!/bin/bash

if [ $# -lt 2 ]; then

    if [ $# -eq 1 ]; then

        if [ $1 == '--help' ]; then
            echo "ejercicio2.sh <enable/disable> <dirección_web> <ip>"
        elif [ $1 == '--cat' ]; then
            cat "/etc/hosts"

        exit 0
    fi

    echo "Número de argumentos inválido"
    exit 1
fi

option = $1

if [ $option == 'disable' ]; then
    sed -i "/$2/d" /etc/hosts
elif [ $option == 'enable' ]; then
    # ni idea
fi

