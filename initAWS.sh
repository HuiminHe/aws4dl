#add the line to ~/.bashrc

sudo apt-get update

#install app
sudo apt-get install git python-pip python-numpy python-sklearn python-dev g++ valgrind emacs24
sudo pip install tensorflow
#add Dropbox API
wget https://raw.github.com/andreafabrizi/Dropbox-Uploader/master/dropbox_uploader.sh
chmod +x dropbox_uploader.sh
$ ./dropbox_uploader.sh
