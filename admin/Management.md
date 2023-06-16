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

### How to create a user ?

```jsx
useradd <user_name>

useradd -g <group_name> -s /bin/bash -c "description" -m -d /home/<user_name> <user_name>
```

### How to identify if a user is created ?

```jsx
id <user_name>
```