#!/bin/bash

echo "Program Menginstall xampp secara online"
#wget http://download1338.mediafire.com/kec7xxpx01mg/5v42mqskuop5z9l/xampp-linux-x64-5.6.30-0-installer.run
#sudo chmod +x xampp-linux-x64-5.6.30-0-installer.run
#sudo ./xampp-linux-x64-5.6.30-0-installer.run

#sudo /opt/lampp/lampp start

sudo rm -rf /opt/lampp/htdocs/*

git clone https://github.com/kuriyantoadi/smkrg-cbt.git
sudo cp -r smkrg-cbt/* /opt/lampp/htdocs
