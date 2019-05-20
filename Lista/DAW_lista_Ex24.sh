#!/bin/bash

for j in ../directori/*	 # recorreix el contingut del directori "../directori"
do
 if tail $j | grep $1 > /dev/null # comprova si a les darreres línies del fitxer apareix la paraula pasada per paràmetre
 then
 mv $j . # si conté la paraula mou el fitxer al directori on ens trobem
 fi
done

# Exercici 24

# Mou els fitxers d'un directori que contenen a les seves darreres línies
# la cadena passada per paràmetre

