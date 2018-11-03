#Pengecekan Git
if ! [ -x "$(command -v git)" ]; then
  echo 'Berhasil install git' >&2
  exit 1
else
  echo "Gagal install git"
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
  echo "Menyalin smkrg-cbt OK "
else
  echo "Menyalin smkrg-cbt Gagal"
fi
