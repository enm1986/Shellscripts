#!/bin/bash

# Exercici 32

# S'han de passar 2 paràmetres
if `test $# -ne 2`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <nº de segons> <càrrega del sistema>";
        exit 1;
fi

# bucle infinit
while true
do
	# obtenim la part entera de la càrrega mitjana del sistema en el darrer minut
	up1=`uptime | tr -s " " | cut -d" " -f9 | cut -d"," -f1`;
	# comprovem si la càrrega mitjana és major que $2
	if `test $up1 -gt ${2}`
	then
		echo "La càrrega mitjana en el darrer minut ($up1) a superat ${2}."
	fi
	
# tornarà a comprovar-ho quan passin $1 segons
`sleep $1`;
done

exit 0;
