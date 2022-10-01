#!/bin/bash
clear
red="\033[0;31m"
redf="\033[0m"
azu="\033[0;34m"
ver="\033[0;32m"

echo -e "$red"
echo "Exercício 9
Desenvolva um script que receba uma lista de palavras como parâmetros e exiba, 
como resultado, essas palavras ordenadas

Exemplo:
Insira uma lista de palavras: casa bola abacaxi
abacaxi 
bola 
casa"
echo -e "$redf"

lista=''
arr=()

echo -n "Insira uma lista de palavras: "
read lista
    arr=$(sed 's/ /\n/g' <<< "$lista")
    arr=($(printf '%s\n' ${arr[@]} | sort))
    echo ${arr[@]}|sed 's/ /\n/g'
