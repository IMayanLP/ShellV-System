#!/bin/bash
clear
while :
do
    echo
    echo "1 - Exibir status da utilização das partições do sistema"
    echo "2 - Exibir relação de usuário logados"
    echo "3 - Exibir data/hora"
    echo "4 - Sair"
	echo -n "Informe sua opção: "
    read num
	echo
    
    case $num in
    1) df -h ;;
    2) who ;;
    3) date ;;
    4) break ;;
    *) echo "Opcao Invalida!" ;;
    esac
done