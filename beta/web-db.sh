#!/bin/bash
# -----------------------------------------------
# Akses database mySQL dengan shell script (bash)
# -----------------------------------------------

# jangan lupa edit ip dan user

sudo /opt/lampp/./bin/mysql -u root -p << MYSQL
  USE dabase ;
  CREATE USER 'mawar'@'192.168.20.2' IDENTIFIED BY '123';
  GRANT SELECT, INSERT, UPDATE, DELETE, ALTER ON `dbcbt`.* TO 'mawar'@'192.168.20.2';
  FLUSH PRIVILEGES;
MYSQL
