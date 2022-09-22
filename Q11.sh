#!/bin/bash
NUM1="$1"
OP="$2"
NUM2="$3"

if test "$OP" = "+"
then
    echo $(($NUM1+$NUM2))
fi
if test "$OP" = "-"
then
    echo $(($NUM1-$NUM2))
fi
if test "$OP" = "x"
then
    echo $(($NUM1*$NUM2))
fi
if test "$OP" = "/"
then
    echo $(($NUM1/$NUM2))
fi