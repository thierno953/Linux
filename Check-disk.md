- var=$(command-name-here)
- Var=`command-name-here`
- AWK and Cut command basics
- Read a file content
- Grep command
-----------------
Read a file content?
-----------------
Read a file content by opening it
```bash 
using vi / vim / nano editors .
```
Read a file content without opening it
```bash 
using cat, less, more .
```
Read a file content with conditions
```bash 
using more, tail, grep, awk, sed.
```
-----------------
Read a file content with conditions...
-----------------
More command example:
```bash 
more -n filename.txt

Displays text upto specified line
```
Read +n filename.txt
```bash 
The text is displayed from the specified line
```
head command Example:
```bash 
head filename
```
By default head command reads top 10 lines from a file
```bash 
head -n filename

This option displays the top n number of lines of the document
```
tail command Example:
```bash 
tail filename
```
By default tail command reads last 10 lines from a file
```bash 
tail -n filename
```
This option displays the last n number of lines of lines of the document

-----------------
awk command
-----------------
- The awk command is a powerful method for processing or analyzing text or data files, which are organized by lines (rows or records) and columns(fileds).
- We can use awk as a linux command and alson as a scripting language like bash shell scripting.
- Simple awk command syntax:
```bash 
       awk[options] '[selection_criteria] {action}' input-file
       cat input-file | awk [options]'[selection_criteria] {action}' input-file
       Awk can take the following options:
           -F fs  To specific a field separator: (Default separator is tab and space)
           -f file  To specific a file that contains awk script.
           -v var=value   To declare a variable.
       Selection criteria: pattern/condition
       Action: It is a logic to perform action on each row/record
```

```bash 
#!/bin/bash
echo "Check disk usage in Linux system"
disk_size=`df -h grep "/dev/sda3"|awk '{print $5}'|cut -d '%' -f 1`
echo "$disk_size% of disk is failled"
then 
    echo "disk is utilized more than 80%, expand disk or delete files soon"
else
    echo "enaugh disk is available"
if
```
-----------------
du command
-----------------
- The du command is a standard Linux/Unix command that allows a user to get disk usage information quickly.
- Flags:
- -> -h : The -h flag prints size outputs ,in a human-readable format.
- -> -a : It lists the sizes of all files and directories in the given file path.
- Usage:
- du -ah /tmp : It list the size of all files and directory in the path /tmp in human readable format. 

-----------------
Sort command
-----------------
- SORT command is used to a file, arranging the records in a particular order.
- Flags:
- -> sort -n : Sort the file the in numerical order(less to more)
- -> sort -r : Prints the output in reverse order.
- -> sort -h : --human-numeric-sort (compare human readable numbers)
- -> sort -hr : Combined together it compares according to the string numerical value and reverses the result of comparison.
----------------

-----------------
- Command-line arguments are parameters that are passed to a script while executing them in the bash shell. They are also known as positional parameters in linux.
- Let's say I am running the running the script as:
- ./commandlinearguments.sh devops techstack learning.
```bash 
How to Access arguments? |                 Description
-------------------------|---------------------------------
$0                       |  Script Name 
$1                       |  First Parameter of the script
$@                       |  Complete list of argument
$#                       |  Total number of parameters
$$                       |  Process id of the script
$?                       |  Exit code for the script
```
