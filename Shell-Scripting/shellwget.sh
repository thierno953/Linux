#!/bin/bash
echo "Download the prometheus binaries"
if [ -e /home/vagrant/prometheus-2.48.1.linux-amd64.tar.gz]; then
    echo "file is already existing so no need to download"
    tar -zxvf /home/vagrant/prometheus-2.48.1.linux-amd64.tar.gz
else
    echo "binary does not exists in system first we need to download it"
    wget https://github.com/prometheus/prometheus/releases/download/v2.48.1/prometheus-2.48.1.linux-amd64.tar.gz
    tar -zxvf /home/vagrant/prometheus-2.48.1.linux-amd64.tar.gz
    echo "file has been extracted, you can start prometheus"
fi
