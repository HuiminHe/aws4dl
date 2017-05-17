if [ ! -f /home/ubuntu/torch ]; then
    git clone https://github.com/torch/distro.git ~/torch --recursive
fi
cd ~/torch; bash install-deps;
./install.sh
source ~/.bashrc
echo "Torch is configured"
