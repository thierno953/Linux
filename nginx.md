# NGINX 

* It is web server that accept request vi HTTP/s and respond to display website content through storing, processing and delivering web pages to users.
* This can also be used as a reverse proxy, load balancer, mail proxy and HTTP cache.

* Companies like Airbnb, Netflix, WordPress.com, and many others deploy NGINX for scalability and performance reason.

### Installation:

1. Setup yum repo for RHEL/CENTOS
```bash
sudo vi /etc/yum.repos.d/nginx.repo
```
2. Add the following to nginx.repo
```bash
[nginx]
name=nginx repo
baseurl=https://nginx.org/packages/centos/8/$...
gpgcheck=0
enabled=1
```
3. Update the yum repo
```bash
sudo yum update
```
4.Install NGINX Open source package:
```bash
sudo yum install nginx
```

5. Start and check the status of nginx:
```bash
systemctl status/start/stop nginx
```

Another way of verifing:
```bash
curl -I 127.0.01
```

#### Configs:
```bash
/etc/nginx/nginx.conf
/usr/share/nginx/html
less nginx.conf
cd /usr/share/nginx/html
ls -ltr
systemctl status/start/stop firewalld.service
cd /var/log/nginx/
ls -ltr
less access.log
less error.log
```

#### What is a proxy server?
* In computer networking, a proxy server is a server application that acts as an intermediary between a client requesting a resource and the server providing that resource.
```bash
Client(http://)   <----------->   Proxy  <----------->  Server
```
#### Reverse proxy server
* A proxy service which takes a client request, passes it on to one or more servers.
* Proxying is typically used to distribute the load among several servers, seamlessly show content from different websites, 
or pass requests for processing to application servers over protocols other than HTTP.
```bash
Internet   <----------->   Reverse Proxy(NGINX)  <----------->  Origin Server(Ex: Apache)
```
```bash
systemctl status nginx.service
ifconfig
```
* Changes in the conf
```bash
Config Location:/etc/nginx/nginx.conf
```
```bash
location/some/path/{
  proxy_pass http://www.example.com/link/;
}

location/{
   proxy_pass http://127.0.0.1:8080/;
}
```

###### example:
```bash
cd /etc/nginx/
ls
vi nginx.conf
location/{
        proxy_pass http://127.0.0.1:8080/;
}
systemctl stop nginx.service
systemctl start nginx.service
```
##### Check the logs:
```bash
/var/log/nginx/
sudo cat /var/log/audit/audit.log | grep nginx | grep denied
```
###### example:
```bash
cd /var/log/nginx/
ls -ltr
less access.log
less error.log
```
### How to solve access denied issue in NGINX reverse proxy?

* [crit] 59982#0: *2 connect() to 127.0.0.1:8080 failed (13: Permission denied) 
* while connecting to upstream, client: 192.168.29.179, server: _, request: "GET / HTTP/1.1", upstream: "http://127.0.0.1:8080/", host: "192.168.29.41"

#### Solution:

* List of all the httpd SELinux boolean.
```bash
#getsetbool -a | grep httpd
```
#### Enable the network connect boolean
```bash
#getsetbool httpd_can_network_connect on -P
```





