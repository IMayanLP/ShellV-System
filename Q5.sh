#!/bin/bash
arquivo="$1"
if [ -s $arquivo ]
then 
    tam=$(find $arquivo -printf %s)
    echo "O tamanho do arquivo é: $tam bytes"
else
    echo "Arquivo não existe"
fi