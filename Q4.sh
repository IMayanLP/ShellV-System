#!/bin/bash
red="\033[0;31m"
redf="\033[0m"

echo -e "$red"
echo "Exercício 4
Elaborar um script que receba um número como parâmetro e imprima 
todos os números pares de 0 até o número informado como parâmetro.
Exemplo:
Digite o número: 10
0 2 4 6 8 10"
echo -e "$redf"

echo
echo -n "Digite um número: "
read NUM
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
sleep 5s