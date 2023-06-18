# Firewall Rules with Firewall-cmd Command

- Firewall is a network security system that monitors and control incoming and outgoing network traffic on the rules defined.
- Basically used to determine and block untrusted network to access out system.

**Type of Firewall?**

  - **1.Software Based:** Running on operating system.
  - **2.Hardware Based:** A delicated appliance with firewall software between two different networks (mostloy used by network team).

**Tools on linux for managing firewall?**
  - 1 - iptables.
  - 2 - firewall - newer version of Centos, Redhat, Fedorat etc.

**Listing, Adding, Deleting firewall rules!**

**Check if firewall service is installed?**

```bash
rpm -qa | grep firewalld
```

Stop/Start firewall service?

```bash
systemctl start/enable firewalld
systemctl stop/disable firewalld
systemctl status firewalld
systemctl restart firewalld
```

Check the rules of firewall

```bash
firewall-cmd --list-all
```

Listing of all the services firewall is aware of:

```bash
firewall-cmd --get-services
```

To reload the config of firewall

```bash
firewall-cmd --reload
``` 

Firewall has multiple zones, to get list

```bash
firewall-cmd --get-zones
```

To see the list of active zones

```bash
firewall-cmd --get-active-zones
```

To get firewall rules for a specific zone

```bash
firewall-cmd --zone=public --list-all
```

To add or remove a service --permanent

```bash
firewall-cmd --add-service=<name_of_service> --permanent
# example: firewall-cmd --add-service=http --permanent
firewall-cmd --remove-service=<name_of_service> --permanent
```
To reload the config

```bash
systemctl restart firewalld.service
firewall-cmd --reload
```

To add or remove a port

```bash
firewall-cmd --add-port=80/tcp
# example: firewall-cmd --add-port=80/tcp
firewall-cmd --list-all
firewall-cmd --remove-port=80/tcp
```

To block incoming traffic from an IP 

```bash
firewall-cmd --add-rich-rule 'rule family="ipv4" source address="192.168.0.0" reject'
firewall-cmd --list-rich-rules
```

To block outgoing traffic to a IP or URL

```bash
firewall-cmd --direct --add-rule ipv4 filter OUTPUT 0 -d <IP> -j DROP 
```

To block ICMP incoming traffic

```bash
firewall-cmd --add-icmp-block-inversion 
```

bvjxaguagtmkktft