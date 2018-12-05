#!/bin/bash

echo "##########################################"
echo "#        Program Micin Server            #"
echo "#       Instal Database Server           #"
echo "##########################################"

#Menghapus Index
sudo rm -rf /opt/lampp/htdocs/*

#Menghapus file file konfigurasi phpmyadmin
sudo mv /opt/lampp/etc/extra/httpd-xampp.conf /opt/lampp/etc/extra/httpd-xampp.conf.bc

#Melakukan copy file konfigurasi phpmyadmin
sudo cp file/httpd-xampp.conf /opt/lampp/etc/extra/

#Melakukan pengaktifkan index phpmyadmin
if [ -e /opt/lampp/phpmyadmin/index.php.bc ]
  sudo mv /opt/lampp/phpmyadmin/index.php.bc /opt/lampp/phpmyadmin/index.php
else
  echo ""
fi

#Melakukan restart jaringan
sudo /opt/lampp/lampp restart
