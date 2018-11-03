echo "##########################################"
echo "#        Program Micin Server            #"
echo "#         Instal Web Server              #"
echo "##########################################"

#install git

if ! [ -x "$(command -v git)" ]; then
  sudo apt install git
  exit 1
fi

if [ -e /opt/lampp/htdocs/ujian.php  ]
then
  webserver=1
else
  #hapus index
  sudo rm -rf /opt/lampp/htdocs/*

  #clone cbt dari github
  cd /opt/lampp/htdocs && sudo git clone https://github.com/kuriyantoadi/smkrg-cbt.git

  #Mengubah posisi smkrg-cbt
  sudo mv /opt/lampp/htdocs/smkrg-cbt/* /opt/lampp/htdocs

  if ! [ -x "$(command -v git)" ]; then
    echo -e "Git sudah terinstall                           [\033[1;31m Gagal \033[0m ]" >&2
    exit 1
  else
    echo -e "Git sudah terinstall                           [\033[1;32m Berhasil \033[0m ]"
  fi

  #Pengecekan folder smkrg-cbt
  if [ -e /opt/lampp/htdocs/ujian.php  ]
  then
    echo -e "Menyalin smkrg-cbt                             [\033[1;32m Berhasil \033[0m ]"

  else
    echo -e "Menyalin smkrg-cbt                             [\033[1;31m Gagal \033[0m    ]"
  fi


fi

#restart xampp
sudo /opt/lampp/lampp restart
