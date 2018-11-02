echo "Program CBT"

#sudo apt install git

#git pull
cd ../smkrg-cbt && git pull

#copy file
sudo cp -rf smkrg-cbt /opt/lampp/htdocs

#restart xampp
sudo /opt/lampp/lampp restart
