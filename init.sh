sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y build-essential git python3-pip libfreetype6-dev libxft-dev libopenblas-dev gfortran python3-matplotlib libblas-dev liblapack-dev libatlas-base-dev python3-dev python3-pydot linux-headers-generic linux-image-extra-virtual unzip python3-numpy swig python3-pandas python3-sklearn unzip wget git pkg-config zip g++ zlib1g-dev libcurl3-dev gcc valgrind emacs24 virtualenv

sudo pip3 install -U pip
sudo mv dropbox_uploader.sh ~/.dbx.sh
sudo mv .emacs ~/.emacs
sudo mv bahsrc.bak ~/.bashrc
sudo apt-get clean
sudo apt-get autoremove
sudo echo -e "\nalias dbx='bash ~/.dbx.sh'\n" >> ~/.bashrc

