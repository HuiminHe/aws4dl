#update the default packages
sudo apt-get update
sudo apt-get dist-upgrade

#install depencencies
sudo apt-get install -y gcc g++ gfortran build-essential git wget linux-image-generic libopenblas-dev python3-dev python3-pip python3-nose python3-numpy python3-scipy
sudo pip3 install --upgrade pip
#install the bleeding-edge version of Theano
pip install --upgrade https://github.com/Theano/Theano/archive/master.zip
pip install --upgrade https://github.com/Lasagne/Lasagne/archive/master.zip

echo -e "[global]\nfloatX = float32\ndev\nice = gpu\n [cuda]\nroot = /usr/local/cuda-8.0" >> ~/.theanorc

