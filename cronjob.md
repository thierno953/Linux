# Crontab command

* Used to schedule commands to be executed periodically.
* Crontab uses a daemon, crond, which keeps running in background and checks once a minute to see if any of the scheduled jobs need to be executed.

### Cron Jobs

* crontab -l (to show all the current jobs)
* crontab -e (to edit or add new jobs)

## Cron Job Format

* * * * * cd /home/paul/scripts && ./create_file.sh
-       -
-       -
---------
Schedule
expression

```
 *                *                  *                          *                  *
minunte(0-59)    hour (0-23)      day of mounth(1-31)     mounth(1-12)      day of week (0-6) (Sunday = 0)

```

```

#!/bin/bash
touch file.sh

date

crontab -e

21 16 * * * cd /home/paul/scripts && ./create_file.sh

date
```
