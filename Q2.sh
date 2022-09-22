#!/bin/bash
echo -n "Informe o nome a ser consultado: "
read NOME
NOME=`echo $NOME|tr [A-Z] [a-z]`
if grep $NOME /etc/passwd > /dev/null
then
	echo "$NOME é um usuário cadastrado"
else
	echo "$NOME não é um usuário cadastrado"
fi
