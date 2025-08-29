#!/bin/bash
while true; do
	clear
	echo "====================="
	echo "     S Y S T E M     "
	echo "====================="
	echo "1) Mostrar usuario   "
	echo "2) Mostrar hora      "
	echo "3) Mostrar calendario"
	echo "4) Reiniciar equipo"
	echo "5) Apagar equipo     "
	echo "6) Salir del sistema "
	echo -e "\n"
	echo -e "Seleccione su opcion: \c"
	read answer
	case "$answer" in
		1) who ;;
		2) date ;;
		3) cal ;;
		4) reboot ;;
		5) shutdown ;;
		6) exit ;;
	esac
	echo -e "Entrar para continuar: \c "
	read inpunt
done
