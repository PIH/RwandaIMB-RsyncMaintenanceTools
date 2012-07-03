#!/bin/bash

# NOTE:  this will add entries to the run_log, preventing an update on war file, and trusted sql files.  Modules, however, will be overwritten during the first run of the process


## find global_var.sh file, and load global vars
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
source $DIR/global_vars_child.sh

echo ' '  >> $ROOT_DIR/maintenance.log
echo $DATE ' BEGINNING MASTER CHILD SCRIPT '  >> $ROOT_DIR/maintenance.log


echo 'RUNNING install.sh' >> $DIR/run_log
chmod 600 $DIR/run_log

if [ "$(ls -A $ROOT_DIR/trusted_sql)" ]; then
      for FILE in $ROOT_DIR/trusted_sql/* ; do
         # if the file being examined is not itself an md5
         if [[ "$FILE" == *.md5 ]]; then
                echo 'skipping md5' > /dev/null
         else
                MD5=`exec $DIR/calculateMD5.sh "$FILE"`
                echo $MD5 >> $DIR/run_log
                echo $DATE 'INSTALLED' $FILE  >> $ROOT_DIR/maintenance.log
         fi
       done
fi

if [ "$(ls -A $ROOT_DIR/openmrs_war)" ]; then
      for FILE in $ROOT_DIR/openmrs_war/* ; do
         # if the file being examined is not itself an md5
         if [[ "$FILE" == *.md5 ]]; then
                echo 'skipping md5' > /dev/null
         else
                MD5=`exec $DIR/calculateMD5.sh "$FILE"`
                echo $MD5 >> $DIR/run_log
                echo $DATE 'INSTALLED' $FILE  >> $ROOT_DIR/maintenance.log
         fi
       done
fi


