#!/bin/bash

# Exercici 5

# NO s'han de passar paràmetres
if `test $# -gt 0`
then
	echo "Nombre de parametres incorrecte";
	echo "No s'han de passar paràmetres";
	exit 1;
fi

# guardem el mes en que ens trobem de forma numèrica
mes=`date +"%m"`;

# comprovem si el mes és major que 6
# (si és majot esteim a la segona meitat a de l'any, si no a la primera)
if test $mes -gt 6
then
	echo "Esteim a la segona meitat de l'any"; #mostra per pantalla un missatge
else
	echo "Esteim a la primera meitat de l'any"; #mostra per pantalla un missatge
fi;
exit 0;
