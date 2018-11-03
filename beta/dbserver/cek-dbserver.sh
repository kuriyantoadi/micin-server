#!/bin/bash

# hapus file index
  if [ -e /opt/lampp/htdocs/index.php  ]
  then
    echo -e "Hapus file Index                                [\033[1;32m Berhasil \033[0m ]"
  else
    echo -e "Hapus file Index                                [\033[1;31m Gagal \033[0m    ]"
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
    #echo -e "Hapus file Index                                [\033[1;31m Gagal \033[0m    ]"
  	echo -e "Konfigurasi phpmyadmin                          [\033[1;32m Berhasil \033[0m ]"
    echo -e "Konfigurasi phpmyadmin                          [\033[1;31m Gagal \033[0m    ]"
  else
    echo -e "Konfigurasi phpmyadmin                          [\033[1;31m Gagal \033[0m    ]"
  fi
