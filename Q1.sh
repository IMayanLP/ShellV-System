#!/bin/bash
clear
red="\033[0;31m"
redf="\033[0m"

echo -e "$red"
echo "Exercício 4


Exemplo:"

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