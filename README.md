# Rwanda IMB:  Rsync Maintenance Tools

Written by Dave Thomas (Partners In Health)

To configure on parent server, reate openmrs_maintenance_user, then:

* cd /home/openmrs_maintenance_rwanda
* git https://github.com/PIH/RwandaIMB-RsyncMaintenanceTools.git maintenance
* cd maintenance
* mkdir openmrs_modules
* mkdir openmrs_war
* mkdir other_files
* mkdir trusted_sql

TODO: have Ansible actually create the openmrs_maintenance_rwanda user and the openmrs_modules, openmrs_war, other_files, and trusted_sql directories on the the parent (right now it sets up the children, but you need to configure the parent manually)

RUNNING THE PLAYBOOK.

A few steps to do before running the playbook
* edit hosts files and add in the child servers IPs.
* copy .ssh/id_rsa.pub content from parent server to roles/files/authorized_keys
* edit roles/defaults/main.yml and insert the correct password (hashed password)

How to run the playbook.
* cd playbook
* ./install.sh
