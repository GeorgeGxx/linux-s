## Linux Commands

### System

- uname -a // Muestra información del sistema
- uname -r // Muestra la versión del kernel
- uptime // Muestra el tiempo que lleva el sistema encendido
- hostname // Muestra el nombre del equipo
- hostname -i // Muestra la dirección IP del equipo
- last reboot // Muestra la fecha y hora del último reinicio
- date // Muestra la fecha y hora del sistema
- timedatectl // Muestra la fecha y hora del sistema
- cal // Muestra el calendario del mes actual
- w // Muestra los usuarios conectados al sistema
- whoami // Muestra el usuario actual
- finger username // Muestra información de un usuario

### Hardware

- dmesg // Muestra los mensajes del kernel
- cat /proc/cpuinfo // Muestra información de la CPU
- cat /proc/meminfo // Muestra información de la memoria RAM
- lshw // Muestra información del hardware
- lsblk // Muestra información de los dispositivos de bloques
- free -m // Muestra el uso de la memoria RAM
- lspci -tv // Muestra los dispositivos PCI
- lsusb -tv // Muestra los dispositivos USB
- lscpu // Muestra información de la CPU
- dmidecode // Muestra información del hardware
- hdparm -i /dev/sda // Muestra información de un disco
- badblocks -v /dev/sda1 // Muestra los bloques defectuosos de un disco

### User Management

- id // Muestra el ID de usuario y grupo
- last // Muestra los últimos usuarios conectados
- who // Muestra los usuarios conectados
- groupadd admin // Crea un grupo llamado admin
- useradd Sam // Crea un usuario llamado Sam
- useradd -c "George" -g 10 -d /home/usuario01 -m -s /bin/bash usuario01 // Crea un usuario llamado usuario01 con el directorio home /home/usuario01, el grupo 10, el shell /bin/bash y el comentario George
- passwd usuario01 // Actualiza la contraseña para el usuario01 (se le solicitará la contraseña para el usuario nuevo)
- userdel Sam // Elimina el usuario Sam
- usermod -aG admin Sam // Añade el usuario Sam al grupo admin

### File Permission

- chmod 644 /data/test.c // Da permisos al archivo test.c para leer y escribir para el owner y solo leer para el grupo y otros
- chmod 755 /dir1 // Asigna permisos de lectura, escritura y ejecución para el owner y de lectura y ejecución para el grupo y otros para el directorio dir1
- chown bob:devops filename // Cambia el owner del archivo filename a bob y devops
- chown ownername:groupname directoryname // Cambia el owner y el grupo del directorio directoryname a ownername y groupname

### Network

- ip addr show // Muestra todas las interfaces de red
- ip address add 192.168.0.1/24 dev eth0 // Asigna una dirección IP a la interfaz eth0
- ifconfig // Muestra la configuración de red
- ping host // Envía paquetes ICMP, mide el tiempo de ida y vuelta hasta el alojamiento
- whois domain // Recupera y muestra la información de registro del dominio
- dig domain // Consulta DNS, proporciona información DNS del dominio
- dig -x host // Resuelve la dirección IP del host, muestra información DNS
- host google.com // Realiza una búsqueda de IP para el nombre de dominio
- wget file_path // Descarga un archivo de la ruta especificada
- netstat // Muestra conexiones y las estadísticas de red

### Compression / Archives

- tar -cf backup.tar /home/ubuntu // Crea un archivo tar llamado backup.tar de /home/ubuntu
- tar -xf backup.tar // Extrae el archivo tar
- tar -zcvf backup.tar.gz /home/ubuntu // Crea un archivo tar comprimido llamado backup.tar.gz de /home/ubuntu
- gzip file1 // Comprime el archivo file1 y lo renombra como file1.gz y elimina el archivo original

### Install Packages

- rpm -i pkg_name.rpm // Instala un paquete RPM
- rpm -e pkg_name // Desinstala un paquete RPM
- dnf install pkg_name // Instala un paquete DNF
- pacman -S pkg_name // Instala un paquete Pacman

### Directory Traverse

- cd .. // Navega al directorio padre
- cd ~ // Cambia al directorio actual a home
- cd /mnt // Cambia al directorio mnt

### File Commands

