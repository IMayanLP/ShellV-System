#!/bin/bash
echo "Digite o número: "
read NUM
i=0
NUM=$(($NUM+1))
while [ $i -ne $NUM ]
do
    if test $(($i%2)) -eq 0
    then 
        echo -n "$i  "
    fi
    ((i=i+1))
done