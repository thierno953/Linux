# Wget in Linux
- wget is a free utility for non-interactive download of files from the web. It supports HTTP, HTTPS, and FTP protocols, and retrieval through HTTP proxies.
- wget is non-interactive, meaning that can work in the background, while the user is not logget on, which allows you to start a retrieval and disconnect from the system, letting "wget" finish the work. By constrast, most web browsers require constant user interaction, which make transferring a lot of data difficult.
-------------
Installing wget
-------------
```bash 
sudo yum install wget -y

sudo apt-get install wget
```

- Wget Syntax
```bash 
rpm -qa | grep wget

wget http://website.com/files/file.zip
```

```bash 
#!/bin/bash
echo " Download the prometheus binaries"
if [ -e /home/vagrant/prometheus-2.42.0.linux-amd64.tar.gz ];
then
        echo "file is already existing so no need to download "
        tar -zxvf /home/vagrant/prometheus-2.42.0.linux-amd64.tar.gz
else
        echo "binary does not exists in system first we need to download it"
        wget https://github.com/prometheus/prometheus/releases/download/v2.42.0/prometheus-2.42.0.linux-amd64.tar.gz
        tar -zxvf /home/vagrant/prometheus-2.42.0.linux-amd64.tar.gz
        echo "file has been extracted, you can start prometheus"
fi
```
