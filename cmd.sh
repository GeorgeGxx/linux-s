#!/bin/bash
## Linux Commands

### System

# Muestra información del sistema
uname -a
# Muestra la versión del kernel
uname -r
# Muestra el tiempo que lleva el sistema encendido
uptime
# Muestra el nombre del equipo
hostname
# Muestra la dirección IP del equipo
hostname -i
# Muestra la fecha y hora del último reinicio
last reboot
# Muestra la fecha y hora del sistema
date
# Muestra la fecha y hora del sistema
timedatectl
# Muestra el calendario del mes actual
cal
# Muestra los usuarios conectados al sistema
w
# Muestra el usuario actual
whoami
# Muestra información de un usuario
finger username

### Hardware

# Muestra los mensajes del kernel
dmesg
# Muestra información de la CPU
cat /proc/cpuinfo
# Muestra información de la memoria RAM
cat /proc/meminfo
# Muestra información del hardware
lshw
# Muestra información de los dispositivos de bloques
lsblk
# Muestra el uso de la memoria RAM
free -m
# Muestra los dispositivos PCI
lspci -tv
# Muestra los dispositivos USB
lsusb -tv
# Muestra información de la CPU
lscpu
# Muestra información del hardware
dmidecode
# Muestra información de un disco
hdparm -i /dev/sda
# Muestra los bloques defectuosos de un disco
badblocks -v /dev/sda1

### User Management

# Muestra el ID de usuario y grupo
id
# Muestra los últimos usuarios conectados
last
# Muestra los usuarios conectados
who
# Crea un grupo llamado admin
groupadd admin
# Crea un usuario llamado Sam
useradd Sam
# Crea un usuario llamado usuario01 con el directorio home /home/usuario01, el grupo 10, el shell /bin/bash y el comentario George
useradd -c "George" -g 10 -d /home/usuario01 -m -s /bin/bash usuario01
# Actualiza la contraseña para el usuario01 (se le solicitará la contraseña para el usuario nuevo)
passwd usuario01
# Elimina el usuario Sam
userdel Sam
# Añade el usuario Sam al grupo admin
usermod -aG admin Sam

### File Permission

# Da permisos al archivo test.c para leer y escribir para el owner y solo leer para el grupo y otros
chmod 644 /data/test.c
# Asigna permisos de lectura, escritura y ejecución para el owner y de lectura y ejecución para el grupo y otros para el directorio dir1
chmod 755 /dir1
# Cambia el owner del archivo filename a bob y devops
chown bob:devops filename
# Cambia el owner y el grupo del directorio directoryname a ownername y groupname
chown ownername:groupname directoryname

### Network

# Muestra todas las interfaces de red
ip addr show
# Asigna una dirección IP a la interfaz eth0
ip address add 192.168.0.1/24 dev eth0
# Muestra la configuración de red
ifconfig
# Envía paquetes ICMP, mide el tiempo de ida y vuelta hasta el alojamiento
ping host
# Recupera y muestra la información de registro del dominio
whois domain
# Consulta DNS, proporciona información DNS del dominio
dig domain
# Resuelve la dirección IP del host, muestra información DNS
dig -x host
# Realiza una búsqueda de IP para el nombre de dominio
host google.com
# Descarga un archivo de la ruta especificada
wget file_path
# Muestra conexiones y las estadísticas de red
netstat

### Compression / Archives

# Crea un archivo tar llamado backup.tar de /home/ubuntu
tar -cf backup.tar /home/ubuntu
# Extrae el archivo tar
tar -xf backup.tar
# Crea un archivo tar comprimido llamado backup.tar.gz de /home/ubuntu
tar -zcvf backup.tar.gz /home/ubuntu
# Comprime el archivo file1 y lo renombra como file1.gz y elimina el archivo original
gzip file1

### Install Packages

# Instala un paquete RPM
rpm -i pkg_name.rpm
# Desinstala un paquete RPM
rpm -e pkg_name
# Instala un paquete DNF
dnf install pkg_name
# Instala un paquete Pacman
pacman -S pkg_name

### Directory Traverse

# Navega al directorio padre
cd ..
# Cambia al directorio actual a home
cd ~
# Cambia al directorio mnt
cd /mnt

### File Commands

