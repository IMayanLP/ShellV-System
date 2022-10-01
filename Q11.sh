#!/bin/bash
clear
red="\033[0;31m"
redf="\033[0m"
azu="\033[0;34m"
ver="\033[0;32m"
ama="\033[0;33m"

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

read -p "Digite o primeiro número: " NUM1
while [[ "$NUM1" =~ [^0-9] || -z "$NUM1" ]]
do        
   echo -e "$azu -Tente novamente com um NÚMERO- $redf" 
   echo    
   read -p "Digite o primeiro número: " NUM1
done

read -p "Escolha uma das operações (+) (-) (x) (/):  " OP
while [[ ( "$OP" =~ [^+] && "$OP" =~ [^-] && "$OP" =~ [^x] && "$OP" =~ [^/] ) || -z "$OP" ]]
do        
   echo -e "$ama -Preste atenção nas operações- $redf"    
   echo 
   read -p "Escolha uma das operações (+) (-) (x) (/):  " OP
done


read -p "Digite o segundo número: " NUM2
while [[ "$NUM2" =~ [^0-9] || -z "$NUM2" ]]
do        
   echo -e "$ver -Tente novamente com um NÚMERO- $redf"    
   echo 
   read -p "Digite o segundo número: " NUM2
done


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
