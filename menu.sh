#!/bin/bash
MENU=1
clear
while :
do
	echo "Digite o número da questão que você quer executar: "
	read MENU
	if [ $MENU -eq 0 ] ; then
		clear
		break
	fi
	if [ $MENU -ge 1 ] && [ $MENU -le 12 ] ; then
		bash "Q$MENU.sh"
		echo "Fim! Pressione ENTER para continuar... :D"
		read && clear
		else
			echo "Questão inválida! pressione ENTER para tente novamente... :("
			read && clear
			continue
	fi
done