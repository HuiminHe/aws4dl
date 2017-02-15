#update the default packages
sudo apt-get install update
sudo apt-get install dist-upgrade

#install depencencies
screan -S "theano"
sudo apt-get install -y gcc g++ gfortran build-essential git wget linux-image-generic libopenblas-dev python3-dev python3-pip python3-nose python3-numpy python3-scip

#install the bleeding-edge version of Theano
cd ~
sudo pip install --upgrade --deps git+git://github.com/Theano/Theano.git

