#!/bin/bash
clear
red="\033[0;31m"
redf="\033[0m"

echo -e "$red"
echo "Exercício 6
Elaborar um script que apresente ao usuário um menu com as seguintes opções: 
1 - Exibir status da utilização das partições do sistema; (df -h) 
2 - Exibir relação de usuário logados; (who) 
3 - Exibir data/hora; (date) 
4 - Sair. 

As linhas acima serão apresentadas aos usuários até que seja escolhida a opção 4 (Sair). 
Caso seja escolhida alguma opção entre 1 e 3, serão executados os comandos correspondentes e o resultado da execução será apresentado ao usuário. 
Caso seja informado algum número que não corresponde às opções de menu disponíveis, exibir na tela a mensagem 
Opção Inválida!



Exemplo:
Informe sua opção: 3 
Qua Jun 21 23:43:06 BRT 2006 


PARA CONTINUAR PRESSIONE (ENTER)"
read

echo -e "$redf"

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
    *) echo "Opção Inválida!" ;;
    esac
done