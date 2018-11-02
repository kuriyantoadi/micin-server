echo "Program Web Server"

#install git
sudo apt install git

#clone cbt dari github
git clone https://github.com/kuriyantoadi/smkrg-cbt.git

#hapus index
sudo rm -rf /opt/lampp/htdocs/*

##salin file smkrg-cbt ke htdocs
cp -rf smkrg-cbt/* /opt/lampp/htdocs/

#memindah file smkrg-cbt ke program-cbt
mv -r smkrg-cbt ../program-cbt/

#restart xampp
sudo /opt/lampp/lampp restart
