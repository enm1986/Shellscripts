#!/bin/bash
touch tmp		#crea un fitxer tmp
for i in *.txt		#recorreix tots els fitxers .txt del directori on ens trobem
do
 grep "examen" $i >> tmp	#afegeix les línies que contenen "examen" de cada fitxer
done				#al fitxer tmp
wc -l < tmp		#conta les línes del fitxer tmp
rm tmp			#elimina el fitxer tmp


#Exercici 3

# Conta les línies que contenen la cadena "examen" de tots els fitxers .txt
# que hi ha en el directori on ens trobem

# En una única comanda: grep "examen" *.txt | wc -l

