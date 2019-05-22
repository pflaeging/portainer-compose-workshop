#! /bin/sh

NAME=`ip a| grep 192.168.56 | cut -d " " -f6 | cut -d/ -f1`.xip.io

echo $NAME
openssl req -x509 -newkey rsa:4096 -keyout privkey.pem -out fullchain.pem -nodes -days 365 -subj /CN=$NAME
cat fullchain.pem privkey.pem > certificate.pem
rm -f privkey.pem fullchain.pem
