sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y build-essential git python3-pip libfreetype6-dev libxft-dev libopenblas-dev gfortran python3-matplotlib libblas-dev liblapack-dev libatlas-base-dev python3-dev python3-pydot linux-headers-generic linux-image-extra-virtual unzip python3-numpy swig python3-pandas python3-sklearn unzip wget git pkg-config zip g++ zlib1g-dev libcurl3-dev gcc valgrind emacs24 virtualenv cmake
sudo apt-get clean
sudo apt-get autoremove

sudo pip3 install -U pip
wget https://raw.github.com/andreafabrizi/Dropbox-Uploader/master/dropbox_uploader.sh
chmod +x dropbox_uploader.sh
sudo mv dropbox_uploader.sh ~/.dbx.sh
sudo echo -e "\nalias dbx='bash ~/.dbx.sh'\n" >> ~/.bashrc

