FROM dustynv/ros:foxy-slam-l4t-r32.5.0

# replace "deb https://apt.kitware.com/ubuntu/ bionic main" in /etc/apt/sources.list
RUN wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && \
    cp /etc/apt/sources.list /etc/apt/sources.list.old && \
    sed 's/deb https:\/\/apt\.kitware\.com\/ubuntu\/ bionic main/deb \[signed-by=\/usr\/share\/keyrings\/kitware-archive-keyring\.gpg\] https:\/\/apt\.kitware\.com\/ubuntu\/ bionic main/g' /etc/apt/sources.list.old > /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        gdb \
        libi2c-dev


ENTRYPOINT ["./ros_entrypoint.sh"]
CMD [ "bash" ]