#! /bin/sh
sudo yum install -y docker-compose
sudo cp /etc/sysconfig/docker /etc/sysconfig/docker.save
sudo sed -i 's/--selinux-enabled //g' /etc/sysconfig/docker
sudo systemctl restart docker
