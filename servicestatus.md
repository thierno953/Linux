# What is Cut command 
- The cut command in Unix is a command for cutting out the sections from each line of files and writing the result to standard output. It can be used to cut parts of line by byte position, character and field. Basically the cut command slices a line and extracts the text
```bash
cut OPTION... [FILE]...
cut -b 1,2,3
cut -c 1,2,3
```
- -f(field): -c option is useful for fixed-length lines. Most unix files doesn't have fixed-length lines. To extract the useful information we need to cut by fields rather than columns. List of the fields number specified must be separated by comma. Ranges are not described with -f option. cut uses tab as a default field delimiter but can also work with other delimiter by using -d option.
- Note: Space is not considered as delimiter in UNIX.

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
fi
```
