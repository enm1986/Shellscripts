#!/bin/bash

# Exercici 8

# S'ha de passar únicament un paràmetre
if `test $# -ne 1`
then
	echo "Nombre de parametres incorrecte";
	echo "S'ha de passar només un paràmetre";
	exit 1;
fi

# Factorial while
echo "Factorial de $1: (bucle while)"
i=1;
factorial=1;
while `test $i -le ${1}`  #Iterem tantes vegades com indica el paràmetre passat
do
	factorial=`expr $factorial \* $i`;
	i=`expr $i + 1`;	# incrementem $i en 1
done
echo $factorial;


# Factorial until
echo "Factorial de $1: (bucle until)"
i=0;
factorial=1;
until `test $i = ${1}`  #Iterem tantes vegades com indica el paràmetre passat
do
	i=`expr $i + 1`;	# incrementem $i en 1
	factorial=`expr $factorial \* $i`; 
	
done
echo $factorial;

exit 0;
