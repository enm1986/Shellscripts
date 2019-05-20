#!/bin/bash

# Exercici 42

# S'han de passar 4 paràmetres
if `test $# -ne 4`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <nº segons> <nº fitxers> <Mida MAX> <Directori>";
        exit 1;
fi

while sleep ${1}
do
	n=`ls -l | grep ^..w..w..w. | wc -l`;
	if `test $n -gt ${2}`
	then
		suma=0;
		for i in `ls -l | grep ^..w..w..w. | tr -s " " ";" | cut -d";" -f5`
		do
			suma=`expr $suma + $i`;
		done

		if `test $suma -gt ${3}`
		then
			midaMAX=0;
			for j in `ls -l | grep ^..w..w..w. | tr -s " " ";"`
			do
				mida=`cut -d";" -f5 <<< $j`;
				if `test $mida -gt $midaMAX`
				then
					midaMAX=$mida;
					nom=`cut -d";" -f9 <<< $j`;
				fi
			done
			#rm $nom;
			echo "fitxer esborrat: $nom - mida: $midaMAX";
			echo "fitxer esborrat: $nom - mida: $midaMAX" >> log.txt;
		fi
	fi
done

exit 0;
