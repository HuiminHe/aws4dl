#install Bazel
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
# Hack to silently agree license agreement
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer

echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list
curl https://storage.googleapis.com/bazel-apt/doc/apt-key.pub.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install bazel
sudo apt-get upgrade bazel

#install tensorflow from git
git clone --recurse-submodules https://github.com/tensorflow/tensorflow
cd tensorflow
TF_UNOFFICIAL_SETTING=1 ./configure
bazel build -c opt --config=cuda //tensorflow/cc:tutorials_example_trainer
bazel build -c opt --config=cuda //tensorflow/tools/pip_package:build_pip_package
bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg

sudo pip install --upgrade /tmp/tensorflow_pkg/tensorflow-0.11.0rc0-py2-none-any.whl


