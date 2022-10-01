#!/bin/bash
MENU=1
clear

CORES=('\033[0;31m' '\033[0;32m' '\033[0;33m' '\033[0;34m' '\033[0;35m' '\033[0;36m')
COR_PADRAO='\033[0m'
COR_ATUAL=0

while :
do
	echo -e "${CORES[$COR_ATUAL]}"
	echo "
	███╗   ███╗███████╗███╗   ██╗██╗   ██╗
	████╗ ████║██╔════╝████╗  ██║██║   ██║
	██╔████╔██║█████╗  ██╔██╗ ██║██║   ██║
	██║╚██╔╝██║██╔══╝  ██║╚██╗██║██║   ██║
	██║ ╚═╝ ██║███████╗██║ ╚████║╚██████╔╝
	╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝ "
	echo "Digite o número da questão que você quer executar (1 a 13): "
	echo "Ou digite 0 (zero) para SAIR "
	read MENU
	if [ $MENU -eq 0 ] ; then
		clear
		break
	fi
	if [ $MENU -ge 1 ] && [ $MENU -le 13 ] ; then
		echo -e "$COR_PADRAO"
		bash "Q$MENU.sh"
		echo -e "${CORES[$COR_ATUAL]}"
		echo " "
		echo "Fim! Pressione ENTER para continuar... :D"
		read && clear
		else
			echo "Questão inválida! pressione ENTER para tente novamente... :("
			read && clear
			continue
	fi
	if [ $COR_ATUAL -eq 5 ] ; then
		COR_ATUAL=0
	else
		COR_ATUAL=$((COR_ATUAL+1))
	fi
done