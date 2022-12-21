# System Monitoring 

* (df, du, free)

## df command
* Show information about the file system

```
df -h
-h Human Readable
-BM or -BG scale sizes by size
```

## du command
* Summarize disk usage of the set of FILES, recursively for directories.
```
du -h
du -h FILE/PATH
du -hc FILE/PATH for total volume
``` 
* If we want to see even size of file then use a
``` 
du -ahc FILE/PATH for total volume
-BM or -BG scale sizes by size
```

## free command
* Display amount of free and used mempry in the system
```
free
free -h
free -s N (Keep refreshing memory after N sec)
free -c N (Exit after repeating N times)
``` 


```bash
df command in linux
df command in linux with examples
disk usage linux
```

* We can use these commands to monitor the system and it's disk usage.
* For example: if the available disk on the server is less than 20% we can generate an alert etc..
* Also for the deployment of the application we must be pre aware of the available disk and RAM memory on the server.

#### example

```bash
df -h
df -h -BK
df -h -BG
du -h /home/user/folder/
du -ah /home/user/folder/
du -ahc /home/user/folder/
du -ahc -BK /home/user/folder/
```
```bash
free -h
free -h -s 3
free -h -c 4
```
