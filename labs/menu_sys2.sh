#!/bin/bash
while true
do
clear
   echo "====================="
   echo "     S Y S T E M     "
   echo "====================="
   echo "1) Mostrar usuario   " 
   echo "2) Mostrar hora      "
   echo "3) Mostrar calendario"
   echo "4) Apagar equipo     "
   echo "q) Salir del sistema "
   echo -e "\n"
   echo -e "Seleccione su opcion: \c"
   read answer
   case "$answer" in 
      1) who
         uptime;; 
      2) date;;
      3) cal;;
      4) /usr/sbin/shutdown -i0 -y -g0;;
      q) exit;;
   esac
 echo -e "Entrar para continuar \c " 
read inpunt
done

