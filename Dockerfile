FROM ubuntu:bionic

RUN apt-get update

RUN apt-get install -y make gcc g++ libpthread-stubs0-dev libssl-dev libc6 libreadline-dev libncurses-dev zlib1g-dev git

COPY install-tzdata.sh .

RUN ./install-tzdata.sh

RUN git clone https://github.com/SoftEtherVPN/SoftEtherVPN_Stable.git

WORKDIR SoftEtherVPN_Stable

RUN ./configure

RUN make

RUN make install

# SoftEther OpenVPN
EXPOSE 1194/tcp
EXPOSE 1194/udp

# SoftEther Management
EXPOSE 5555/tcp

# SoftEther SoftEther L2TP/IPSec
EXPOSE 500/udp

# SoftEther SoftEther L2TP/IPSec
EXPOSE 1701/udp

# SoftEther SoftEther L2TP/IPSec
EXPOSE 4500/udp
