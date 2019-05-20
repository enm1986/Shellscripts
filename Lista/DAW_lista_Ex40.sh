#!/bin/bash

# Exercici 40

# S'han de passar 3 paràmetres
if `test $# -ne 3`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <nº segons> <MAX mida> <fitxer>";
        exit 1;
fi

while sleep ${1}
do
	n=`ls -l | grep -v ^d | tr -s " " | cut -d" " -f9 | grep -c ^core
`;
	if `test $n -gt 0`
	then
		fitxers=`ls -l | grep -v ^d | tr -s " " ";" | cut -d";" -f5,9 | grep ";core"`;
		for i in $fitxers
		do
			mida=`cut -d";" -f1 <<< $i`;
			if `test $mida -gt ${2}`
			then
				nom=`cut -d";" -f2 <<< $i`;
				echo $nom;
				echo "Fitxer: $nom - mida: $mida" >> ${3};
				rm $nom;
			fi
		done
	fi
done

exit 0;




