#!/bin/bash


if [ $# -ne 1 ]; then
	echo " error no se ha pasado archivo"
	exit 1
fi


#cat /etc/passwd | grep "$1:" > /dev/null && exit=0 || exit=1

id $1 >/dev/null 2> /dev/null
if [ $? -ne 0 ]; then
	echo "usuario no existe"
	exit 2
fi

if [ "root" = "$1" ]; then
	du -sh /root
else 
	if [ -e /home/$1 ] && [ -d /home/$1 ]; then
		echo -n  " La carpeta del usuario $1 ocupa"
		du -sh /home/$1 
	else
		echo " la carpeta personal de $1 no existe"
 
	fi
fi
	 
exit 0

