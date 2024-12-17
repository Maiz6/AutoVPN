FROM debian:12-slim

RUN apt update -y && apt upgrade -y
RUN apt install python3-virtualenv sshpass python3-pip iproute2 iputils-ping procps -y
RUN mv /usr/lib/python3.11/EXTERNALLY-MANAGED /usr/lib/python3.11/EXTERNALLY-MANAGED.old

RUN useradd -ms /bin/bash admin -p admin && echo "admin:admin" | chpasswd
RUN su - admin

RUN virtualenv ansible
RUN . ansible/bin/activate
RUN python3 -m pip install ansible

# Running Ansible playbooks from the run.sh script
WORKDIR /travail
COPY Ansible .
RUN chmod +x lancement.sh

CMD ./lancement.sh