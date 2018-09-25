#!/bin/bash
#!/usr/bin/env bash

# -----------------------------------------------
# Akses database mySQL dengan shell script (bash)
# -----------------------------------------------

# jangan lupa edit ip dan user


echo -n "Inputkan User Database? ";
read user

echo -n "Inputkan IP Address? ";
read ip

echo "Inputkan Password? ";
read -s pass

echo -n "Inputkan Nama Database? ";
read db

sudo /opt/lampp/./bin/mysql -u root -p << MYSQL
  CREATE USER '$user'@'$ip' IDENTIFIED BY '$pass';
  GRANT SELECT, INSERT, UPDATE, DELETE, ALTER ON `$db`.* TO '$user'@'$ip';
  FLUSH PRIVILEGES;
MYSQL
