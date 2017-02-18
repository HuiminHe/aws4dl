sudo -H pip3 install --upgrade pip
sudo -H pip3 install jupyter
cert="/home/ubuntu/.certs/mycert.pem"
certs="/home/ubuntu/.certs"
if [ -f $cert ]; then
    echo "$cert found"
else
    if [ ! -f $certs ]; then
	mkdir ~/.certs
    fi
    sudo openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout mycert.pem -out mycert.pem
    mv mycert.pem ~/.certs/
fi

jupyter notebook --generate-config
echo "If add customized setting to the config(y/N)"
read ans
if [ $ans == "y" ]; then 
    cat jupyter.config >> ~/.jupyter/jupyter_notebook_config.py
fi
echo -e "\naliasing jn='sudo jupyter notebook'\n" >> ~/.bashrc
echo "Jupyter is configured"
