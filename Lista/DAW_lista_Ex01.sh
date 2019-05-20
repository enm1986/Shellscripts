#!/bin/bash

#Exercici 1


## Comparació numèrica
# test n1 -ge n2	## $? valdria 0 si n1 és major o igual que n2
# test n1 -gt n2	## $? valdria 0 si n1 és major (no igual) que n2
# test n1 -le n2	## $? valdria 0 si n1 és menor o igual que n2
# test n1 -lt n2	## $? valdria 0 si n1 és menor (no igual) que n2
# test n1 -ne n2	## $? valdria 0 si n1 és diferent de n2

## Comparació de cadenes de text
# test s1 = s2		## $? valdria 0 si s1 és igual que s2
# test s1 != s2    	## $? valdria 0 si s1 és diferent de s2
# test -n s1     	## $? valdria 0 si la longitud de s1 és diferent de zero
# test -z s1     	## $? valdria 0 si la longitud de s1 és zero

## Comparació de fitxers
# test -d f1		## $? valdria 0 si f1 existeix i és un directori
# test -e f1		## $? valdria 0 si f1 existeix
# test -f f1		## $? valdria 0 si f1 existeix i és un fitxer regular
# test -r f1		## $? valdria 0 si f1 existeix i es pot llegir
# test -s f1		## $? valdria 0 si f1 existeix i el seu tamany és major que zero
# test -w f1		## $? valdria 0 si f1 existeix i es pot escriure en ell
# test -x f1		## $? valdria 0 si f1 existeix i es executable
# test f1 -nt f2	## $? valdria 0 si f1 s'ha modificat fa menys temps que f2
# test f1 -ot f2	## $? valdria 0 si f1 és més antic que f2


