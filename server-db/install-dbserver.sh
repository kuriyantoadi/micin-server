#!/bin/bash

echo "Program Menginstall xampp secara online"

sudo rm -rf /opt/lampp/htdocs/*

sudo rm -rf /opt/lampp/etc/extra/httpd-xampp.conf

sudo cp httpd-xampp.conf /opt/lampp/etc/extra/httpd-xampp.conf

sudo /opt/lampp/lampp restart
