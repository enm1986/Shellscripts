#!/bin/bash

# Exercici 16

# NO s'ha de passar cap paràmetre
if `test $# -gt 0`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0";
        exit 1;
fi

echo "El meu PID és: $$"; # Consultem el PID d'aquest script en execució
kill $$;	# Matem el procés d'aquest script en execució
echo "Estic mort";  # Aquest missagte no s'ha de veure

exit 0;
