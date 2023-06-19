# NFS (Network File System)

- A network protocol for distributed file system.

- Using this, a user on the client computer can access the files on server side like as they are accessing locally.

**NFS Configuration Setup**

We need to setup in two parts

* Client side configuration
* Server side configuration

**Server Side Configuration**

 To install NFS Packages

```bash
yum install nfs-utils libnfsidmap -y
```

Enable and start the NFS Services

```bash
systemctl enable rpcbind, nfs-server 
systemctl start rpcbind.service nfs-server.service rpc-statd.service nfs-idmap.service
systemctl status rpcbind.service nfs-server.service rpc-statd.service nfs-idmap.service
```

Create a directory for NFS and give all the permissions

```bash
cd /
mkdir /server/apps
chmod 777 /server/apps/
``` 

Modify the /etc/exports file and add new shared filesystem

```bash
/apps <IP_allow>(rw, sync, no_root_squash)

#vi /etc/exports
/server/apps *(rw,sync,no_root_squash)
```

```bash
exportfs -rv
```


**Client Side Configuration**

 To install NFS Packages

```bash
yum install nfs-utils rpcbind -y
```

Enable and start the rpcbind Service

```bash
systemctl enable rpcbind 
systemctl start rpcbind 
systemctl status rpcbind 
```

To stop the firewill

```bash
systemctl stop firewill / iptable
```

Show mount from NFS Server

```bash
showmount -e <IP of server side>

showmount -e 192.168.56.101
``` 

Create a mount point (a directory)

```bash
cd /
mkdir /mnt/apps
```

Mount the NFS file system

```bash
cd 

showmount -e 192.168.56.101

mount <IP_Server>:/server/apps /mnt/apps

mount 192.168.56.101:/server/apps /mnt/apps/

df -h
```