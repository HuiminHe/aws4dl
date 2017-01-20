mkdir downloads
cd downloads
wget -0 Anaconda3.sh https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh
bash Anaconda3.sh -b -p ~/usr/local/bin/anaconda3
'export PATH="~/usr/local/bin/anaconda3:$PATH"' >> .bashrc
