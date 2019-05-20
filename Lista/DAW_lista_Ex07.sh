#!/bin/bash

# Exercici 7

# S'ha de passar únicament un paràmetre
if `test $# -ne 1`
then
	echo "Nombre de parametres incorrecte";
	echo "S'ha de passar només un paràmetre";
	exit 1;
fi

# Progressió arimètica
echo "Progressió aritmètica de ${1} termes:"
i=1;
while `test $i -le ${1}`  #Iterem tantes vegades com indica el paràmetre passat
do
	printf "$i ";
	i=`expr $i + 1`;	# incrementem $i en 1
done
echo # salt de línia


# Progressió geomètrica
echo "Progressió geomètrica de ${1} termes:"
i=1;
prog=1;
while `test $i -le ${1}`  #Iterem tantes vegades com indica el paràmetre passat
do
	printf "$prog ";
	prog=`expr $prog \* 2`; # multiplica $prog per 2
	i=`expr $i + 1`;	# incrementem $i en 1
done
echo # salt de línia

exit 0;
