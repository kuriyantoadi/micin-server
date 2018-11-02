sudo /opt/lampp/./bin/mysql -u root -p << MYSQL
  CREATE DATABASE dbcbt
MYSQL

sudo /opt/lampp/./bin/mysql -u root -p dbcbt < file/dbcbt.sql
