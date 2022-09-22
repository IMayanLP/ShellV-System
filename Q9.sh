#!/bin/bash
declare -A PALAVRAS

if (($# > 0))
then 
    PALAVRAS=$(sed 's/ /\n/g' <<< "$*")
    nomes=($(printf '%s\n' ${PALAVRAS[@]} | sort))
    echo ${nomes[@]}|sed 's/ /\n/g'
else 
    echo "Insira uma lista de palavras"
fi
