sudo bash ~/.dbx.sh download setup/libcudnn5_5.1.5-1+cuda8.0_amd64.deb
sudo bash ~/.dbx.sh download setup/libcudnn5-dev_5.1.5-1+cuda8.0_amd64.deb
sudo dpkg -i libcudnn5_5.1.5-1+cuda8.0_amd64.deb
sudo dpkg -i libcudnn5-dev_5.1.5-1+cuda8.0_amd64.deb
rm libcudnn5_5.1.5-1+cuda8.0_amd64.deb
rm libcudnn5-dev_5.1.5-1+cuda8.0_amd64.deb
#configure the env
export CUDA_HOME=/usr/local/cuda
export CUDA_ROOT=/usr/local/cuda
export PATH=$PATH:$CUDA_ROOT/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDA_ROOT/lib64
