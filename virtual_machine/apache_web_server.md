# Apache Web Server HTTPD 

* HTTPD Daemon is a software program that runs in the background of a web  server and waits for the incoming server requests.

* The daemon answers the request automatically and serves the hypertext and multimedia documents over the internet unsing HTTP.

```bash
yum install httpd
httpd --version
```
#### Config location:

```bash
/etc/httpd/conf/httpd.conf

/var/www/html/index.html (we need to add this file)
```

##### Logs:

```bash
log var/log/httpd
```

##### How to start service

```bash
systemctl start httpd
```

###### example:

```bash
cd /etc/httpd/conf

ls

less httpd.conf

cd /var/www/

ls

cd html/

pwd

vi index.html

systemctl start httpd

ip addr or ifconfig

systemctl status firewalld.service
```




