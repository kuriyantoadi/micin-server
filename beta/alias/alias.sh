echo -n "Anda ingin menambah Alias? (Y/N) "
read als

case $als in
	y | Y )
	sudo cat alias-1 >> $HOME/.bashrc
		;;

  n | N )
      echo "Anda tidak menginstall alias"
			echo ""
    ;;

	*)
		echo "Maaf, perintah yang anda masukan salah"
		echo ""
		exit 0
		;;
esac
