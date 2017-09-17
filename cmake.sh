cd ~
sudo apt-get install build-essential
wget http://www.cmake.org/files/v3.5/cmake-3.5.2.tar.gz
tar xf cmake-3.5.2.tar.gz
cd cmake-3.5.2
./configure
make -j4
sudo make install
