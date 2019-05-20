#!/bin/bash

# Exercici 22

# S'ha de passar un únic paràmetre
if `test $# -ne 1`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <directori>";
        exit 1;
fi

# Comprovem si el paràmetre passat existeix i és un directori
if `test -d ${1}` 
then
	data=`date +%Y_%m_%d`; # guarderm la data
	tar -vzcf `echo "$(basename ${1})_$data.tar.gz"` ${1}; # comprimim el directori
	# $(basename $dir) agafa el nom del darrer directori de la ruta $dir
else
	echo "Paràmetre incorrecte";
	echo "El paràmetre ha de ser un directori";
fi

exit 0;
