#!/bin/bash

clear
echo "##########################################"
echo "#          SELAMAT DATANG                #"
echo "#        Program Micin Server            #"
echo "##########################################"
echo ""
echo ""
echo "1. Instalasi Database Server"
echo "2. Instalasi Web Server"
echo "3. Update Program CBT"
echo ""
echo "Inputkan Pilihan anda :"
read pil

	if [ 1 = $pil ]
	then
		clear
	  source dbserver/install-dbserver.sh
	elif [ 2 = $pil ]
	then
		clear
	  source webserver/install-webserver.sh
	elif [ 3 = $pil ]
	then
	  clear
	  source program-cbt/update-cbt.sh
	else
		echo "Maaf, mohon tulis pilihan anda"
		exit 0
	fi

echo ""
echo "Anda ingin menambah Alias? (Y/N) "
read als

case $als in
	y | Y )
	sudo cat alias-1 >> $HOME/.bashrc
		;;

  n | N )
      echo "Anda tidak menginstall alias"
    ;;
	*)
		echo "Maaf, perintah yang anda masukan salah"
		exit 0
		;;
esac
