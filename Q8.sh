#!/bin/bash
clear
red="\033[0;31m"
redf="\033[0m"
azu="\033[0;34m"

echo -e "$red"
echo "Exercício 8
Considere um determinado diretório que possui vários arquivos textos. 
Esses arquivos possuem nomes variados, não obedecendo a qualquer critério. 
Escreva um script que renomeie cada arquivo desse diretório, dando ao arquivo o 
nome correspondente à primeira palavra encontrada no conteúdo do próprio arquivo"
echo -e "$redf"


echo -e "$azu    
    
                        AVISO:
São renomeados somente arquivos que estão no diretório que a Q8.sh 
                Pressione ENTER para continuar 
$redf"
read

i=0
for arq in $(ls)
do
    if [ ${arq: -4} == ".txt" ]
    then
        p=$(head -n1 $arq | cut -d ' ' -f 1)
        mv $arq "$p.txt"
        echo "O arquivo $arq foi renomeado para $p"
        i=$(($i+1))
    fi
done

if [ $i -eq 0 ]
then
    echo "Não haviam arquivos .txt para serem renomeados"
fi




