FROM ubuntu:20.04
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    bash \
    docker.io \
    curl \
    sudo \
    systemd

# Enables Docker starting with systemd
RUN systemctl enable docker
#RUN 
# use systemd as the init
RUN ln -s /lib/systemd/systemd /sbin/init
