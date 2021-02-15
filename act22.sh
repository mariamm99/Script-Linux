#!/bin/bash

if [ $# -ne 2 ]; then 
	echo "Error . No se han pasado los parámetros"
	echo " Ejectuar $0 <directorio> <extension>"
	exit 3
fi

if [ ! -e $1 ]; then 
	echo "error. EL directorio $1 no existe"
	exit 1
fi

if [ ! -d $1 ]; then
	echo "Error. $1 no es un directorio"
	exit 2
fi

echo "Listamos los archivos con extensión $2 del directorio $1"
echo "1º forma con ls"
ls -lR $1/*$2

echo " con find se realiza la busqueda:"
find $1 -name "*.$2" -type f

exit 0


