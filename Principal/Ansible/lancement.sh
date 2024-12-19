#!/bin/bash

echo "Désactiver vérification des clés SSH"
export ANSIBLE_HOST_KEY_CHECKING=False

echo "Installation d'OpenVPN"
ansible-playbook -i inventaire.ini --user admin --extra-vars 'ansible_user=admin ansible_password=admin ansible_sudo_pass=admin' global.yml

# Keeping the container alive
top -b