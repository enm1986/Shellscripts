#!/bin/bash

for i in `sort $1`
do
	if grep $2 $i > /dev/null
	then
		echo A
		cp $i /tmp
		exit
	fi
done
echo B

# Exercici 13

# $1: el primer paràmetre serà un fitxer que contengui direccions de fitxers
# $2: serà una cadena de caràcters

# Aquest script cercarà fitxers que contenguin la cadena de caràcters $2
# dins els fitxers llistats a $1

# Cuan en trobi un que contengui $2 mostrarà "A",
# copiarà el fitxer trobat a /tmp i finalitzarà l'script

# Si no troba cap fitxer que contengui $2, mostrarà "B" i finalitzarà l'script
