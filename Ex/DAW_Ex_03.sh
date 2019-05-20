#!/bin/bash

# EXAMEN Exercici 03

# S'han de passar 2 paràmetres
if `test $# -ne 2`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <nº segons> <usuari>";
        exit 1;
fi

# Cream el fitxer log buit o esborrem el seu contingut
echo -n "" > usuaris.log;
	
# Comprovem si l'usuari introduït existeix	
if cat /etc/passwd | cut -d":" -f1 | grep ^$2$ > /dev/null
then
	# bucle cada $1 segons
	while sleep $1
	do
		# Comprovem si està connectat
		if who | cut -d" " -f1 | grep ^$2$ > /dev/null
		then
			# guardem al fitxer log
			echo "`date +%Y-%m-%d\ %H:%M:%S` - usuari: \"$2\" - CONNECTAT" >> usuaris.log;
		else
			# guardem al fitxer log
			echo "`date +%Y-%m-%d\ %H:%M:%S` - usuari: \"$2\" - NO CONNECTAT" >> usuaris.log;
		fi
	done

else
	echo "ERROR: L'usuari no existeix";
fi

exit 0;
