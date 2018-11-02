#!/bin/bash

echo "Program Menginstall xampp secara online"

sudo rm -rf /opt/lampp/htdocs/*

sudo rm /opt/lampp/etc/extra/httpd-xampp.conf

sudo cp file/httpd-xampp.conf /opt/lampp/etc/extra/httpd-xampp.conf

sudo /opt/lampp/lampp restart
