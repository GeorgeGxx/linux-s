#!/bin/bash
clear
cd /home
echo "Teclee su nombre"
read nombre
echo "Tu nombre es: " $nombre
echo "Teclee su edad"
read edad
echo "Tu edad es: " $edad
echo "Teclee su sexo"
read sexo
echo "Tu nombre es: " $sexo
echo "Teclee su materia"
read materia
echo "Tu nombre es: " $materia
echo "Teclee su grupo"
read grupo
echo "Tu nombre es: " $grupo
echo "Teclee su turno"
read turno
echo "Tu nombre es: " $turno
> /home/susesoporte/datos.txt
chmod 751 /home/susesoporte/pidedatos.sh
echo "Cambiando permisos del archivo.. "
ls -l
