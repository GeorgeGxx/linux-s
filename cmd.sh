#!/bin/bash
## * Linux Commands *

### * System *

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

### * Hardware *

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

### * User Management *

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

### * File Permission *

# Da permisos al archivo test.c para leer y escribir para el owner y solo leer para el grupo y otros
chmod 644 /data/test.c
# Asigna permisos de lectura, escritura y ejecución para el owner y de lectura y ejecución para el grupo y otros para el directorio dir1
chmod 755 /dir1
# Cambia el owner del archivo filename a bob y devops
chown bob:devops filename
# Cambia el owner y el grupo del directorio directoryname a ownername y groupname
chown ownername:groupname directoryname

### * Network *

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

### * Compression / Archives *

# Crea un archivo tar llamado backup.tar de /home/ubuntu
tar -cf backup.tar /home/ubuntu
# Extrae el archivo tar
tar -xf backup.tar
# Crea un archivo tar comprimido llamado backup.tar.gz de /home/ubuntu
tar -zcvf backup.tar.gz /home/ubuntu
# Comprime el archivo file1 y lo renombra como file1.gz y elimina el archivo original
gzip file1

### * Install Packages *

# Instala un paquete RPM
rpm -i pkg_name.rpm
# Desinstala un paquete RPM
rpm -e pkg_name
# Instala un paquete DNF
dnf install pkg_name
# Instala un paquete Pacman
pacman -S pkg_name

### * Directory Traverse *

# Navega al directorio padre
cd ..
# Cambia al directorio actual a home
cd ~
# Cambia al directorio mnt
cd /mnt

### * File Commands *

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
cat >file1
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

### * Process Related *

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

### * Install Source (Compilation) *

# Checa la compatibilidad del sistema y crea un Makefile para instalar el software
./configure
# Compila el software usando el Makefile
make
# Instala el software compilado en el sistema
make install

### * Search *

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

### * Login *

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

### * File Transfer *

# Copia el archivo file.txt al host remoto en el directorio /remote/directory para el usuario remoteuser
scp file.txt remoteuser@remote_host:/remote/directory
scp rockyou.txt.gz ubuntu@ubuntu-Latitude-7410:/home/ubuntu/Downloads
# Sincroniza /home/ubuntu con /backup
rsync -a /home/ubuntu /backup
# Sincroniza /var/www/web/ con /backup/web_backup/ en el host remoto para el usuario user
rsync -a /var/www/web/ user@remote_host:/backup/web_backup/

### * Disk Usage *

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

### * AWK Basics *

# Imprime el primer, sexto y último campo del archivo /etc/passwd separado por dos puntos
awk -F ":" '{print $1, $6, $NF}' /etc/passwd

# * Basic File Operations *

# Display file permissions, size, owner, etc
ls -lh file

# Creates an empty file
touch file

# Copy file1 to file2. File2 can be a directory
cp file1 file2

# Move a file to a directory
mv file dir

# Rename file1 to file2
mv file1 file2

# Delete a file
rm file

# List all the contents in a directory
ls -lah

# Creates a directory data
mkdir data

# Copy dir1 and its contents to dir2
cp -r dir1 dir2

# Delete a directory and its contents
rm -rf dir

# Print current working directory
pwd

# Display attributes of files and directories
stat file

# Count bytes, words, lines in a file or STDIN
wc file

# Identify (guess) the type of file
file file

# Find out whether cd binary is built-in, alias or external binary file
type cd

# * File Viewing *

# Print the contents of a text file
cat file.txt

# Prints text in reverse
tac file.txt

# View large text files one page at a time
more file.txt

# Same as more but with more features
less data.txt

# View the first 5 line of a text file
head -n 5 file.txt

# View the last 5 line of a text file
tail -n 5 file.txt

# View text files with their lines numbered
nl file

# Display text that's embedded in a binary file
strings file

# * Print Text *

# Print Hello World on the standard output
echo "Hello World"

# Print formatted text on standard output
printf "%5d\n" 42

# Print repeated text on the standard output
yes "Hello World"

# Print a sequence of numbers from 1 to 5
seq 1 5

# Clear the terminal screen or window
clear

# * File Search *

# Searches for files and directories
locate file

# Searches the location of the cd binary
which cd

# Find ls' binary docs, and source files
whereis ls

# Searches for "hello.txt" in the /data directory
find /data -name hello.txt

# * Directory Traversal *

# Navigate to the user's home directory
cd or cd ~

# Navigate to the parent directory
cd ..

# Switch to the previous working directory
cd -

# Navigate to the root directory
cd /

# Changes the current directory to /tmp
cd /tmp

# * Disk Management *

# Report file system disk space usage
df -h

# Estimate file space usage in the home dir
du -h /home

# List available partitions on a disk
fdisk -l

# Create partitions
cfdisk /dev/sda

# List block devices
lsblk

# Mount /dev/sda partition to /mnt directory
mount /dev/sda /mnt

# Unmount the mounted partition in /mnt dir
unmount /mnt

# Displays if about all mounted filesystems
findmnt

# Check a disk partition for errors
fsck /dev/sda

# * Secure Shell (SSH) *

# Remote login to 10.1.3.1
ssh traw@10.1.3.1

