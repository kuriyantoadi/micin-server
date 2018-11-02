#!/bin/bash

echo "Menginstall Database Server"

#Menghapus Index
sudo rm -rf /opt/lampp/htdocs/*

#Menghapus file file konfigurasi phpmyadmin
sudo rm /opt/lampp/etc/extra/httpd-xampp.conf

#Melakukan copy file konfigurasi phpmyadmin
sudo cp file/httpd-xampp.conf /opt/lampp/etc/extra/httpd-xampp.conf

#Melakukan restart jaringan
sudo /opt/lampp/lampp restart
