#!/bin/bash

sudo rm -rf /opt/lampp/htdocs/*

cd server-web/smkrg-cbt

#git clone https://github.com/kuriyantoadi/smkrg-cbt.git

git pull

sudo cp -r server-web/smkrg-cbt/* /opt/lampp/htdocs
