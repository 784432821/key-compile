FROM ubuntu:22.04

LABEL maintainer="liusheng build" \
    description="kvm Docker image"

WORKDIR /root

RUN apt-get clean && apt-get update
RUN apt-get install -y make cmake python3 python3-pip
RUN pip3 install meson ninja pyelftools

RUN apt-get install -y pkg-config curl wget

ENV LANG C.UTF-8
RUN echo 'alias ll="ls -l"' >> /root/.bashrc

RUN apt-get install -y libncurses5-dev libncursesw5-dev libnuma-dev libpq-dev
RUN apt-get install -y automake pciutils gdb vim sysstat linux-tools-common
RUN apt-get install -y numactl git iproute2
RUN apt-get install -y net-tools postgresql-client
RUN apt-get install -y tftpd-hpa bison flex
RUN apt-get install -y musl-tools musl-dev

RUN mkdir -p /data/toolchain/
RUN wget -P /data/toolchain/ https://musl.cc/i686-linux-musl-cross.tgz
RUN tar -xf /data/toolchain/i686-linux-musl-cross.tgz -C /data/toolchain/
RUN rm -f /data/toolchain/i686-linux-musl-cross.tgz
