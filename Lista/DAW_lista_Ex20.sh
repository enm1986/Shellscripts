#!/bin/bash
j=0
for i in $*
do
	if grep ttt $i > /dev/null 2> /dev/null # línia 5
	then
		j=`expr $j + 1`
	fi
done
echo $# $j

# Exercici 20

# $* indica la llista de paràmetres.
# En aquest cas, per com està implementada la comanda "grep" (grep "string" <fitxer>)
# els paràmetres hauran de ser rutes de fitxers

# $j és una variable contador que incrementa cuan es troba la cadena "ttt" a un fitxer

########################################################################
# Aquest script conta quants dels fitxers passats com a paràmetres
# contenen la cadena "ttt"

# Si llevéssim les redireccions de la línia 5 ens mostraria pel terminal les línies
# que continguessin la cadena "ttt" i els missatges d'error que genera "grep"
# si el fitxer passat no existeix
