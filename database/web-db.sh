#!/bin/bash
# -----------------------------------------------
# Akses database mySQL dengan shell script (bash)
# -----------------------------------------------

# jangan lupa edit ip dan user

sudo /opt/lampp/./bin/mysql -u root -p << MYSQL
  CREATE USER 'mawar'@'192.168.20.1' IDENTIFIED BY '123';
  GRANT SELECT, INSERT, UPDATE, DELETE, ALTER ON `cbt`.* TO 'mawar'@'192.168.20.1';
  FLUSH PRIVILEGES;
MYSQL
