#!/bin/bash

# Exercici 17

# S'han de passar 2 paràmetres
if `test $# -ne 2`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <ruta fitxer> <nº de parts>";
        exit 1;
fi

# per a partir el fitxer el $2 ha de ser un nombre major que 0
if `test ${2} -gt 0 2>/dev/null`
then
	split -d -n ${2} ${1};   # si és un nombre (i major que 0) partirà el fitxer
else
	echo "El segon paràmetre ha de ser un nombre major que 0";
fi
exit 0;
