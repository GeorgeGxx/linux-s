
name=$1
filename=$name.sh

touch $filename

echo "#!/bin/bash" > $filename
echo >> $filename
echo "# Date: " $(date) >> $filename

chmod 764 $filename
vim $filename
