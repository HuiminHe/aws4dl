#update the default packages
sudo apt-get update
sudo apt-get dist-upgrade

#install depencencies
sudo apt-get install -y gcc g++ gfortran build-essential git wget linux-image-generic libopenblas-dev python3-dev python3-pip python3-nose python3-numpy python3-scipy
sudo pip3 install --upgrade pip
#install the bleeding-edge version of Theano
cd ~
sudo pip3 install --upgrade --no-deps git+git://github.com/Theano/Theano.git
echo -e "[global]\nfloatX = float32\ndevice = gpu\n" >> ~/.theanorc

