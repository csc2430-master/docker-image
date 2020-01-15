FROM ubuntu:18.04
MAINTAINER Carlos R. Arias <arias@spu.edu>

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y cmake gcc g++ clang libncurses5 libncurses5-dev vim make build-essential gdb valgrind

VOLUME /development



