sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y build-essential git python-pip libfreetype6-dev libxft-dev libopenblas-dev gfortran python-matplotlib libblas-dev liblapack-dev libatlas-base-dev python-dev python-pydot linux-headers-generic linux-image-extra-virtual unzip python-numpy swig python-pandas python-sklearn unzip wget git pkg-config zip g++ zlib1g-dev libcurl3-dev gcc valgrind emacs24 virtualenv cmake --upgrade
sudo apt-get install -f
sudo apt-get clean
sudo apt-get autoremove

sudo pip3 install -U pip
wget https://raw.github.com/andreafabrizi/Dropbox-Uploader/master/dropbox_uploader.sh
chmod +x dropbox_uploader.sh
sudo mv dropbox_uploader.sh ~/.dbx.sh
sudo echo -e "\nalias dbx='bash ~/.dbx.sh'\n" >> ~/.bashrc
source ~/.bashrc
