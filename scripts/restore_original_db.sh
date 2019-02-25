#!/bin/bash
echo "Copy pluggable database..."
export ORACLE_HOME="/u01/app/oracle/product/11.2.0/xe"
/u01/app/oracle/product/11.2.0/xe/bin/sqlplus c##dba/dba@cdach01 <<SQL
  set serveroutput on size unlimited;
  exec sys.pdb_maintenance.show_pdbs;
  exec sys.pdb_maintenance.clone_pdb ('PD_ACH01_ACH_0705_01','PD_ACH01_ACH_0705_03','Y')
SQL
