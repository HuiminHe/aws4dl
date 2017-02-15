wget https://developer.nvidia.com/compute/cuda/8.0/prod/local_installers/cuda-repo-ubuntu1604-8-0-local_8.0.44-1_amd64-deb
sudo dpkg -i cuda-repo-ubuntu1604-8-0-local_8.0.44-1_amd64-deb
rm cuda-repo-ubuntu1604-8-0-local_8.0.44-1_amd64-deb
sudo apt-get update
sudo apt-get install -y cuda

sudo bash ~/.dbx.sh
sudo bash ~/.dbx.sh download setup/libcudnn5_5.1.5-1+cuda8.0_amd64.deb
sudo bash ~/.dbx.sh download setup/libcudnn5-dev_5.1.5-1+cuda8.0_amd64.deb
sudo dpkg -i libcudnn5_5.1.5-1+cuda8.0_amd64.deb
sudo dpkg -i libcudnn5-dev_5.1.5-1+cuda8.0_amd64.deb

#configure the env
export CUDA_HOME=/usr/local/cuda
export CUDA_ROOT=/usr/local/cuda
export PATH=$PATH:$CUDA_ROOT/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDA_ROOT/lib64

sudo reboot
