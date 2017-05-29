cd ~/opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D INSTALL_PYTHON_EXAMPLES=ON \
      -D INSTALL_C_EXAMPLES=OFF \
      -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules \
      -D PYTHON_EXECUTABLE=/home/ubuntu/yes/bin/python \
          -D BUILD_EXAMPLES=ON ..
make -j4
make clean
make
