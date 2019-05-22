# Example for docker-compose with portainer

Docker-compose example with portainer (<http://portainer.io>).

This features:

- docker-compose
- mount of persistent volumes
- mount of config files

## Components

2 Containers: portainer and haproxy as SSL termination proxy

### generate SSL certs

```sh
sh make-ssl.sh
```

Generates a self signing certificate. 

Though it is best to open the site with firefox or chrome and accept the SSL warning.

### system customizing and docker-compose install

There is a shell script which installs docker-compose and disables selinux for this installation.

```sh
sh get-docker-compose.sh
```

You have to enter your password!

## start installation

```sh
docker-compose up -d
docker-compose logs -f
```

start:

<https://192.168.56.102:11443> -> if you are using the virtualbox installation in my workshops (maybe your IP is different. You can verify on the console screen!)

---

Peter Pfläging <peter@pflaeging.net>

<https://www.pflaeging.net>

License: Apache 2.0 
