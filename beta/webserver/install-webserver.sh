echo "##########################################"
echo "#        Program Micin Server            #"
echo "#       Instal Database Server           #"
echo "##########################################"

#install git

if ! [ -x "$(command -v git)" ]; then
  sudo apt install git
  exit 1
fi

#hapus index
sudo rm -rf /opt/lampp/htdocs/*

#clone cbt dari github
cd /opt/lampp/htdocs && sudo git clone https://github.com/kuriyantoadi/smkrg-cbt.git

#Mengubah posisi smkrg-cbt
sudo mv /opt/lampp/htdocs/smkrg-cbt/* /opt/lampp/htdocs

#restart xampp
sudo /opt/lampp/lampp restart
