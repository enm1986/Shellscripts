#!/bin/bash

# Exercici 26

# S'ha de passar un únic paràmetre
if `test $# -ne 1`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <fitxer>";
        exit 1;
fi

# comprovem si el paràmetre passat és un fitxer
if `test -f ${1}` 
then
	# recorrem el contingut del fitxer
	for i in `cat ${1}`	
	do
		# mostrem la paraula cercada "$i" i la quantitat de fitxers que la contenen
		echo "$i `find . -type f -exec grep -l $i {} \; | wc -l`";
	done
else
	echo "\"${1}\" no és un fitxer";
fi

exit 0;




