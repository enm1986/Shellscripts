#!/bin/bash

# comprova si el primer paràmetre és un fitxer
if test -f $1 
then
	# comprova si el tamany (bytes) del fitxer $1 és major que el nombre $2
	if test `wc -c < $1` -gt $2 
	then
		gzip $1 # si ho és, comprimeix el fitxer $1
	fi
fi

# Exercici 27

# $1 ha de ser un fitxer
# $2 ha de ser un nombre sencer (nombre de bytes)
# Aquest codi comprova si un fitxer és major que un cert tamany, i si ho és el comprimeix

