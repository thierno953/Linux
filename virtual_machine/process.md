# ps (process status)

Used to display all the running process in the linux system.
### Syntax:
#### ps [OPTIONS]
ps - Shows the process of current shell
```bash
PID - unique process ID
TTY - terminal type of user logged in to
TIME - amount of CPU in min and sec that process has been running
CMD =  name of the command that launched the process
```

Most widely used command
```bash
To see all the running processes
ps -e 
ps -A
ps -ef (for full format)
```

To see all the running process in BSD (Berkeley Software Distribution) format in Linux
Ideally it gives you more information
```bash
ps aux
```

To see the process by username
```bash
ps -u user_name
ps -G group_name
```

Process associated with terminals
```bash
ps -T (current terminal only)
ps -x (other terminal included)
```
To see the process tree
```bash
ps -ejH 
```
###### ex:
```bash
ps
ps -e
ps -ef | more
ps -ef | less
ps aux | more
ps -ef | grep httpd
systemctl status httpd
systemctl start httpd
systemctl stop httpd
systemctl restart httpd
systemctl enable httpd
systemctl disable httpd
systemctl reload httpd
```
```bash
ps -u root
ps -u user | more
ps -efH
ps -ejH | grep httpd
systemctl status httpd
```

