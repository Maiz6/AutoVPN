#!/bin/bash

echo "Updating Ansible environment variable"
export ANSIBLE_HOST_KEY_CHECKING=False

echo "Installing Asterisk on the dedicated container"
ansible-playbook -i inventaire.ini --user admin --extra-vars 'ansible_user=admin ansible_password=admin ansible_sudo_pass=admin' global.yml

# Keeping the container alive
top -b