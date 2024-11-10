#!/bin/sh
# Nombre del Programa: menugeos.sh
# Programa Proyecto Final
# con Sistema Operativo Solaris 9 o 10
# Realizado por: Gallaga Arevalo Jorge Alberto
# Fecha: Diciembre 13  de 2017
# Fecha de ultima modificacion:

      trap './menu' 2 
      while true
      do
         clear
         echo " "
         echo "    ___________________________________________________________ "

         echo "   |                                                           |"
         echo "   |                  Operaciones basicas en                   |"
         echo "   |                 Servidor `hostname`                  |"
         echo "   | Fecha: `date "+%m/%d/%y%n"`                       Hora:  `date "+%H:%M:%S"`     |"
         echo "   |___________________________________________________________|"

         echo "   |                                                           |"
         echo "   |            1: Apagado del equipo `hostname`          |"
         echo "   |            2: Reiniciar el equipo `hostname`         |"
         echo "   |            3: Fecha y Hora del Sistema                    |"
         echo "   |            4: Verificacion de File-Systems                |"
         echo "   |            5: Verificar procesos activos                  |"
         echo "   |            6: Dar de alta un Usuario                      |"
         echo "   |            7: Dar de baja un Usuario                      |"
         echo "   |            8: Revisar servicio de Ftp                     |"
         echo "   |            9: Dar de alta Ftp                             |"
         echo "   |           10: Dar de baja Ftp                             |" 
        

         echo "   |            0: A Y U D A                                   |"
         echo "   |            s: Salir                                       |" 
         echo "   |                                                           |" 
         echo "   |___________________________________________________________|"
         echo " "
         echo " ================= > Que opcion deseas Operador? \c "
         read answer
 
         case $answer in
         1)
            clear
            echo " "
            echo " "
            echo "************* Apagado del equipo `hostname`... ****************"
            echo " "
            echo " "
            echo " ============ > ¿Esta seguro de apagar el equipo (s/n) ? \c"
            read OPCION
            case $OPCION in
               s|S|yes|YES|y|ok)
               echo "------- Apagando equipo --------" # >/dev/console
                echo "Done!"
                sleep 3
                echo "Apagado del servidor `hostname` por el Operator. Fecha: `date "+%m/%d/%y%n"`  `date "+%H:%M:%S"`" >> /export/home/operador/bitacoraoff.log
                sudo /usr/sbin/shutdown -i0 -y -g0;;
                sleep 3
                ;;
            esac
         ;;

         2)
            clear
            echo " "
            echo " "
            echo "************* Reinicio del equipo `hostname`... ****************"
            echo " "
            echo " "
            echo " ============ > ¿Esta seguro de reiniciar el equipo (s/n) ? \c"
            read OPCION
            case $OPCION in
               s|S|yes|YES|y|ok)
               echo "------- Apagando equipo --------" # >/dev/console
               echo "El equipo se reiniciara en 10 segundos....."
                echo "Done!"
                echo "Reinicio del servidor `hostname` por el Operator. Fecha: `date "+%m/%d/%y%n"`  `date "+%H:%M:%S"`" >> /export/home/operador/bitacorainit6.log
                init 6 

                sleep 3
                ;;
            esac
         ;;
 
         3)
            clear
            echo " "
            echo " "
            echo " ----------> Fecha y Hora del Servidor de `hostname` <-----------"
            echo " "
            echo " "
            echo " Fecha en `hostname`: `date "+%m/%d/%y%n"`"
            echo " Hora  en `hostname`: `date "+%H:%M:%S"`"
            echo " "
            echo " ============== > Pulsa return para continuar? \c"
            read continuar
            clear
         ;;
 
         4)
            clear
            echo " "
            echo " "
            echo "  ==============================================================="
            echo "           File-Systems en *  `hostname` * "


            echo "  ==============================================================="
            echo " "
            echo " "
            df -h |more
            echo " "
            echo " ============== > Pulsa return para continuar? \c"
            read continuar
            clear
         ;;
 
         5) 
            clear
            echo " "
            echo " "
            echo "  ==============================================================="
            echo "           Procesos activos en *  `hostname` * "


            echo "  ==============================================================="
            echo " "
            echo " ===== > Se desplegaran los procesos actuales, return para continuar? \c"
            read continuar
            ps -fea |more
            echo " "
            echo " ===== > Fin de procesos, Pulsa return para continuar? \c"
            read continuar
            clear
         ;;

          6)
            clear
            echo " "
            echo " "
            echo "  ==============================================================="
            echo "           Da de alta un usuario en *  `hostname` * "


            echo "  ==============================================================="
            echo " "
            echo " ===== > Se deara de alta un usuario, return para continuar? \c"
            read continuar
            echo "Introduce nombre de Usuario"
            read usuario
            useradd $usuario -d /etc/passwd/$usuario
            echo " "
            echo " ===== > Fin de procesos, Pulsa return para continuar? \c"
            read continuar
            clear
         ;;

          7)
            clear
            echo " "
            echo " "
            echo "  ==============================================================="
            echo "           Da de baja un usuario en *  `hostname` * "


            echo "  ==============================================================="
            echo " "
            echo " ===== > Se deara de baja un usuario, return para continuar? \c"
            read continuar
            echo "Intoduce nombre de Usuario"
            read usuario
            userdel -r $usuario
            echo " "
            echo " ===== > Fin de procesos, Pulsa return para continuar? \c"
            read continuar
            clear
         ;;

          8)
            clear
            echo " "
            echo " "
            echo "  ==============================================================="
            echo "           Verifica el servicio de Ftp en *  `hostname` * "


            echo "  ==============================================================="
            echo " "
            echo " ===== > Se observara el estado de Ftp, return para continuar? \c"
            read continuar
            inetadm | grep ftp
            echo " "
            echo " ===== > Fin de procesos, Pulsa return para continuar? \c"
            read continuar
            clear
         ;;
 
          9)
            clear
            echo " "
            echo " "
            echo "  ==============================================================="
            echo "           Dar de alta el Ftp en *  `hostname` * "


            echo "  ==============================================================="
            echo " "
            echo " ===== > A continuacion se levantara el Ftp, return para continuar? \c"
            read continuar
            inetadm -e ftp
            echo " "
            echo " ===== > Fin de procesos, Pulsa return para continuar? \c"
            read continuar
            clear
         ;;

           10)
            clear
            echo " "
            echo " "
            echo "  ==============================================================="
            echo "           Dar de baja el Ftp en *  `hostname` * "


            echo "  ==============================================================="
            echo " "
            echo " ===== > A continuacion se tirara el Ftp, return para continuar? \c"
            read continuar
            inetadm -d ftp
            echo " "
            echo " ===== > Fin de procesos, Pulsa return para continuar? \c"
            read continuar
            clear
         ;;

           s)
            echo " "
            echo " "
            exit
            echo " ================= > Fue un placer ayudarte"
            sleep 5
            echo " "
            echo " "
            break
         ;;
         esac
      done
