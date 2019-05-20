#!/bin/bash

# Exercici 25

# S'ha de passar un únic paràmetre
if `test $# -ne 1`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <directori>";
        exit 1;
fi

# comprovem si el paràmetre passat és un directori
if `test -d ${1}` 
then
	# recorrem el contingut del directori (només agafant els fitxers amb extensió .c)
	for i in ${1}/*.c 	
	do
		# guardem en un fitxer de text el nom del fitxer i el nombre de línies no blanques
		echo "$i `grep -v ^$ $i | wc -l`" >> linies.txt; 
	done
	# ordenem el contingut del fitxer de text pel nombre de línies (camp nº2)
	`sort -r -k2 -o linies.txt linies.txt`;
else
	echo "\"${1}\" no és un directori";
fi

exit 0;




