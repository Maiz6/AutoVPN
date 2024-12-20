# Projet VPN

## Description
Le projet consiste à déployer un serveur VPN sécurisé pour une petite entreprise en utilisant Docker et Ansible pour l'automatisation de la configuration et de la gestion des clients VPN.

Les technologies qui seront utilisées durant ce projet sont : 
- Ansible
- Docker 
- OpenVPN

## Déploiement

Dans un premier temps, il va falloir clone le projet à l'aide de la commande :
```shell
git clone https://github.com/Maiz6/AutoVPN .
```

Une fois le projet récupéré, il faudra lancer le projet avec la commande :  
```shell
docker-compose up  .
```

Cette commande va vous permettre de lancer les 3 conteneurs :
- Serveur 
- Client 
- Conteneur principal : automatiser l'installation du client et du serveur

Une fois cette commande lancée, il faudra se rendre dans le conteneur du client afin d'effectuer une commande pour que le client puisse se connecter au serveur.
```shell
openvpn --client --config /etc/openvpn/client/edouard.ovpn .
```