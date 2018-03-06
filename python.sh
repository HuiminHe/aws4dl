sudo apt-get install python3-pip -y
sudo -H pip3 install --upgrade pip
sudo -H pip3 install numpy scipy matplotlib jupyter ipython
jupyter notebook --generate-config -y
cp jupter_notebook_config.py ~/.jupyter/
mkdir ~/ssl
cd ~/ssl
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout cert.pem -out cert.pem
cd ~