# Generate SSH rsa key pair
ssh-agent -t rsa

# Copy ssh public key to a remote host
ssh-copy-id user@hostname

# Non-interactive ssh password auth tool
sshpass

# * File Permissions *

# Set execute permissions to a file
chmod +x file

# Set SUID permissions to a file
chmod u+s script.sh

# Set SGID permissions to a directory
chmod g+s dir

# Set Sticky Bit permissions to a directory
chmod +t dir

# Changes file.txt group owner to devops
chgrp devops file.txt

# Set the file perms to be read/write for the owner, and read-only for group and others
chmod 644 script.sh

# Changes file owner to traw and group owner to sys
chown traw:sys file

# Sets the default perms for newly created files to 644 and for directories to 755
unmask 022

# * Ejecutar un script.sh *

echo '#!/bin/sh' >my-script.sh
echo 'echo Hello World' >>my-script.sh
cat my-script.sh
#!/bin/sh
echo Hello World
chmod 755 my-script.sh
./my-script.sh

# * History *

# Execute the previous command with sudo
sudo !!

# Replace previous cat command with tac
^cat^tac

# Display command line history
history

# Last argument of the previous command
!$

# Execute the 50th command in history
!50

# * Process Management *

# Display a snapshot of running processes
ps

# Display all processes of all users
ps aux

# Display real-time view of running processes
top

# Find the process ID of a firefox
pgrep firefox

# Find the process ID of firefox
pidof firefox

# Terminate a process with PID of 6732
kill 6732

# Kills all processes named 'proc'
killall proc

# Terminates the firefox process
pkill firefox

# Resumes suspended jobs in the background
bg

# Brings a suspended job to foreground
fg

# List active jobs in the current shell
jobs

# Changes priority of process with given PID
renice 12 PID

# Displays a tree of running processes
pstree

# * Networking *

# Sends ICMP packets to georgegxx.xyz
ping georgegxx.xyz

# Displays all network interfaces information
ip addr

# Shows network interfaces configuration
ifconfig

# Displays domain's registration information
whois georgegxx.xyz

# Display the routing table
route

# Display information about network sockets
ss

# Displays network information and statistics
netstat

# Queries DNS, provides domain's DNS info
dig georgegxx.xyz

# Download file from the specified url
wget https://georgegxx.xyz/file.txt

# Retrieves georgegxx.xyz home page
curl -I https://georgegxx.xyz

# * Compression/Archives *

# Creates a tar archive of /home dir
tar -cf backup.tar /home

# Extract files from "backup.tar" archive
tar -xf backup.tar

# Creates compressed archive of /home dir
tar -zcvf data.tar.gz /home

# Uncompress data.gz file
gunzip data.gz

# Zip the data directory
zip -r data.zip data

# Unzip the data.zip file
unzip data.zip

# Compress "data" into "data.gz", original is removed
gzip data

# * User Group Management *

# Print the group membership of a user
groups user

# Create a new group called devops
groupadd devops

# Deletes the devops group
groupdel devops

# Changes sysops group name to sys
groupmod -n sysops sys

# * User Management *

# Displays the user's UID, GID and groups
id user

# Displays who is currently logged in
whoami

# Print information about user traw
finger traw

# Creates a new user traw with a specific UID
useradd -u 1002 traw

# Deletes the user account named traw
userdel traw

# Change a user's personal information
chfn traw

# Add user traw to the sudo group
usermod -aG sudo traw

# Add user traw to the sudo group
gpasswd -a traw sudo

# Remove user traw from the sudo group
gpasswd -d traw sudo

# Change user password
passwd

# Change user traw's password
passwd traw

# Change user shell to zsh
chsh -s /bin/zsh traw

# Switch to user james
su james

# * Access Control List *

# Display ACL permissions of a file or directory
getfacl file

# Set read/execute ACL perms for the user traw
setfacl -m u:traw:r-x file

# Set read/write ACL perms for the group sysops
setfacl -m g:sysops:r-w file

# Remove user traw ACL permissions
setfacl -x u:traw file

# Remove the group devops ACL perms
setfacl -x u:devops file

# Remove all ACL perms and keep default file permissions
setfacl -b file

# * File Transfer *

# Copies file.txt to remote host's specified directory
scp file.txt user@rhost:/remote/dir

# Synchronizes content from source directory to destination directory, preserving attributes
rsync -a ~/ubuntu ~/backup

# Synchronizes local directory to remote, preserving attributes
rsync -a /var/www/web/ user@rhost:/data/backup/

# * Text Manipulation *

# Search for the word Linux in file.txt
grep "linux" file.txt

# Translate lowercase chars to uppercase
tr "a-z" "A-Z" <file.txt

# Print file.txt contents in reverse
rev <file.txt

# Sort lines of text by various criteria
sort file.txt

# Print only unique lines in file.txt
uniq file.txt

# Line-by-line comparison of two files in vim
vimdiff file1.txt file2.txt

# Comparison of two files on terminal
diff file1.txt file2.txt

# Print the first column of the file.txt
awk '{print $1}' file.txt

# Substitute all cat occurrence with bat in file
sed 's/cat/bat/g' file.txt
