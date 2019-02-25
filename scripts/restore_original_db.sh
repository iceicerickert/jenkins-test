#!/bin/bash

# Clone cookbook
cd /root/chef/cookbooks
if [ ! -d "able_oracle" ]; then
  git clone http://code.able.nv/scm/chef/able_oracle.git
else
  cd /root/chef/cookbooks/able_oracle
  git pull
fi

# Hack to fix dependencie on able cookbook
cd /root/chef/cookbooks/able_oracle
git checkout d0fbca91d0f563e3a02c487de92a5712adcf2988

# HACK: EP-24677
cd /root/chef
git fetch
git checkout feature/EP-24677_ALL

if [ ! -d "/u01/app/oracle/product/11.2.0/xe" ]; then
  sudo chef-client -r able_oracle
fi

echo "Restore original (pluggable) database..."
export ORACLE_HOME="/u01/app/oracle/product/11.2.0/xe"
cd /u01/app/oracle
ls -la
  /u01/app/oracle/product/11.2.0/xe/bin/sqlplus c##dba/dba@cdqc01 <<SQL
  set serveroutput on size unlimited;
SQL
