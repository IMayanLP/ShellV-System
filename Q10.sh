#!/bin/bash
PALAVRA=""
while :
do
    echo -n "Insira a nova palavra: "
    read NOVA_PALAVRA
    if [ $NOVA_PALAVRA = "sair" ]
        then 
            break
        else
            PALAVRA+="$NOVA_PALAVRA,"
            arr=(${PALAVRA//","/ })
            nomes=($(printf '%s\n' ${arr[@]} | sort))
            echo ${nomes[@]}|sed 's/ /\n/g'
            echo
    fi
done