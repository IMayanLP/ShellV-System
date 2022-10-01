#!/bin/bash
red="\033[0;31m"
redf="\033[0m"
azu="\033[0;34m"

echo -e "$red"
echo "Exercício 4
Elaborar um script que receba um número como parâmetro e imprima 
todos os números pares de 0 até o número informado como parâmetro.
Exemplo:
Digite o número: 10
0 2 4 6 8 10"
echo -e "$redf"

read -p "Digite um número: " NUM
while [[ "$NUM" =~ [^0-9] || -z "$NUM" ]]
do        
   echo -e "$azu -Tente novamente com um NÚMERO- $redf" 
   echo    
   read -p "Digite umo número: " NUM
done

i=0
NUM=$(($NUM+1))
while [ $i -ne $NUM ]
do
    if test $(($i%2)) -eq 0
    then 
        echo -n "$i  "
    fi
    ((i=i+1))
done
