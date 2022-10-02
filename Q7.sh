#!/bin/bash

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