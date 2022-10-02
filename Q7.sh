#!/bin/bash
clear
red="\033[0;31m"
redf="\033[0m"
echo -e "$red"
echo "Todos os semestres a coordenação de Sistemas de Informação exige que o professor repasse a ela os dias em que 
serão utilizados o laboratório 06. Essas datas baseiam-se nos dias da semana em que são ministradas as aulas. Como nossa
disciplina exige uso intensivo do laboratório, o professor repassa à coordenação todas as datas do semestre letivo em 
que são ministradas as aulas de TETI, para que possamos usar o laboratório 100% do tempo disponível. Esse é um processo
trabalhoso, que envolve a busca dessas informações em um calendário e a transcrição das datas para um e-mail que é 
enviado à coordenação. Para minimizar esse problema, o professor quer que vocês desenvolvam um script que, a partir da 
informação dos dias da semana em que há aulas de TETI, produza todas as respectivas datas do ano em que serão 
ministradas nossas aulas.

Exemplo:
Digite a data inicial: 2008/02/07 (Ano/Mês/Dia)
Digite a data final: 2008/07/05 (Ano/Mês/Dia)
Digite os dias da semana: 1,3

Resultado: 11/02/2008, 13/02/2008, 18/02/2008, 20/02/2008, 25/02/2008, 27/02/2008, 03/03/2008, 05/03/2008, ..."

echo -e "$redf"

DiaEmSeg=86400

read -p "Digite a data inicial: " data1
read -p "Digite a data final: " data2
read -p "Digite os dias da semana (segunda = 1, terça = 2...): " dias

dataIni=$(date -d "$data1" +%s)
dataFim=$(date -d "$data2" +%s)

for (( i=$dataIni; i<=$dataFim; i+=$DiaEmSeg )) ; do
	data=$(date -d @$i +%w)
	if [[ $dias =~ $data ]] ; then
		echo "$(date -d @$i +%d/%m/%Y)"
	fi
done