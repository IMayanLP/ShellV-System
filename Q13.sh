#!/bin/bash
clear
red="\033[0;31m"
redf="\033[0m"

echo -e "$red"
echo "Exercício 13
Uma das informações armazenadas no arquivo /etc/passwd é o shell utilizado
por cada usuário do sistema (campo 7). 
Desenvolva um script que informe qual é o shell mais utilizado. 

Exemplo: 
/bin/sh => 17 usuários. "
echo -e "$redf"

declare -A shells

for i in $(cut -d: -f 7 /etc/passwd)
do
    let shells[$i]++
done

USADO=($(xargs -n 1 <<< ${!shells[@]} | sort -nr | head -1))
NUM=($(xargs -n 1 <<< ${shells[@]} | sort -nr | head -1))
echo "$USADO -> $NUM usuários"