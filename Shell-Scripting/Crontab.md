# What is Crontab?

- The command is a list of commands that you want to run on a regular schedule, and also the name of the command used to manage that list. Crontab stands for "cron table, " because it uses the job scheduler cron to execute tasks; cron itself is named after "chronos, " the Greek word for time. Cron is the system process wich will automatically perform tasks for you according to a set schedule. The schedule is called is called the crontab, which is also the name of the program used to edit that schedule. Linux Crontab Format.

```bash
Ex: MIN HOUR DOM MON DOW CMD
```

- Crontab Fields and Allowed Ranges (Linux Crontab Syntax)

```bash
Field                Description                            Allowed Value
--------------------------------------------------------------------------
MIN                 Minute field                            0 to 59
--------------------------------------------------------------------------
HOUR                Hour field                              0 to 23
--------------------------------------------------------------------------
DOM                 Day of Month                            1 - 31
--------------------------------------------------------------------------
MON                 Month field                             1 - 12
--------------------------------------------------------------------------
DOW                 Day of week                             0 - 6
--------------------------------------------------------------------------
CMD                 Command                                 Any command to be executed.
--------------------------------------------------------------------------------------
```

### Examples of Cron jobs 1. Scheduling a Job For a Specific Time

- The basic usage of cron is to execute a job specific time as shown below. This will execute the Full backup shell script (full-backup) on 10th June 08:30 AM. The time field uses 24 hours format. So, for 8 AM use 8, and for 8 PM use 20.
**30 08 10 06 \* /home/vagrant/full-backup**

```bash
#!/bin/bash
echo "====status check docker service===="
status="`systemctl status docker|awk 'NR==3 {print}'|cut -d ':' -f 2|cut -d '(' -f 1`"
echo $status
if [ $status = "active"  ];
then
	echo "service is running fine....."
else
	echo "service is not running"
        systemctl start docker
fi
```

**crontab -e**

```bash
* * * * * /home/vagrant/docker_service_check.sh > /dev/null
```
