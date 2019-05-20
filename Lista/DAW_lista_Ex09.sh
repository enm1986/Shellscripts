#!/bin/bash

# Exercici 9

# NO s'han de passar paràmetres
if `test $# -gt 0`
then
	echo "Nombre de parametres incorrecte";
	echo "No s'han de passar paràmetres";
	exit 1;
fi

echo "Vaig a intentar eliminar-me";

rm $0;  # Elimina aquest fitxer

echo "Ja m'he suicidat T.T"

exit 0;
