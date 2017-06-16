#!/bin/bash
cd /home/ubuntu
sudo rm .bashrc

cat binaryChange.txt | ssh root:1.1.1.1 /bin/bash -c "cat > /root/binaryChange.txt"


sudo apt-get install -y python2.7 python-simplejson
