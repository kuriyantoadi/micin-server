#Pengecekan Git
if ! [ -x "$(command -v git)" ]; then
  echo -e "Git sudah terinstall                            [\033[1;32m Berhasil \033[0m ]" >&2
  exit 1
else
  echo -e "Git sudah terinstall                            [\033[1;31m Gagal \033[0m   ]"
fi

#Pengecekan folder smkrg-cbt
if [ -e smkrg-cbt/index.php  ]
then
  echo "Download smkrg-cbt Berhasil"
else
  echo "Download smkrg-cbt Gagal"
fi

#Pengecekan folder smkrg-cbt
if [ -e /opt/lampp/htdocs/ujian.php  ]
then
  echo -e "Menyalin smkrg-cbt                             [\033[1;32m Berhasil \033[0m ]"

else
  echo -e "Menyalin smkrg-cbt                             [\033[1;31m Gagal \033[0m    ]"
fi
