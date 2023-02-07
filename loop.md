# For loop
- For loop contains a number of values in the list and will execute for each item in the list. For example, if there are 10 values in the list, then loop will execute ten times and each value will be stored in varname.
- Usage:
```bash
for table in 1 2 3 4
do
  echo "value in $table"
done
```
- find . -type d. =-> Check for directory type in current working directory(.)

```bash
#!/bin/bash
for folder in $(find -type d);
do
  echo "the folder is $folder"
  if [ -d test ]
  then
      echo "this folder exists"
      echo "removing the folder"
      rm -rf test
  else
      echo "test folder does not exists"
  fi
done
```
