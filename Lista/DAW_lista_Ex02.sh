#!/bin/bash
comanda=ls
echo "$comanda"
echo `$comanda`
echo '$comanda'


#Exercici 2

## echo "$comanda"
# Mostra literalment la cadena que hi ha entre les cometes,
# però substitueix les variables ($) amb els seus valors.
# en aquest cas mostrarà "ls"

## echo `$comanda`
# Executa la cadena de caràcters que conté.
# En aquest cas mostrarà l'execució de la comanda ls, és a dir,
# la llista de fitxers d'on ens trobem 

## echo '$comanda'
# Mostra literalment la cadena que hi ha entre les cometes.
# En aquest cas mostarà "$comanda"



