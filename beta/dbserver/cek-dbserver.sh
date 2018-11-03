#!/bin/bash

# hapus file index
  if [ -e /opt/lampp/htdocs/index.php  ]
  then
    echo "Berhasil Hapus file Index"
  else
    echo "Gagal Hapus file Index"
  fi


# cek konfigurasi phpmyadmin
  if [ -e /opt/lampp/etc/extra/httpd-xampp.conf  ]
  then
    hasilA=1
  else
    hasilA=2
  fi

  if [ -e /opt/lampp/etc/extra/httpd-xampp.conf.bc  ]
  then
    hasilB=1
  else
    hasilB=2
  fi

jumlah=$((hasilA + hasilB))


  if [ 2 = $jumlah ]
  then
  	echo "Berhasil konfigurasi phpmyadmin "
  else
  	echo "Gagal konfigurasi phpmyadmin"
  fi
