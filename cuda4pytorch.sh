# nvida-driver
wget http://us.download.nvidia.com/tesla/390.12/nvidia-diag-driver-local-repo-ubuntu1604-390.12_1.0-1_amd64.deb
sudo dpkg -i nvidia-diag-driver-local-repo-ubuntu1604-390.12_1.0-1_amd64.deb
sudo apt-get update
sudo apt-get -y install cuda-drivers
echo "Reboot required."

