# Kill command

#### Used to terminate a process manually.

* Syntax of kill command:
```bash
kill [OPTIONS] [PID]
```
```bash
OPTION = signal name or no.
PID = Process ID
```
* Most Widely used kill commands
```bash
kill PID
kill -1 PID   (to restart the process)
kill -2 PID   (interrupt from keyboard like Ctrl+c)
kill -9 PID   (forcefully terminate the process)
kill -15 PID (kill process gracefully)
kill -l (all process)
```
###### ex:
```bash
ps -ef | grep sleep
pidof sleep
kill -9 (id)
```
```bash
ps -ef | grep httpd
pidof httpd
kill -1 (id)
ps -ef | grep httpd
```
