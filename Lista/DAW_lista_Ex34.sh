#!/bin/bash

# Exercici 34

# S'han de passar 3 paràmetres
if `test $# -ne 3`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <fitxer> <usuari> <permís (rwx)>";
        exit 1;
fi

propietari=`ls -l ${1} | tr -s " " | cut -d" " -f3`;
grup=`ls -l ${1} | tr -s " " | cut -d" " -f4`

if `test ${2} = $propietari`
then
	echo "propietari";
	i=1;
	f=3;

elif `groups ${2} | grep $grup > /dev/null`;
then
	echo "grup";
	i=4;
	f=6;
else
	echo "altres";	
	i=7;
	f=9;
fi 

perm=`ls -l ${1} | cut -d" " -f1`;

if echo ${perm:$i:$f} | grep ${3}
then
	echo "\"$2\" SI té permís \"$3\" sobre el fitxer $1";
else
	echo "\"$2\" NO té permís \"$3\" sobre el fitxer $1";
fi

exit 0;




