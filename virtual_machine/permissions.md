# chmod command

Here I have covered everything about Linux permissions for files and folders and how we can change permissions very easily using CHMOD command.

* How to check and understand issues with denied permissions.
* How to Check File and Folder Permissions in Linux
* Types of permissions in Linux
* Scope of users and permissions
* How to Change Permissions in Linux Using the CHMOD Command
* How to add or remove permissions

###### example:

```bash
r - read
w - write
x - execute
```
#### Permissions (rwx) levels:

```bash
u - yourself (current user)
g - group in which user belongs to
o - others users
a - all users
```

```bash
binary        octal       permissions
------        ----        ----------
000            0            ---
001            1            --x
010            2            -w-
011            3            -wx-
100            4            r--
101            5            r-x
110            6            rw-
111            7            rwx
```

```bash
chmod u+r myfile.txt ===> (adding permission)
chmod u-r myfile.txt  ===> (removing permission)
chmod ugo+r myfile.txt 
chmod ugo-r myfile.txt
chmod a+rwx myfile.txt  ===> (adding for all)
chmod 756 myfile.txt  ===> (7 = user, 5 = group, 6 = others user)
```

* To create a user

```bash
sudo useradd user
less /etc/passwd
```

* To check manually

```bash
man useradd
man usermod
```
```bash
sudo usermod -c "user n°1" -s /bin/bash -m user
sudo mkhomedir_helper user
```

* To access the password
```bash
sudo less shadow
man passwd
sudo passwd user
sudo less shadow
```

* To open user
```bash
sudo su -i -u user
or
su - user
```

* To change ownership
```bash
chown user myfile.txt
```

* To create a group::
```bash
man groupadd
sudo groupadd commercial
less group
```
* To copy all:
```bash
sudo cp -R /etc/skel /etc/skel-comm
ls -l | grep skel
cd skel-comm
sudo touch "you are commercial"
cd /
cd home/
```

* To create a folder:
```bash
sudo mkdir COMMERCIAL
sudo less /etc/group
```

* To create a user in the group:
```bash
man useradd
sudo useradd -c "Paul" -s /bin/bash -m -g commercial -k /etc/skel-comm -b /home/COMMERCIAL paul
sudo less /etc/passwd
cd COMMERCIAL
ls 
ls -ltr
```

* To change group
```bash
chgrp group myfile.txt
```

* To delete user
```bash
sudo userdel user
or
sudo rm -Rf user
or
sudo userdel user -r
less /etc/passwd
less /etc/group
```

* To delete group
```bash
sudo groupdel group
```

* To add a user to the group
```bash
sudo usermod -aG group user
less /etc/group
```

* To remove a user from the group
```bash
sudo gpasswd -d user group
less /etc/group
```





















