#!/bin/bash

# Descripción:	act34 dado como parametro una extensión buscar archivo
#		mostrar nombre,tamaño,ubucacion, permisos, usuario propietario
#		grupo y fecha.


if [ $# -ne 1 ]; then
	echo "error se esperaba un parametro"
	echo "sintaxis $0 <extenxion de archivo>"
	exit 1
fi

LISTA=$(find $HOME -type f -name "*$1" -print 2>/dev/null)
IFS=$'\n'

for  ARCHIVO in  ${LISTA} ; do

	echo "Archivo: $ARCHIVO"

	echo "Tamaño: `stat -c %s $ARCHIVO` bytes "
	echo "Nombre: ${ARCHIVO##/*/}"
	echo "Ubicación: ${ARCHIVO%/*}  "

	echo  "Permisos: `stat -c %A  $ARCHIVO`"
	echo  "Tipo archivo: `stat -c %F $ARCHIVO`"

	echo  "propietario: `stat -c %U $ARCHIVO`"
	echo "grupo propietario: `stat -c %G $ARCHIVO`"
	echo "fecha de modificación: `stat -c %y $ARCHIVO`"

echo "--------------------------------------------------------------"

done


exit 0

