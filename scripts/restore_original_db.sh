#!/bin/bash
echo "Copy pluggable database..."
export ORACLE_HOME="/var/jenkins_home/tools/oracle"
cd /var/jenkins_home/tools/oracle
ls -la
/var/jenkins_home/tools/oracle/instantclient_12_2/sqlplus c##dba/dba@cdqc01
  set serveroutput on size unlimited;
SQL
