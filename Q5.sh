#!/bin/bash
clear
red="\033[0;31m"
redf="\033[0m"

echo -e "$red"
echo "Exercício 5
Elaborar um script que receba um nome de arquivo como parâmetro e verifique se esse arquivo existe. Em caso afirmativo, imprimir o seu tamanho em bytes. 

Exemplo 1: 
Digite o nome do arquivo: /etc/fstab 
O arquivo /etc/fstab existe e tem 861 bytes

Exemplo 2: 
Digite o nome do arquivo: /etc/arqqualquer 
O arquivo /etc/arqqualquer não existe"

echo -e "$redf"

echo -n "Digite o nome do arquivo: "
read arquivo
if [ -s $arquivo ]
then 
    tam=$(find $arquivo -printf %s)
    echo "O tamanho do arquivo é: $tam bytes"
else
    echo "Arquivo não existe"
fi
sleep 5s