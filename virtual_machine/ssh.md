# SSH
SSH or Secure Shell is a network communication protocol that enables two computers/devices to communicate and share data.

## More about SSH:

* SSH is also a command in linux

* It is used to access an another linux server or accessing a linux server from a terminal.

### Syntax: ssh user_name@host(IP/Domain_name)

* To use SSH, ssh service must be installed on linux server.
* We can check using
```bash
rpm -aq | grep ssh, or
check the /etc/ssh/sshd_config
```
* If not already installed then install below two install openssh-clients openssh-server and now enable the ssh or check if it is enable using systemctl status sshd.

#### Access a linux server from another server

```bash
file /etc/ssh/sshd_config
rpm -qa | grep sshd
ifconfig or ip addr
sudo apt update
sudo apt install openssh-server openssh-client
sudo systemctl status sshd
sudo systemctl enable sshd
sudo systemctl stop sshd
sudo systemctl restart sshd
ssh user_name@host(IP/Domain_name)
```

#### Using password

#### Without password (by passing the ssh key)

* How we can setup the SSH to login into a Linux server and Accessing a Linux server remotely without any password.
* We will going to use below two SSH commands
```bash
ssh-keygen
ssh-copy-id
```
* Generate a new SSH key pair on local machine.
* Copy public key to remote machine.
* Login to remote server without password.

###### example:
```bash
ssh-keygen
ls .ssh
ssh-copy-id ssh user_name@host(IP/Domain_name)
ssh user_name@host(IP/Domain_name)
```


