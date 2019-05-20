#!/bin/bash

# Exercici 15

# NO s'ha de passar cap paràmetre
if `test $# -gt 0`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0";
        exit 1;
fi

# Guardem l'usuari actual en una variable
usuari=`whoami`;

# Comprovem si l'usuari actual és "root"
if `test $usuari = "root"`
then
	echo "Soc l'amo del món";  # Si és root mostra el missatge
else
	sudo "$0";	# Si no, s'executa a ell mateix com a "root"
fi

exit 0;
