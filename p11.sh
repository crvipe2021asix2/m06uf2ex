#!/bin/bash
#Cristian Villegas
#UF2 Examen P11

if [[ $EUID -ne 0 ]]; then
   echo "Aquest script s'ha d'executar com a root" 
   exit 1
fi

clear
echo -n "Escriu una adreça URL: "
read URL
   
    nslookup $URL 2>/dev/null

if [[ $? -ne 0 ]]; then
   echo "¡Adreça URL incorrecta!"
    exit 1
fi
