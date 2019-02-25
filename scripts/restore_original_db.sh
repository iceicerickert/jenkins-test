#!/bin/bash
echo "Copy pluggable database..."
export ORACLE_HOME="/u01/app/oracle/product/11.2.0/xe"
cd /u01/app/oracle
ls -la
  /u01/app/oracle/product/11.2.0/xe/bin/sqlplus c##dba/dba@cdqc01 <<SQL
  set serveroutput on size unlimited;
SQL
