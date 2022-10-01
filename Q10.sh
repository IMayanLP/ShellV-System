#!/bin/bash
clear
red="\033[0;31m"
CORES=('\033[0;31m' '\033[0;32m' '\033[0;33m' '\033[0;34m' '\033[0;35m' '\033[0;36m')
COR_PADRAO='\033[0m'
COR_ATUAL=0

echo -e "$red"
echo "Exercício 10
Desenvolva um script que receba palavras interativamente e, a cada palavra recebida, exiba, como resultado, essas palavras ordenadas. 
Ao ser informada a palavra (sair), o script é finalizado"
echo -e "$COR_PADRAO"

PALAVRA=""
while :
do
    echo -n "Insira a nova palavra: "
    read NOVA_PALAVRA
    if [ $NOVA_PALAVRA = "sair" ]
        then 
            break
        else
            clear
            PALAVRA+="$NOVA_PALAVRA,"
            arr=(${PALAVRA//","/ })
            nomes=($(printf '%s\n' ${arr[@]} | sort))
            echo -e "${CORES[$COR_ATUAL]}"
            echo -e "Atual lista de palavras: "
            echo ${nomes[@]}|sed 's/ /\n/g'
            echo -e $COR_PADRAO
            echo
    fi
    if [ $COR_ATUAL -eq 5 ] ; then
		COR_ATUAL=0
	else
		COR_ATUAL=$((COR_ATUAL+1))
	fi
done