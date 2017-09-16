sudo apt-get install build-essential checkinstall cmake pkg-config yasm gfortran git -y
sudo apt-get install libjpeg8-dev libjasper-dev libpng12-dev -y
# If you are using Ubuntu 14.04
sudo apt-get install libtiff4-dev -y

sudo apt-get install libprotobuf-dev protobuf-compiler -y
sudo apt-get install libgoogle-glog-dev libgflags-dev -y
sudo apt-get install libgphoto2-dev libeigen3-dev libhdf5-dev doxygen -y

sudo apt-get install python-dev python-pip python3-dev python3-pip -y
sudo -H pip2 install -U pip numpy #update pip2
sudo -H pip3 install -U pip numpy
sudo -H pip2 install -U numpy scipy matplotlib scikit-image scikit-learn ipython

cd ~
git clone https://github.com/opencv/opencv.git
cd ~/opencv
git checkout 3.3.0

cd ~
git clone https://github.com/opencv/opencv_contrib.git
cd ~/opencv_contrib
git checkout 3.3.0
cd ~/opencv
mkdir build
cd build

cmake -D CMAKE_BUILD_TYPE=RELEASE \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D INSTALL_PYTHON_EXAMPLES=ON \
      -D INSTALL_C_EXAMPLES=ON \
      -D WITH_TBB=ON \
      -D WITH_V4L=ON \
      -D WITH_OPENGL=ON \
      -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules \
      -D PYTHON_EXECUTABLE=/usr/bin/python2.7 \
      -D PYTHON3_EXECUTABLE=/usr/bin/python3.6 \
      -D BUILD_EXAMPLES=ON ..
make -j4
sudo make install
sudo sh -c 'echo "/usr/local/lib" >> /etc/ld.so.conf.d/opencv.conf'
sudo ldconfig

echo "opencv3.3.0 is installed"
