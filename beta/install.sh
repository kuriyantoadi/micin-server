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
echo -n "Inputkan Pilihan anda :"
read pil

#echo -n "Anda ingin meninstall xampp? (Y/N) "
#read xam

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
	  source webserver/update-cbt.sh
	else
		echo "Maaf, mohon tulis pilihan anda"
		exit 0
	fi

# Memasang Alias
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

#Melakukan pengecekan Program yang sudah berjalan
	if [ 1 = $pil ]
	then
		source dbserver/cek-dbserver.sh
	elif [ 2 = $pil ]
	then
		source webserver/install-webserver.sh
	elif [ 3 = $pil ]
	then
		source program-cbt/update-cbt.sh
	else
		echo "Maaf, mohon tulis pilihan anda"
		exit 0
	fi
