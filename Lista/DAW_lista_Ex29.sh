#!/bin/bash

# Exercici 29

# S'ha de passar un únic paràmetre
if `test $# -ne 1`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <tamany>";
        exit 1;
fi

# comprovem si el paràmetre passat és un nombre major que 0
if `test ${1} -ge 0 2> /dev/null`
then
	# recorrem el contingut del directori actual
	for i in ./*
	do
		# comprovem que $i és un fitxer ordinari
		if `test -f $i 2> /dev/null`
		then
			# guardem el seu tamany
			tamany=`wc -c $i | cut -d" " -f1`;
			# comprovem si el seu tamany és major o igual que $1
			if `test $tamany -ge ${1}`
			then
				# mostrem el nom del fitxer
				echo $i;
			fi
		fi
	done
else
	echo "El paràmetre ha der ser un nombre sencer"
fi
exit 0;




