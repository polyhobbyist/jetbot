FROM ros:foxy

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        gdb \
        libi2c-dev


ENTRYPOINT ["./ros_entrypoint.sh"]
CMD [ "bash" ]