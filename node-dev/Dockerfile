FROM ubuntu:20.04
MAINTAINER Carlos R. Arias <arias@spu.edu>

ARG user=student

ENV DEBIAN_FRONTEND=noninteractive

# Install all required packages for 
# Node JS Applications
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
	build-essential \
	clang \
	cmake \
	g++ \
	gcc \
	make \
	sudo \
	vim  \
	openssh-server \
	rsync \
	git \
	nodejs \
	npm \
	curl

# RUN curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
# RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
# RUN apt-get update && apt-get install -y mongodb-org


# Expose port 22 to allow connection from CLion
EXPOSE 22
EXPOSE 8080
EXPOSE 8001
EXPOSE 8443
EXPOSE 3000
EXPOSE 4000

# Create a user to access through SSH from CLion
RUN useradd -m $user && echo "$user:$user" | chpasswd && adduser $user sudo

# Create a volume to connect a local directory to a directory in the image
VOLUME /development

# Setup starting script to start SSH server
RUN echo "clear" >> ~/.bashrc \
	&& echo "echo" >> ~/.bashrc  \
	&& echo "echo" >> ~/.bashrc \
	&& echo "echo" >> ~/.bashrc \
	&& echo "echo" >> ~/.bashrc \
	&& echo "echo Welcome $user to your Docker Container!!" >> ~/.bashrc \
	&& echo "echo ----------------------------------------" >> ~/.bashrc \
	&& echo "echo       Computer Science Rocks" >> ~/.bashrc \
	&& echo "echo ----------------------------------------" >> ~/.bashrc \
	&& echo "echo" >> ~/.bashrc \
	&& echo "echo" >> ~/.bashrc \
	&& echo "echo" >> ~/.bashrc \
	&& echo "echo" >> ~/.bashrc \
	&& echo "service ssh start" >> ~/.bashrc

