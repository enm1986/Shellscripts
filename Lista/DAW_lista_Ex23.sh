#!/bin/bash

# Exercici 23

# S'ha de passar un únic paràmetre
if `test $# -ne 1`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <runlevel>";
        exit 1;
fi

# Comprovem que el runlevel introduït és vàlid
if `test ${1} == "s"` || `test ${1} == "S"` || `test ${1} -le 6 2> /dev/null`
then
	echo "Runlevel vàlid"  
	#`init ${1}`;		# executa el runlevel
else
	echo "Runlevel incorrecte";
fi

exit 0;
