#!/bin/bash

# Exercici 4

# S'ha de passar un paràmetre
if `test $# -ne 1`
then
	echo "Nombre de parametres incorrecte";
	echo "Us: $0 Nombre";
	exit 1;
fi

# guardem dins la variable logins els N darrers usuaris de /etc/passwd ordenats
logins=`cat /etc/passwd | cut -d":" -f1 | sort | tail -${1}`;

# mostrem per pantalla els N darrers logins
echo $logins; 

exit 0;