# Lista todos los archivos, información detallada en formato largo
ls -al
# Muestra el directorio de trabajo actual
pwd
# Crea un directorio llamado dir1
mkdir dir1
# Elimina el archivo file1
rm file1
# Forzar la eliminación del archivo file2
rm -f file2
#  Elimina el directorio dir1 de forma recursiva
rm -r dir1
# Elimina el directorio dir1 de forma recursiva y forzada
rm -rf dir1
# Copia el archivo file1 creando o sobrescribiendo el archivo file2
cp file1 file2
# Copia dir1 en dir2 incluyendo todos los archivos y subdirectorios
cp -r dir1 dir2
# Renombra o mueve el archivo file1 a file2
mv file1 file2
# Crea un enlace simbólico nombrado link_name apuntando al archivo /path/to/file_name
ln -s /path/to/file_name link_name
# Crea un archivo vacio llamado file1
touch file1
# Crea un archivo llamado file1 y permite escribir en él
cat > file1
# Muestra el contenido del archivo file1 paginado
more file1
# Muestra las primeras 10 líneas del archivo file1
head file1
# Muestra las últimas 10 líneas del archivo file1
tail file1
# Cifra el archivo file1 con cifrado simétrico usando una contraseña
gpg -c file1
# Desencripta el archivo file2.gpg solicitando la contraseña
gpg file2.gpg
# Cuenta palabras, lineas y caracteres en un archivo
wc
# Ejecuta un comando con argumentos tomados de la entrada estándar
xargs

### Process Related

# Muestra los procesos activos
ps
# Muestra los procesos activos con el nombre telnet
ps aux | grep telnet
# Muestra el mapa de memoria de un proceso
pmap
# Muestra los procesos activos en tiempo real
top
# Mata el proceso con el PID 1234
kill 1234
# Mata todos los procesos llamados proc
killall proc
# Mata todos los procesos llamados process-name
pkill process-name
# Reanuda un trabajo en segundo plano suspendido
bg
# Trae el trabajo suspendido al primer plano
fg
# Trae el trabajo n suspendido al primer plano
fg n
# Lista de archivos abiertos y procesos
lsof
# Cambia la prioridad del proceso con el PID dado
renice 19 PID
# Muestra el PID del proceso firefox
pgrep firefox
# Muestra un árbol de procesos
pstree

### Install Source (Compilation)

# Checa la compatibilidad del sistema y crea un Makefile para instalar el software
./configure
# Compila el software usando el Makefile
make
# Instala el software compilado en el sistema
make install

### Search

# Busca el patrón en el archivo
grep pattern file
# Busca el patrón en el directorio dir1 de forma recursiva
grep -r pattern dir1
# Busca el archivo llamado file usando la base de datos de ubicación
locate file
# Busca el archivo llamado index dentro del directorio /home recursivamente
find /home -name index
# Busca archivos mayores de 10000k en el directorio /home
find /home -size +10000k

### Login

# Inicia conexion ssh con el host llamado hostname para el usuario user
ssh user@hostname
# Inicia conexion ssh con el host llamado hostname para el usuario user en el puerto port_number
ssh -p port_number user@hostname
# Copia la clave pública al host llamado hostname para el usuario user
ssh-copy-id user@hostname
# Inicia una sesión SFTP con el host llamado hostname para el usuario user
sftp user@hostname
# Inicia una sesión telnet con el host llamado host
telnet host

### File Transfer

# Copia el archivo file.txt al host remoto en el directorio /remote/directory para el usuario remoteuser
scp file.txt remoteuser@remote_host:/remote/directory
scp rockyou.txt.gz ubuntu@ubuntu-Latitude-7410:/home/ubuntu/Downloads
# Sincroniza /home/ubuntu con /backup
rsync -a /home/ubuntu /backup
# Sincroniza /var/www/web/ con /backup/web_backup/ en el host remoto para el usuario user
rsync -a /var/www/web/ user@remote_host:/backup/web_backup/

### Disk Usage

# Muestra el espacio de disco legible por humanos usado para todos los sistemas de archivos montados
df -h
# Muestra el espacio de disco inode usado para todos los sistemas de archivos montados
df -i
# Muestra todos los discos y particiones
fdisk -l
# Muestra el espacio de disco usado por el directorio dir1
du -sh /dir1
# Muestra todos los puntos de montaje y sus propiedades
findmnt
# Monta un dispositivo en un punto de montaje especificado
mount device-path mount-point
# Monta el directorio remoto en el directorio local
sshfs user@hostname:/path/to/folder /path/to/mount/point

---

### AWK Basics

# Imprime el primer, sexto y último campo del archivo /etc/passwd separado por dos puntos
awk -F ":" '{print $1, $6, $NF}' /etc/passwd