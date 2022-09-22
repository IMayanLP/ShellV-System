#!/bin/bash
dir="$1"
cd $dir
ls $dir | while read arquivo; do
    if 
        echo "achei"
        cat $arquivo | mv $arquivo
done