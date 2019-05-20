#!/bin/bash

# Exercici 12

# S'ha de passar almenys un paràmetre
if `test $# -lt 1`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <paraula>...";
        exit 1;
fi

# Els paràmetres han de ser en minúscula
for i in $*
do
	# guardem el nombre de caràcters en majúscula del paràmetre
	majus=`echo $i | tr -dc '[:upper:]' | wc -c`;

	# Si és major que 0 sortirem
	if `test $majus -gt 0`
	then
		echo "Paràmetre incorrecte";
		echo "\"$i\" ha de ser en minúscula";
		exit 1;
	fi
done

# Recorrem la llista de paràmetres
for i in $*
do
	echo $i >> ${i:0:1};	# afegim cada paràmetre dins un fitxer
				# amb nom igual al primer caràcter del paràmetre
done

exit 0;
