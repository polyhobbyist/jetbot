FROM ros:humble

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
        ros-humble-imu-tools \
        ros-humble-teleop-twist-joy \
        libi2c-dev \
        ros-humble-image-transport

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

ENV NVM_DIR /root/.nvm
ENV NODE_VERSION 20.10.0

# install node and npm
RUN . $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default


ENTRYPOINT ["./ros_entrypoint.sh"]
CMD [ "bash" ]
