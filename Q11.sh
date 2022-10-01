#!/bin/bash
clear
red="\033[0;31m"
redf="\033[0m"

echo -e "$red"
echo "Exercício 11
Desenvolva um script que realize as operações aritméticas básicas (soma, subtração, divisão e multiplicação),
recebendo a operação e os operadores como parâmetros:

Exemplo:
Digite o primeiro número: 12
Escolha uma das operações (+) (-) (x) (/):  x
Digite o segundo número: 12
12 x 2 = 24"


echo -e "$redf"

echo -n "Digite o primeiro número: "
read NUM1
echo -n "Escolha uma das operações (+) (-) (x) (/):  "
read OP
echo -n "Digite o segundo número: "
read NUM2

if test "$OP" = "+"
then
    echo "$NUM1 + $NUM2 = $(($NUM1+$NUM2))"
fi
if test "$OP" = "-"
then
    echo "$NUM1 - $NUM2 = $(($NUM1-$NUM2))"
fi
if test "$OP" = "x"
then
    echo "$NUM1 x $NUM2 = $(($NUM1*$NUM2))"
fi
if test "$OP" = "/"
then
    echo "$NUM1/$NUM2 = $(($NUM1/$NUM2))"
fi