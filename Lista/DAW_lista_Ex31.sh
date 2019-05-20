#!/bin/bash

# Exercici 31

# Només s'ha de passar 1 paràmetre
if `test $# -ne 1`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <nº de segons>";
        exit 1;
fi

# inicialitzem contant els dispositius muntats
cont=`df | wc -l`;

# bucle infinit que iterarà cada $1 segons
while sleep $1
do
	# contem els dispositius muntats actuals
	cont2=`df | wc -l`;

	# comprovem si hi ha dispositius nous (cont2 -gt cont) 
	if `test $cont2 -gt $cont`
	then
		# guardem el nombre de dispositius nous
		n=`expr $cont2 - $cont`;
		
		# guardem la ruta dels dispositius muntats nous
		list=`df | tail -$n | tr -s " " | cut -d" " -f6`;
		
		# basta aixó
		# ls -l `echo $list`;

		# recorrem la llista de dispositius nous
		for i in $list
		do
			# mostrem "ls" de cada dispositiu muntat
			echo "Dispositiu: $i"
			ls -l $i;

		done
	fi
	
	# actualitzem el nombre de dispositius muntats
	cont=$cont2;

done

exit 0;
