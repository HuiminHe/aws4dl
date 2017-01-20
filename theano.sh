#update the default packages
sudo apt-get install update
sudo apt-get install dist-upgrade

#install depencencies
screan -S "theano"
sudo apt-get install -y gcc g++ gfortran build-essential git wget linux-image-generic libopenblas-dev python-dev python-pip python-nose python-numpy python-scip

#install the bleeding-edge version of Theano
sudo pip install --upgrade --no-deps git+git://github.com/Theano/Theano.git

#grab the latest(7.0) cude tookit
mkdir downloads
cd downloads
sudo wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_7.0-28_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1404_7.0-28_amd64.deb
rm cuda*.deb

#add the packages and install the cuda driver
echo -e "\nexport PATH=/usr/local/cuda/bin:$PATH\n\nexport LD_LIBRARY_PATH=/usr/local/cuda/lib64" >> .bashrc

#reboot the system for cuda to load
sudo reboot


cuda-install-samples-7.0.sh ~/

cd NVIDIA\_CUDA-7.0\_Samples/1\_Utilities/deviceQuery
make
./deviceQuery
