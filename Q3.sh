#!/bin/bash
clear
red="\033[0;31m"
redf="\033[0m"

echo -e "$red"
echo "Exercício 3
Escreva um script que receba como parâmetro o caminho de um diretório e liste seus arquivos e diretórios um a um. 
Se for diretório, deve escrever (dir) ao lado do diretório

Exemplo:
Digite o arquivo: /tmp
arq1 arq2 
dir1 (dir) 
xara 
dir2 (dir)"

echo -e "$redf"

echo -n "Digite o arquivo: "
read ARQUIVO
if test -d "$ARQUIVO"
then
    ls -l $ARQUIVO | while read linha; do
        if [ ${linha:0:1} = "d" ]; then
            echo $linha | awk '{print $9 " (dir)"}'
        else
            echo $linha | awk '{print $9}'
        fi
    done
else
    echo "O arquivo passado não é diretório ou não existe"
fi
