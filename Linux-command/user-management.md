# Linux User Account Management using USERADD, USERMOD, GROUPADD

## Files

- /etc/passwd
- /etc/group
- /etc/shadow

How to create a user ?

```shell
useradd <user_name>

less /etc/passwd

useradd -g <group_name> -s /bin/bash -c "description" -m -d /home/<user_name> <user_name>
```

How to identify if a user is created ?

```shell
id <user_name>
```

How to delete a user ?

```shell
userdel <name_of_user>

userdel -r (will remove home directory)

userdel -f (force delete even if the user is logged in)
```

How to modify a user ?

- To add user to a new group, but default group will remain same.

```shell
usermod -G <group_name><user_name>
```

- To change the default group

```shell
usermod -g <group_name><user_name>
```

Other usermod options:

- **-m -d** /home/newfolder (to move the content of home folder to this new folder)

```shell
usermod -m -d /home/<user_name><user_name>
ls -ld newfolder/
passwd <user_name>
su - <user_name>
```

- **-p** (we can use passwd command also)

* **-s** shell type

- **-L -U** (Lock/UnLock a user)

```shell
usermod -L <user_name>
usermod -U <user_name>
```

How to create a group ?

```shell
groupadd <group_name>

less /etc/group
```

To add a user to the group

```bash
usermod -aG <group_name><user_name>
```

How to delete a group ?

```bash
groupdel <group_name>
```

To remove a user from the group

```bash
gpasswd -d <user_name><group_name>
```



