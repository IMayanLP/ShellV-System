#!/bin/bash
dataI="$1"
dataF="$2"
dia="$3"
data1=(${dataI//"/"/ })
data2=(${dataI//"/"/ })
ultimo=(${dataF//"/"/ })
dias=(${dia//","/ })
dia1=${dias[0]}
dia2=${dias[1]}

dif=$(($dia2-$dia1))

data2[0]=$((${data1[0]}+$dif))

while : ; do
	#data 1
	if [ ${data1[0]} -gt 29 ]; then
		data1[0]=$((${data1[0]}-30))
		data1[1]=$((${data1[1]}+1))
	fi
	if [ ${data1[1]} -gt 12 ]; then
		data1[1]=$((${data1[1]}-12))
		data1[2]=$((${data1[2]}+1))
	fi
	#data 2
	if [ ${data2[0]} -gt 29 ]; then
		data2[0]=$((${data2[0]}-30))
		data2[1]=$((${data2[1]}+1))
	fi
	if [ ${data2[1]} -gt 12 ]; then
		data2[1]=$((${data2[1]}-12))
		data2[2]=$((${data2[2]}+1))
	fi
	
	if [ ${data2[0]} = ${ultimo[0]} ] && [ ${data2[1]} = ${ultimo[1]} ] && [ ${data2[2]} = ${ultimo[2]} ]; then
                break
        fi
        
        if [ ${data1[0]} = ${ultimo[0]} ] && [ ${data1[1]} = ${ultimo[1]} ] && [ ${data1[2]} = ${ultimo[2]} ]; then
                break
        fi
		
	echo "${data1[0]}/${data1[1]}/${data1[2]}"
	echo "${data2[0]}/${data2[1]}/${data2[2]}"
		
	data1[0]=$((${data1[0]}+7))
	data2[0]=$((${data2[0]}+7))
done
echo "${data1[0]}/${data1[1]}/${data1[2]}"
echo "${data2[0]}/${data2[1]}/${data2[2]}"
