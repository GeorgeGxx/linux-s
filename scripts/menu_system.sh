#!/bin/bash
while true; do
	clear
	echo "====================="
	echo "     S Y S T E M     "
	echo "====================="
	echo "1) Show user         "
	echo "2) Show time         "
	echo "3) Show calendar     "
	echo "4) Reboot OS         "
	echo "5) Shutdown OS       "
	echo "6) Exit              "
	echo -e "\n"
	echo -e "Choose an option: \c"
	read answer
	case "$answer" in
		1) who ;;
		2) date ;;
		3) cal ;;
		4) reboot ;;
		5) shutdown ;;
		6) exit ;;
	esac
	echo -e "Enter to continue: \c "
	read inpunt
done
