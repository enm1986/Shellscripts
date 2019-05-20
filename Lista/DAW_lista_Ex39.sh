#!/bin/bash

# Exercici 39

# S'han de passar 2 paràmetres
if `test $# -ne 2`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <nº segons> <MAXocupació %>";
        exit 1;
fi

while sleep ${1}
do
	disp=`df -h | grep -v ^/dev/loop* | grep -v ^tmpfs | tail -n +2 | tr -s " " ":" | tr -d "%"`;
	for i in $disp
	do 		
		ocu=`cut -d":" -f5 <<< $i`;		
		if `test $ocu -gt ${2}`
		then
			nom=`cut -d":" -f1 <<< $i`;
			ruta=`cut -d":" -f6 <<< $i`;
			echo "Dispositiu: $nom - Ocupació: $ocu%";
			echo "Punt de muntatge: $ruta";
			echo "";
		fi
	done
done

exit 0;




