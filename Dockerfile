FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
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
RUN docker run --rm -it -p 7080:7080 codercom/coder:1.25.1
# use systemd as the init
RUN ln -s /lib/systemd/systemd /sbin/init
