#!/bin/bash
clear
red="\033[0;31m"
redf="\033[0m"

echo -e "$red"
echo "Exercício 12
Desenvolva um script que apresente na tela os usuários cadastrados no sistema e os seus respectivos diretórios home.

Exemplo:
klayson => /home/klayson 
alunolab => /home/alunolab 
root => /root"

echo -e "$redf"

echo 
cat /etc/passwd | sed 's/:/ /g' | awk '{print $1" =>",$6}'