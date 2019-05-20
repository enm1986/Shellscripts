#!/bin/bash

# Exercici 38

# S'han de passar 4 paràmetres
if `test $# -ne 4`
then
        echo "Nombre de parametres incorrecte";
        echo "Ex. ús: $0 <nº segons> <MaxProc> <programa> <fitxer>";
        exit 1;
fi

while sleep ${1}
do
	proc=`ps h -ef | wc -l`;
	if `test $proc -gt ${2}`
	then
		#pid=`ps -C ${3} -o pid=`;
		#`echo $pid >> ${4}`;
		#`kill -TERM $pid 2> /dev/null`;
		pid=`pidof ${3}`;
		echo $pid >> ${4};
		`kill -TERM $pid 2> /dev/null`;
		
	fi
done

exit 0;




