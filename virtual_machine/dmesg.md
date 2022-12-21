# System Monitoring Commands | MPrashant

I have covered about some Linux System Monitoring Commands like Dmesg
using these commands we can monitor the Linux system and it's hardware related issues including memory, harddisk, drivers related messages.

## What is Dmesg Command In Linux?

Linux utility that displays kernel-related messages retrieved from the kernel ring buffer. 
The ring buffer stores information about hardware, device driver initialization, and messages from kernel modules that take place during system startup.

* dmesg command
```bash
sudo sysctl kernel.dmesg_restrict=0
dmesg
dmesg -HTx (human readable, timestamp, decode) 
```
```bash
dmesg | more
dmesg | less

dmesg | head -10
dmesg | tail -10

dmesg command

dmesg | grep <search_string>
```
We can search related to 

* memory
* usb
* sda
* ram
* tty
* error

```bash
dmesg
dmesg | more
dmesg -HTx | more
dmesg -HTx
dmesg | head -10
dmesg | tail -10
dmesg -HTx | grep usb
dmesg -HTx | grep memory
dmesg -HTx | grep sda
dmesg -HTx | grep error
dmesg -HTx | grep warn

dmesg -w >>>>>>>>>>>> For live monitoring
dmesg -c >>>>>>>>>>>> To clear the ring buffer
dmesg -l warn
dmesg -l debug
```

* To filter the messages based on different level
```bash
dmesg -l emerg/alert/crit/err/warn/notice/info/debug
```

