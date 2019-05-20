#!/bin/bash

# Exercici 18

# S'han de passar 2 paràmetres
if `test $# -ne 2`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <ruta fitxer> <nom de paquet>";
        exit 1;
fi

# Comprovem si la ruta introduïda és una ruta absoluta (comença per '/') 
if `test ${1:0:1} != '/'`
then
	echo "La ruta del fitxer ha de ser absoluta";
	echo "ex: /etc/pam.conf";
	exit 1;
fi

# Comprovem si el fitxer ${1} existeix
if `! test -f ${1}`
then
	echo "El fitxer \"${1}\" no existeix";
	exit 1;
fi

# Comprovem que el paquet ${2} existeix
paquet=`dpkg --get-selections | grep ${2} | cut -f1`;
if `test $paquet != ${2}`
then
	echo "El paquet \"${2}\" no existeix";
	exit 1;
fi

# Finalment comprovem que el paquet al que perteneix el fitxer ${1} és el mateix que ${2}
paquet=`dpkg --search ${1} | cut -d":" -f1`;
if `test $paquet = ${2}`
then
	echo "El fitxer \"${1}\" va ser instal·lat pel paquet \"${2}\"";
else
	echo "El fitxer \"${1}\" NO va ser instal·lat pel paquet \"${2}\"";
fi

exit 0;
