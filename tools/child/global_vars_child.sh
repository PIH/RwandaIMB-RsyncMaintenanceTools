#!/bin/bash -e
#ALL VARIABLE VALUES ARE SET IN THIS FILE
DATE=`exec /bin/date`
USER=openmrs_maintenance_rwanda
USER_HOME_DIR=/home/$USER
ROOT_DIR=$USER_HOME_DIR/maintenance
# tomcat9
TOMCAT_WEBAPP_DIR=/var/lib/tomcat/webapps
TOMCAT_USER=tomcat
TOMCAT_SERVICE=tomcat
#usually /home/openmrs/.OpenMRS/modules
OPENMRS_MODULES_DIR=/usr/share/tomcat/.OpenMRS/modules
OPENMRS_RUNTIME_PROPERTIES_FILE=/usr/share/tomcat/.OpenMRS/openmrs-runtime.properties
OPENMRS_DATABASE_NAME=openmrs
OPENMRS_WEBAPP_NAME=openmrs
