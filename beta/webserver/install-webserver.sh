echo "##########################################"
echo "#        Program Micin Server            #"
echo "#         Instal Web Server              #"
echo "##########################################"


echo ""
echo ""
#install git
if ! [ -x "$(command -v git)" ]; then
  sudo apt install git
  exit 1
fi

if [ -e /opt/lampp/htdocs/ujian.php  ]
then
  echo "Tidak perlu melakukan clone                      [\033[1;32m Berhasil \033[0m ]"
else
  #hapus index
  sudo rm -rf /opt/lampp/htdocs/*

  #clone cbt dari github
  cd /opt/lampp/htdocs && sudo git clone https://github.com/kuriyantoadi/smkrg-cbt.git

  #Mengubah posisi smkrg-cbt
  sudo cp -r /opt/lampp/htdocs/smkrg-cbt/.git /opt/lampp/htdocs
  sudo cp -r /opt/lampp/htdocs/smkrg-cbt/* /opt/lampp/htdocs

  #Menganti Index phpmyadmin
  if [ -e /opt/lampp/phpmyadmin/index.php.bc ]
    echo ""
  else
    sudo mv /opt/lampp/phpmyadmin/index.php /opt/lampp/phpmyadmin/index.php.bc
    sudo cp ../file/index.php /opt/lampp/phpmyadmin/
  fi

  #restart xampp
  sudo /opt/lampp/lampp restart
  echo ""

  #Pengecekan git sudah terinstall atau belum
  if ! [ -x "$(command -v git)" ]; then
    echo -e "Git sudah terinstall                           [\033[1;31m Gagal \033[0m ]" >&2
    exit 1
  else
    echo -e "Git sudah terinstall                           [\033[1;32m Berhasil \033[0m ]"
  fi

  #Pengecekan folder smkrg-cbt
  if [ -e /opt/lampp/htdocs/.git  ]
  then
    sudo rm -rf /opt/lampp/htdocs/smkrg-cbt
    echo -e "Menyalin smkrg-cbt                             [\033[1;32m Berhasil \033[0m ]"

  else
    echo -e "Menyalin smkrg-cbt                             [\033[1;31m Gagal \033[0m    ]"
  fi

  #Pengecekan folder smkrg-cbt
  if [ -e /opt/lampp/phpmyadmin/index.php.bc  ]
  then
    echo -e "Menghapus index phpmyadmin                     [\033[1;32m Berhasil \033[0m ]"

  else
    echo -e "Menghapus index phpmyadmin                     [\033[1;31m Gagal \033[0m    ]"
  fi

fi
