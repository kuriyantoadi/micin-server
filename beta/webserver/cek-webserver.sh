read webserver

case $webserver in
	1 )
    echo -e "Tidak perlu melakukan clone                      [\033[1;32m Berhasil \033[0m ]"
		;;

  2 )
  #Pengecekan Git
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
esac
