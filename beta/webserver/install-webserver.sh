echo "##########################################"
echo "#        Program Micin Server            #"
echo "#       Instal Database Server           #"
echo "##########################################"

#install git
sudo apt install git

if ! [ -x "$(command -v git)" ]; then
  sudo apt install git
  exit 1
fi

#clone cbt dari github
git clone https://github.com/kuriyantoadi/smkrg-cbt.git

#hapus index
sudo rm -rf /opt/lampp/htdocs/*

##salin file smkrg-cbt ke htdocs
sudo cp -rf smkrg-cbt/* /opt/lampp/htdocs/

#restart xampp
sudo /opt/lampp/lampp restart
