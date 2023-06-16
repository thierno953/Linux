# Linux User Account Management

### Topics

* useradd
* userdel
* usermod
* groupadd
* groupdel

### Files

* /etc/passwd
* /etc/group
* /etc/shadow

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
-m -d /home/newfolder  #to move the content of home folder to this new folder
-p                     #we can use passwd command also)
-s                     #shell type
-L -U                  #Lock/UnLock a user
```

```bash
usermod -m -d /home/<user_name><user_name>
ls -ld newfolder/
passwd <user_name>
su - <user_name>
```