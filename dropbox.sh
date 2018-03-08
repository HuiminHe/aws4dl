wget https://raw.github.com/andreafabrizi/Dropbox-Uploader/master/dropbox_uploader.sh
chmod +x dropbox_uploader.sh
sudo mv dropbox_uploader.sh ~/.dbx.sh
sudo echo -e "\nalias dbx='bash ~/.dbx.sh'\n" >> ~/.bashrc
source ~/.bashrc
