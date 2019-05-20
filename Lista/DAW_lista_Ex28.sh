#!/bin/bash

# Exercici 28

# S'ha de passar un únic paràmetre
if `test $# -ne 1`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <nom de usuari>";
        exit 1;
fi

# mostrem el grup primari
gid=`grep "^${1}:" /etc/passwd | cut -d":" -f4`;
echo `grep ":$gid:" /etc/group | cut -d":" -f1`;

# mostrem els grups secundaris
gid=`cut /etc/group -d":" -f3- | grep ${1} | cut -d":" -f1`;
for i in $gid
do
	echo `grep ":$i:" /etc/group | cut -d":" -f1`;
done

exit 0;




