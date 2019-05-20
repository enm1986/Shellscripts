#!/bin/bash

# Exercici 6

# S'ha de passar almenys un paràmetre
if `test $# -lt 1`
then
	echo "Nombre de parametres incorrecte";
	echo "Us: $0 nom...";
	exit 1;
fi

# Iterem sobre els paràmetres passats

for i in $*
do
	echo "Hola $i"; # mostrem un paràmetre en un missatge
done
exit 0;

