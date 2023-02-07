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
