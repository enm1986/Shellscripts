#!/bin/bash

# Exercici 19

# S'ha de passar un paràmetre
if `test $# -ne 1`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <ruta fitxer>";
        exit 1;
fi

# Recorrem el fitxer passat per paràmetre
for i in `cat ${1}`
do
	forigen=`cut -d"-" -f1 <<< $i`;	# guardem la ruta del fitxer origen
	fdesti=`cut -d"-" -f2 <<< $i`;	# guardem la ruta del fitxer destí

	if `test -f $forigen` # comprovem si el fitxer d'origen existeix
	then
		# si existeix el copiem al fitxer destí
		echo "\"$forigen\" copiat a \"$fdesti\"";
		cp $forigen $fdesti;
	else
		# si no existeix copiem /etc/group al fitxer destí
		echo "\"/etc/group\" copiat a \"$fdesti\"";
		cp /etc/group $fdesti;
	fi
done

exit 0;
