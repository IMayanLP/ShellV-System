#!/bin/bash
echo -n "Digite o arquivo: "
read ARQUIVO
if test -d "$ARQUIVO"
then
    ls -l $ARQUIVO | while read linha
    do
        if [ ${linha:0:1} = "d" ]
        then
            echo $linha | awk '{print $9 " (dir)"}'
        else
            echo $linha | awk '{print $9}'
        fi
    done
else
    echo "O arquivo passado não é diretório ou não existe"
fi