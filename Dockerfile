FROM ros:foxy

# Dist upgrade - https://github.com/ros2/rosidl/issues/680#issuecomment-1125188129

RUN apt-get update && \
    apt dist-upgrade -y && \
    apt-get install -y --no-install-recommends \
        python-is-python3 \
	libopencv-dev \
	python3-opencv \
        libboost-all-dev \
        openssl \
        git \
        gdb \
	i2c-tools \
        libcurl4-openssl-dev \
        libssl-dev \
        curl \
        ros-foxy-imu-tools \
        ros-foxy-teleop-twist-joy \
        ros-foxy-rosbridge-server \
        libi2c-dev

#RUN pip3 install --upgrade pip
#RUN pip3 install --upgrade setuptools
#RUN pip3 install --upgrade wheel
#RUN pip3 install numpy

#RUN mkdir /onnx && \
#        cd /onnx && \
#        wget https://github.com/Kitware/CMake/releases/download/v3.20.2/cmake-3.20.2.tar.gz && \
##        tar -zxvf cmake-3.20.2.tar.gz && \ 
#        cd cmake-3.20.2 && \
#        ./bootstrap && \
#        make && \
#        sudo make install         
    
#RUN cd /onnx && \
#    git clone --recursive https://github.com/Microsoft/onnxruntime && \
#    cd /onnx/onnxruntime && \
#    ./build.sh --config MinSizeRel --update --build && \
#    ./build.sh --config MinSizeRel --build_shared_lib && \
#    ls -l /onnx/onnxruntime/build/Linux/MinSizeRel/*.so

ENTRYPOINT ["./ros_entrypoint.sh"]
CMD [ "bash" ]
