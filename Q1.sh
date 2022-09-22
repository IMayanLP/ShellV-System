#!/bin/bash
echo "Digite o primeiro número: "
read NUM1
echo "Digite o segundo número: "
read NUM2

if [ "$NUM1" -gt "$NUM2" ]
then
    echo "O maior é: $NUM1"
else
    echo "O maior é: $NUM2"
fi

echo "Soma dos numeros: $(($NUM1+$NUM2))"