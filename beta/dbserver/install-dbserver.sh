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

#Melakukan restart jaringan
sudo /opt/lampp/lampp restart
