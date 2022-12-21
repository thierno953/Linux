# Ping Command

- check network connectivity
- check internet connection
- check network interface card
- check latency on network
- DNS resolution.
```bash

```
###### example:

```bash
ping hostname
ping ip
ping www.google.com
ping -c 3 www.google.com 
ping -c 5 -q www.google.com 
ping -i 2 www.google.com 
ping -f www.google.com
ping -s 500 www.google.com 
ping -w 10 www.google.com
ping -D www.google.com 
```
#### got into root:

```bash
su - 
ping localhost
ping IP
ping -f localhost
ping -D localhost
ping -a localhost
```
