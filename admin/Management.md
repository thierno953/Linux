# Linux User Account Management

**Topics**

* useradd
* userdel
* usermod
* groupadd
* groupdel

**Files**

In files, we can check

* In group how many users are added
* UserId GroupID HomeDIR and Shell Type, description about user
* In shadow file, when was last password changed, max day to expire etc.

```bash
/etc/passwd
/etc/group
/etc/shadow
``` 

**How to create a user ?**

```bash
useradd <user_name>
useradd -g <group_name> -s /bin/bash -c "description" -m -d /home/<user_name> <user_name>
```

**How to identify if a user is created ?**

```jsx
id <user_name>
```

**How to delete a user?**

```bash
userdel <name_of_user>
userdel -r  #will remove home directory
userdel -f  #force delete even if the user is logged in
``` 

**How to modify a user ?**

To add user to a new group, but default group will remain same.

```bash
usermod -G <group_name> <user_name>
```

**To change the default group**

```bash
usermod -g <group_name> <user_name>
```

**Other usermod options:**

```bash
usermod -m -d /home/newfolder  #to move the content of home folder to this new folder
usermod -p                     #we can use passwd command also)
usermod -s                     #shell type
usermod -L -U                  #Lock/UnLock a user
```

```bash
usermod -m -d /home/<user_name> <user_name>
ls -ld newfolder/
passwd <user_name>
su - <user_name>
```

**To change ownership**

```bash
chown <user_name> myfile.txt
```

**How to create a group?**

```bash
groupadd <group_name>
less /etc/group
```

**To add a user to the group**

```bash
usermod -aG <group_name> <user_name>
```

**To change group**

```bash
chgrp <group_name> myfile.txt
```

**How to delete a group ?**

```bash
groupdel <group_name>
```

**To remove a user from the group**

```bash
gpasswd -d <user_name> <group_name>
```