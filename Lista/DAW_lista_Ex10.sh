#!/bin/bash

# Exercici 10

# Només s'han de passar 2 paràmetres
if `test $# -ne 2`
then
	echo "Nombre de parametres incorrecte";
	echo "S'han de passar 2 paràmetres";
	exit 1;
fi

# inicialitzem el bucle amb el primer paràmetre
i=${1};

# iterarem fins que $i sigui igual al segon paràmetre
until `test $i = ${2}`
do
	printf "$i "; # imprimeix un nombre per pantalla

	#si $i és menor que ${2} li sumarem 1, en cas contrari li restarem 1
	if `test $i -lt ${2}` 
	then
		i=`expr $i + 1`;
	else
		i=`expr $i - 1`;
	fi
done
printf "$i"; # imprimeix el darrer nombre
echo

exit 0;
