#!/bin/bash

# Exercici 11

# No s'han de passar paràmetres
if `test $# -gt 0`
then
	echo "Nombre de parametres incorrecte";
	echo "Ex. ús: $0";
	exit 1;
fi

echo `cat /etc/passwd | cut -d":" -f7 | sort | uniq -c | tail -1`

# Seleccionem el camp 7 de /etc/passwd que indica l'intèrpret de comandes
# ordenem i contem la quantitat de línies repetides
# finalment ens quedem amb la darrera línia que conté la que més repeticions té
exit 0;
