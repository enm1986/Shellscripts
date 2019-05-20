#!/bin/bash

# Exercici 21

# S'han de passar 2 paràmetres
if `test $# -ne 2`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <directori> <paraula>";
        exit 1;
fi

if `test -d ${1}`
then

lista=`ls -l ${1} | grep ^- | tr -s " " | cut -d" " -f9`;

# Recorrem la llista
for i in $lista
do
	n=`grep -c ${2} $i`;
        echo "\"$i\" conté la paraula \"${2}\" $n vegades";
done


else
	echo "Primer paràmetre incorrecte";
	echo "El primer paràmetre ha de ser un directori";
fi

exit 0;
