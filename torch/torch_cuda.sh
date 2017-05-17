sudo apt-get update
sudo apt-get upgrade
mkdir code
cd code
git clone https:github.com/HuiminHe/myaws
## install CUDA 8
wget https://developer.nvidia.com/compute/cuda/8.0/prod/local_installers/cuda-repo-ubuntu1604-8-0-local_8.0.44-1_amd64-deb
sudo dpkg -i cuda-repo-ubuntu1604-8-0-local_8.0.44-1_amd64-deb
rm cuda-repo-ubuntu1604-8-0-local_8.0.44-1_amd64-deb
sudo apt-get update
sudo apt-get install -y cuda
bash myaws/drop_boxuploader.sh

bash myaws/drop_boxuploader.sh download setup/libcudnn5_5.1.5-1+cuda8.0_amd64.deb

bash myaws/drop_boxuploader.sh download setup/libcudnn5-dev_5.1.5-1+cuda8.0_amd64.deb

## install cuDNN
sudo dpkg -i libcudnn5_5.1.5-1+cuda8.0_amd64.deb
sudo dpkg -i libcudnn5-dev_5.1.5-1+cuda8.0_amd64.deb

export CUDA_HOME=/usr/local/cuda
export CUDA_ROOT=/usr/local/cuda
export PATH=$PATH:$CUDA_ROOT/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDA_ROOT/lib64

sudo apt-get install -y build-essential git python3-pip libfreetype6-dev libxft-dev libncurses-dev libopenblas-dev gfortran python3-matplotlib libblas-dev liblapack-dev libatlas-base-dev python3-dev linux-headers-generic linux-image-extra-virtual unzip python3-numpy swig python3-pandas python3-sklearn unzip wget pkg-config zip g++ zlib1g-dev libcurl3-dev

## install torch
git clone https://github.com/torch/distro.git ~/torch --recursive
cd ~/torch; bash install-deps;
./install.sh
## add torch to the source
source ~/.bashrc

cd ~/code
## pip
sudo -H pip install jupyter

## itorch
git clone https://github.com/facebook/iTorch
cd iTorch
sudo apt-get install libzmq3-dev libssl-dev python-zmq
luarocks install lzmq --local
luarocks make


