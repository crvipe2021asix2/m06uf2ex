#!/bin/bash
#Cristian Villegas
#UF2 Examen P10
#!/bin/bash

clear

if [[ $EUID -ne 0 ]]; then
   echo "Aquest script s'ha d'executar com a root" 
   exit 1
fi

echo -n "Introdueix nom grup: "
read groupn

cat /etc/group | grep "$groupn" | grep -o -E '[0-9]+'

if [[ $? -ne 0 ]]; then
    echo "¡Error! El grup ${groupn} no existeix"
    exit 5
fi
exit 10
