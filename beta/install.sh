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
echo "4. Tambah Alias Server"
echo "5. Cek isi alias"
echo ""
echo -n "Inputkan Pilihan anda : "
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
	elif [ 4 = $pil ]
	then
	  clear
	  source alias/alias.sh
	elif [ 5 = $pil ]
	then
		clear
		cat alias/alias-1
	else
		echo "Maaf, pilihan anda tidak sesuai"
		exit 1
	fi

#Melakukan pengecekan Program yang sudah berjalan
	if [ 1 = $pil ]
	then
		source dbserver/cek-dbserver.sh
		exit 0
	fi
