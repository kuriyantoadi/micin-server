sudo /opt/lampp/./bin/mysql -u root -p << MYSQL
  CREATE DATABASE dbcbt
MYSQL

sudo /opt/lampp/./bin/mysql -u root -p dbcbt < dbcbt.sql

#mysql> use db_name;
#mysql> source backup-file.sql;
