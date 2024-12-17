FROM debian:12-slim

WORKDIR /travail

RUN apt update -y && apt upgrade -y
RUN apt install python3-dev python3-pexpect openssh-server curl procps sudo iproute2 easy-rsa -y

RUN service ssh start

RUN useradd -ms /bin/bash admin -p admin && echo "admin:admin" | chpasswd
RUN echo "admin ALL=(ALL:ALL) ALL" >> /etc/sudoers

CMD /usr/sbin/sshd -D