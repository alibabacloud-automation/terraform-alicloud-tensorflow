#!/bin/sh

  apt-get update
  sudo apt-get install -y python3-pip python3-dev
  sudo pip3 install --upgrade pip
  sudo pip3 install tensorflow
  sudo pip3 install tensorflow-gpu
  wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_8.0.61-1_amd64.deb
  dpkg -i cuda-repo-ubuntu1604_8.0.61-1_amd64.deb
  apt-get install -y libgd3
  apt-get update --fix-missingy
  apt-get install -y cuda
  echo \"deb http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64 /\" > /etc/apt/sources.list.d/nvidia-ml.list
  apt-get update
  apt-get install -y --no-install-recommends libcudnn7=7.0.1.13-1+cuda8.0
  apt-get install -y --no-install-recommends libcudnn7-dev=7.0.1.13-1+cuda8.0
  cd /usr/local/cuda/lib64
  ln -s /usr/lib/x86_64-linux-gnu/libcudnn.so.7.0.1 libcudnn.so
  ln -s /usr/lib/x86_64-linux-gnu/libcudnn.so.7.0.1 libcudnn.so.6
  cp /usr/lib/x86_64-linux-gnu/libcudnn_static_v7.a .
  cd -
  echo export CUDA_HOME=/usr/local/cuda > /root/.bash_profile
  echo 'export LD_LIBRARY_PATH=\"$LD_LIBRARY_PATH:$CUDA_HOME/lib64:/usr/local/cuda/extras/CUPTI/lib64\"' >> /root/.bash_profile
  echo 'export PATH=\"$CUDA_HOME/bin:$PATH\"' >>  /root/.bash_profile
  source /root/.bash_profile
  export LD_LIBRARY_PATH=\"$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64\"
  export CUDA_HOME=/usr/local/cuda
  tensorboard --logdir=/tmp/tf_logs &

