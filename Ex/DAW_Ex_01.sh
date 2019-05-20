#!/bin/bash

# EXAMEN Exercici 01

# S'han de passar 0 paràmetres
if `test $# -ne 0`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0";
        exit 1;
fi

sortir=false;
# Sortirem quan l'usuari introdueixqui una ruta correcta
while ! $sortir
do	
	# Demanem la ruta al usuari
	echo -n "Introdueix una ruta absoluta: ";
	read ruta;

	# Comprovem que la ruta és absoluta (comença per /)
	if grep ^/ <<< $ruta > /dev/null;
	then
		# Comprovem si el directori existeix
		if `test -d $ruta`
		then
			# Si és correcta sortirem
			sortir=true;
		else
			echo "El directori no existeix";	
		fi
	else
		echo "La ruta no és absoluta";
	fi
done

# Mostrem el nombre de subdirectoris que conté el directori introduït
echo "Nombre de subdirectoris: `find $ruta -type d | wc -l`";

exit 0;
