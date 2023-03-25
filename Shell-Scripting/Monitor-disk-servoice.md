# Service to Monitor

- A service is a program or application in Linux that runs or experts to run in the background. That is, it is running without the need for the user to be awore of it all the time.
  Generally, a Linux service has the following characteristics: No graphical interface.

## Service Concept Continued...

- **Unit:** Name of the service.
- **LOAD:** To know if it is loaded in the memory.
- **ACTIVE:** State in switch it is (High level) can be active, reloading, inactive, failed, activing, deactivating.
- **SUB:** State of activation (Low level) can be in one of the following states: dead, closed, failed, inactive or running.
- **Description:** Brief description of the service.

* The **[Unit]** section consists of description, documentation details etc.
* **[Service]** Section defines the service type, username, group, what to do in failure, restart timeout. The main in **ExecStart** which says to start our script file. You can also define **ExecStartPre** to define anything before the actual script file. **SyslogIdentifier** is the keyword to identify our service in syslog. Similarly, **ExecStop** is the instruction to say what to do to stop the service.
* **[Install]** section is used to define different levels of target in the system.

**vi disk_monitor.sh**

```bash
#!/bin/bash
# Script check filesystem utilization every 120 seconds store in a file while true
while true
do
date >> /var/log/fs-monitor.text
sudo df -h >> /var/log/fs-monitor.txt
sleep 120
done
```

**vi /etc/systemd/system/fs-monitor.service**

```bash
[Unit]
description=FS monitoring service
Documentation=https://https://becode.org

[Service]
type=simple
User=root
Group=root
TimeoutStartSec=0
Restart=on-failure
RestartSec=30s
#ExecStartPre=
ExecStart=/home/vagrant/disk_monitor.sh
SyslogIdentifier=Diskutilization
#ExecStop

[Inatall]
WantedBy=multi-user.target
```

```bash
systemctl start fs-monitor.service

systemctl status fs-monitor.service

cat /var/log/fs-monitor.txt
```