- ls -al // Lista todos los archivos, información detallada en formato largo
- pwd // Muestra el directorio de trabajo actual
- mkdir dir1 // Crea un directorio llamado dir1
- rm file1 // Elimina el archivo file1
- rm -f file2 // Forzar la eliminación del archivo file2
- rm -r dir1 // Elimina el directorio dir1 de forma recursiva
- rm -rf dir1 // Elimina el directorio dir1 de forma recursiva y forzada
- cp file1 file2 // Copia el archivo file1 creando o sobrescribiendo el archivo file2
- cp -r dir1 dir2 // Copia dir1 en dir2 incluyendo todos los archivos y subdirectorios
- mv file1 file2 // Renombra o mueve el archivo file1 a file2
- ln -s /path/to/file_name link_name // Crea un enlace simbólico nombrado link_name apuntando al archivo /path/to/file_name
- touch file1 // Crea un archivo vacio llamado file1
- cat > file1 // Crea un archivo llamado file1 y permite escribir en él
- more file1 // Muestra el contenido del archivo file1 paginado
- head file1 // Muestra las primeras 10 líneas del archivo file1
- tail file1 // Muestra las últimas 10 líneas del archivo file1
- gpg -c file1 // Cifra el archivo file1 con cifrado simétrico usando una contraseña
- gpg file2.gpg // Desencripta el archivo file2.gpg solicitando la contraseña
- wc // Cuenta palabras, lineas y caracteres en un archivo
- xargs // Ejecuta un comando con argumentos tomados de la entrada estándar

### Process Related

- ps // Muestra los procesos activos
- ps aux | grep telnet // Muestra los procesos activos con el nombre telnet
- pmap // Muestra el mapa de memoria de un proceso
- top // Muestra los procesos activos en tiempo real
- kill 1234 // Mata el proceso con el PID 1234
- killall proc // Mata todos los procesos llamados proc
- pkill process-name // Mata todos los procesos llamados process-name
- bg // Reanuda un trabajo en segundo plano suspendido
- fg // Trae el trabajo suspendido al primer plano
- fg n // Trae el trabajo n suspendido al primer plano
- lsof // Lista de archivos abiertos y procesos
- renice 19 PID // Cambia la prioridad del proceso con el PID dado
- pgrep firefox // Muestra el PID del proceso firefox
- pstree // Muestra un árbol de procesos

### Install Source (Compilation)

- ./configure // Checa la compatibilidad del sistema y crea un Makefile para instalar el software
- make // Compila el software usando el Makefile
- make install // Instala el software compilado en el sistema

### Search

- grep pattern file // Busca el patrón en el archivo
- grep -r pattern dir1 // Busca el patrón en el directorio dir1 de forma recursiva
- locate file // Busca el archivo llamado file usando la base de datos de ubicación
- find /home -name index // Busca el archivo llamado index dentro del directorio /home recursivamente
- find /home -size +10000k // Busca archivos mayores de 10000k en el directorio /home

### Login

- ssh user@hostname // Inicia conexion ssh con el host llamado hostname para el usuario user
- ssh -p port_number user@hostname // Inicia conexion ssh con el host llamado hostname para el usuario user en el puerto port_number
- ssh-copy-id user@hostname // Copia la clave pública al host llamado hostname para el usuario user
- sftp user@hostname // Inicia una sesión SFTP con el host llamado hostname para el usuario user
- telnet host // Inicia una sesión telnet con el host llamado host

### File Transfer

- scp file.txt remoteuser@remote_host:/remote/directory // Copia el archivo file.txt al host remoto en el directorio /remote/directory para el usuario remoteuser

- scp rockyou.txt.gz ubuntu@ubuntu-Latitude-7410:/home/ubuntu/Downloads

- rsync -a /home/ubuntu /backup // Sincroniza /home/ubuntu con /backup
- rsync -a /var/www/web/ user@remote_host:/backup/web_backup/ // Sincroniza /var/www/web/ con /backup/web_backup/ en el host remoto para el usuario user

### Disk Usage

- df -h // Muestra el espacio de disco legible por humanos usado para todos los sistemas de archivos montados
- df -i // Muestra el espacio de disco inode usado para todos los sistemas de archivos montados
- fdisk -l // Muestra todos los discos y particiones
- du -sh /dir1 // Muestra el espacio de disco usado por el directorio dir1
- findmnt // Muestra todos los puntos de montaje y sus propiedades
- mount device-path mount-point // Monta un dispositivo en un punto de montaje especificado
- sshfs user@hostname:/path/to/folder /path/to/mount/point // Monta el directorio remoto en el directorio local

---

### AWK Basics

- awk -F ":" '{print $1, $6, $NF}' /etc/passwd // Imprime el primer, sexto y último campo del archivo /etc/passwd separado por dos puntos