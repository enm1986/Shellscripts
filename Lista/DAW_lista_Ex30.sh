#!/bin/bash

# Exercici 30

# No s'ha de passar cap paràmetre
if `test $# -ne 0`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0";
        exit 1;
fi

# comprovem que el directori "updated" existeix, i si no existeix el crea
if `test ! -d /home/usuari/Escriptori/updated 2> /dev/null`
then
	`mkdir /home/usuari/Escriptori/updated`;
fi

files=`find . -maxdepth 1 -mtime -2 -type f`;

# recorrem el contingut del directori actual
for i in $files	 
do
 `cp $i /home/usuari/Escriptori/updated`;
done

exit 0;



