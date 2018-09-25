#!/bin/bash

sudo rm -rf /opt/lampp/htdocs/*

git clone https://github.com/kuriyantoadi/smkrg-cbt.git
sudo cp -r smkrg-cbt/* /opt/lampp/htdocs
