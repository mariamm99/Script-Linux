#!/bin/bash

if [ $# -ne 1 ]; then
	echo " no se han pasado parametros "
	echo "sintaxis : 1= info del procesador, 2=versión del kerenel, 3=versión SO"
	exit 1
fi


	case $1 in
		(1)
			echo "plataforma de Hardware"
			uname -p
		;;
		(2)
			echo "version del kernel"
			uname -r
		;;
		(3)
			echo "version del sistema operativo"
			cat /etc/issue
			lsb_release -a
			uname -o
		;;
		(4)
			echo "ph"
			uname -i 
		;;
		(*)
			echo " error. no se ha ajustado ha justado a los parametros"
			exit 2
		;;

	esac

