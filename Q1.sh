#!/bin/bash
clear
red="\033[0;31m"
redf="\033[0m"

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


echo -n "Digite o primeiro número: "
read NUM1
echo -n "Digite o segundo número: "
read NUM2

if [ "$NUM1" -gt "$NUM2" ]
then
    echo "O maior é: $NUM1"
else
    echo "O maior é: $NUM2"
fi

echo "Soma dos numeros: $(($NUM1+$NUM2))"