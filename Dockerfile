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

EXPOSE 443/tcp

EXPOSE 443/udp

EXPOSE 992/tcp

EXPOSE 992/udp

EXPOSE 5555/tcp

EXPOSE 5555/udp

EXPOSE 500/udp

EXPOSE 1701/udp

EXPOSE 4500/udp
