#!/bin/bash -e
#ALL VARIABLE VALUES ARE SET IN THIS FILE

DATE=`exec /bin/date`

USER=openmrs_maintenance_rwanda

USER_HOME_DIR=/home/$USER

ROOT_DIR=$USER_HOME_DIR/maintenance

#usually /var/lib/tomcat6/webapps
TOMCAT_WEBAPP_DIR=/var/lib/tomcat6/webapps

#usually /home/openmrs/.OpenMRS/modules
OPENMRS_MODULES_DIR=/home/openmrs/.OpenMRS/modules

OPENMRS_RUNTIME_PROPERTIES_FILE=/home/openmrs/.OpenMRS/openmrs-runtime.properties

OPENMRS_DATABASE_NAME=openmrs

