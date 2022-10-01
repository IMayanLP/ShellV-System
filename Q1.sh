#!/bin/bash
clear
red="\033[0;31m"
redf="\033[0m"
azu="\033[0;34m"
ver="\033[0;32m"

echo -e "$red"
echo "Exercício 1
Elaborar um script que receba dois números como parâmetros e como resultado da sua execução exiba as seguintes informações: 
- O maior dos números recebidos
- O somatório dos números recebidos

Exemplo:
Digite o primeiro número: 23
Digite o segundo número: 14
O maior é: 23
Soma dos numeros: 37"
echo -e "$redf"

read -p "Digite o primeiro número: " NUM1
while [[ "$NUM1" =~ [^0-9] || -z "$NUM1" ]]
do        
   echo -e "$azu -Tente novamente com um NÚMERO- $redf" 
   echo    
   read -p "Digite o primeiro número: " NUM1
done

read -p "Digite o segundo número: " NUM2
while [[ "$NUM2" =~ [^0-9] || -z "$NUM2" ]]
do        
   echo -e "$ver -Tente novamente com um NÚMERO- $redf"    
   echo 
   read -p "Digite o segundo número: " NUM2
done

if [ "$NUM1" -gt "$NUM2" ]
then
    echo "O maior é: $NUM1"
else
    echo "O maior é: $NUM2"
fi

echo "Soma dos numeros: $(($NUM1+$NUM2))"