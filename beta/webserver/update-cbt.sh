echo "##########################################"
echo "#        Program Micin Server            #"
echo "#         Update Program CBT             #"
echo "##########################################"

cd /opt/lampp/htdocs && sudo git pull

#restart xampp
sudo /opt/lampp/lampp restart

#Pengecekan folder smkrg-cbt
  if [  "$(cd /opt/lampp/htdocs && sudo git pull)" ]; then
    echo ""
    echo -e "Update Program CBT                             [\033[1;32m Berhasil \033[0m ]" >&2
  else
    echo -e "Update Program CBT                             [\033[1;12m Gagal    \033[0m ]" >&2
  fi
