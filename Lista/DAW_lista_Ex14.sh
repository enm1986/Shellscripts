#!/bin/bash

# Exercici 14

# S'ha de passar un únic paràmetre
if `test $# -ne 1`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <ruta directori>";
        exit 1;
fi

# Primer comprovem si existeix el directori $1
if `test -d ${1}`
then
	cd ${1}; 	# Si existeix entrem dins ell
else
	mkdir ${1} 2> /dev/null; # Si NO existeix el creem i redireccionem la sortida d'error
	if `test -d ${1}` # Comprovem si s'ha creat el directori
	then
		cd ${1}; # Si s'ha creat entrem dins ell
	else
		echo "No s'ha pogut crear el directori"; # Si NO, mostram un missatge
	fi
fi

# Finalment mostrem on ens trobem al final de l'script
echo -n "Ens trobem a: "
'pwd';

# Encara que entrem dins el directori durant l'execució de l'script,
# no cambiarem de directori dins el terminal

exit 0;
