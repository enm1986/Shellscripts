#!/bin/bash

# Exercici 41

# S'han de passar 2 paràmetres
if `test $# -ne 2`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <Directori> <Mida MAX>";
        exit 1;
fi

# $1 ha de ser un directori
if `test ! -d ${1}`
then
	echo "ERROR: El primer paràmetre ha de ser un directori"
	exit 1;
fi

fitxers=`ls -l ${1} | grep ^- | tr -s " " | cut -d" " -f9`;
comprimir="";

for i in $fitxers
do
	mida=`ls -l $1/$i | grep -v ^d | tr -s " " | cut -d" " -f5`;
	if `test $mida -gt ${2}`
	then
		echo -n "$i: Esborrar(E) / Mantenir(M) / Comprimir(C)? ";
		read opcio;

		case $opcio in
		"E")
			rm $1/$i;
			echo "$i: Esborrat" >> $1/exercici.log ;;
		"C")
			comprimir="$comprimir $1/$i";
			echo "$i: Comprimit" >> $1/exercici.log ;;
		*)
			echo "$i: Mantingut" >> $1/exercici.log ;;
		esac
	fi
done

`tar -vzcf $1/exercici.tar.gz $comprimir`;
`rm $comprimir`;

exit 0;




