FROM dustynv/ros:foxy-slam-l4t-r32.5.0

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        gdb


ENTRYPOINT ["./ros_entrypoint.sh"]
CMD [ "bash" ]