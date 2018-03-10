#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
# docker build . -t "simulator2d:core"
# docker run -it simulator2d:core 


# Pull base image.
FROM ubuntu:16.04

# Install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  rm -rf /var/lib/apt/lists/*

# When was together, there was an error installing flex and bison
# So I changed to install separated
RUN apt-get update && apt-get install -y flex bison gcc make automake libtool libboost-all-dev libboost-dbg
RUN apt-get install -y libaudio-dev libpng-dev libxi-dev libglib2.0-dev libfontconfig-dev libxrender-dev

RUN mkdir /simulation-2d
COPY . /root/simulation-2d

WORKDIR /root/simulation-2d/rcssserver
RUN ./bootstrap
RUN ./configure 
RUN make
RUN make install

WORKDIR /root/simulation-2d/rcssserver/libs
COPY ./libs/* /usr/lib/

#WORKDIR /root/
RUN mkdir ~/.rcssserver/

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]

