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
rpm -qa | grep firewall
```

***Stop/Start firewall service?**

```bash
systemctl start/enable firewall
systemctl stop/disable firewall
systemctl status firewall
systemctl restart firewall
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

To get firewall rules for a specific zonz

```bash
firewall-cmd --zone=public --list-all
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

**To add or remove a service**

```bash
firewall-cmd --add-service=<name_of_service>
firewall-cmd --remove-service=<name_of_service>
```
**To reload the config**

```bash
firewall-cmd --reload
```