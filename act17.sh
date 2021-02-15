#!/bin/bash

if [ $# -ne 1 ]; then
	echo " error no se ha pasado archivo"
	exit 1
fi

find $HOME -name $1* 2>/dev/null

#if [ -x $HOME ] && [ -e $1* ] ; then
if [ $? -eq 0 ]; then
	echo "$1 es un archivo y existe"
else
	echo "$1 no existe"
fi


