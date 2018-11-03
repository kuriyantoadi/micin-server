#!/bin/bash

echo "Menginstall Database Server"

#Menghapus Index
sudo rm -rf /opt/lampp/htdocs/*

#Menghapus file file konfigurasi phpmyadmin
sudo mv /opt/lampp/etc/extra/httpd-xampp.conf /opt/lampp/etc/extra/httpd-xampp.conf.bc

#Melakukan copy file konfigurasi phpmyadmin
sudo cp httpd-xampp.conf /opt/lampp/etc/extra/

#Melakukan restart jaringan
sudo /opt/lampp/lampp restart
