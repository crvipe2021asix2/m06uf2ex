#!/bin/bash
#Cristian Villegas
#UF2 Examen P01

clear

if [[ $EUID -ne 0 ]]; then
   echo "Aquest script s'ha d'executar com a root" 
   exit 1
fi

REPETEIX="s"

while [[ $REPETEIX -eq "s" ]]; do
clear
    echo -n "Introdueix nom d'usuari: "
    read USUARI
    echo -n "Introdueix nou password: "
    read PASSWD

    echo "$PASSWD" | passwd -stdin $USUARI
    
    echo -n "Vols continuar? Prem 's' per continuar: "
    read REPETEIX
done
exit 1

