#!/bin/bash
clear
red="\033[0;31m"
redf="\033[0m"

echo -e "$red"
echo "Exercício 2
Elaborar um script que solicite a informação de um nome de usuário e verifique se o nome informado 
é um usuário válido no sistema (desconsiderando as diferenças entre maiúsculas e minúsculas).

Exemplo 1:
Informe o nome do usuário a ser consultado: Bill 
Bill não é um usuário cadastrado

Exemplo 2: 
Informe o nome do usuário a ser consultado: Linus 
Linus é um usuário cadastrado"

echo -e "$redf"

echo -n "Informe o nome a ser consultado: "
read NOME
NOME=`echo $NOME|tr [A-Z] [a-z]`
if grep $NOME /etc/passwd > /dev/null
then
	echo "$NOME é um usuário cadastrado"
else
	echo "$NOME não é um usuário cadastrado"
fi
sleep 5s