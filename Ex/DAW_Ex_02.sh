#!/bin/bash

# EXAMEN Exercici 02

# S'han de passar 1 paràmetres
if `test $# -ne 1`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <nº segons>";
        exit 1;
fi

# bucle cada $1 segons
while sleep $1;
do	
	# Demanem la lletra al usuari
	echo -n "Introdueix la primera lletra: ";
	read lletra;
	
	# Comprovem que només s'ha introduït UNA lletra
	n_char=`wc -m <<< $lletra`;
	if `test $n_char -eq 2`
	then
		# Comprovem si la lletra introduida és una q/Q	
		if `test $lletra = "Q" -o $lletra = "q"` 
		then
			# si ho és sortirem
			exit 0;
		else
			# guardem la mida i nom dels fitxers ordinaris de l'usuari que ha executat l'escript que començen per "$lletra"
			usuari=`whoami`;
			fitxers=`ls -l | grep ^- | tr -s " " ";" | cut -d";" -f3- | grep ^"$usuari;" | cut -d";" -f3,7 | grep ";$lletra"`;
	
			# feim la suma de les seves mides
			suma=0;	
			for i in $fitxers
			do
				mida=`cut -d";" -f1 <<< $i`;
				suma=`expr $suma + $mida`;
			done

			# mostrem el resultat
			echo "suma Total: $suma Bytes";
		fi
	else
		echo "ERROR: només es pot introduïr una lletra";
	fi

done

exit 0;
