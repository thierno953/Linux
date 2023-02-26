## Write a shell script which accepts a command line arguments and install many software:

 **Prerequisite:**

- For loop, command line arguments and exit status

```bash
for variable in list
do
  command
done
```

## what is exit status in shell scripting?

- Every linux or Unix command executed by shell script or user, has an exit status.
- The exit status is an integrer number.
- For the bash shell's purposes, a command which exits with a zero (0) exit status has succeeded.
- A non-zero (1-255) exit status indicates failure.
- If a command is not found, the child process created to execute it returns a status of 127. If a command is found but is not executable, the return status is 126.
- All of the Bash builtins return exit status of zero if they succeed and a non-zero status on fialure.

## What are Command-line Arguments?

- Command-line arguments are parameters that are passed to a script while executing them in the bash shell.
- They are also known as positional parameters in linux.
- We use command-line arguments to denote the position in memory where the command and it's associated parameters are stored. Understanding the command-line arguments is essential for people who are learning shell scripting.

## Command Line arguments Continued...

```bash
Special Variable|         Special Variable's details
----------------|-------------------------------------------------------------------------------------------------------------------------------
$1 ... $n       |         Positional argument indicating from 1 ..n. If the argument is like 10, 11 onwards, it has to be indicated as ${10},${11}
----------------------------------------------------------------------------------------------------------------------------------------------------
$0              |This is not taken into the argument list as this indicates the "name" of the shell program. In the above example, $0 is "disPlyArgum.sh"
-----------------------------------------------------------------------------------------------------------------------------------------------------
$@             |Values of the arguments that are passed in the program. This will be much helpful if we are not sure about the number of arguments.
--------------------------------------------------------------------------------------------------------------------------------------------------------
$#              | Total number of arguments and it is a good approach for loop concepts.
-------------------------------------------------------------------------------------------------------------------------------------------------------
$*              | In order to get all the arguments as double-quoted, we can follow this way
--------------------------------------------------------------------------------------------------------------------------------------------------------
$$              | To know about he process id of the current shell
-------------------------------------------------------------------------------------------------------------------------------------------------------
$? and $!       | Exit status id and Process id of the last command
--------------------------------------------------------------------------------------------------------------------------------------------------------
```

```bash
#!/bin/bash
echo "This is my shell script name: $0"
echo "This is my first passed to my script: $1"
echo "This is my second passed to my script: $2"
echo "This is my third passed to my script: $3"
```

```bash
#!/bin/bash
#Installing mutliple packages

if [[ $# -eq 0 ]]
then
  echo "Usage: please provide software names as command line arguments"
  exit 1
fi


if [[ $(id -u) -ne 0 ]]
then
  echo "Please run from root user or with sudo privilage"
  exit 2
fi


for softwares in $@
do
  if which $softwares &> /dev/null
  then
     echo "Already $softwares is installed"
  else
     echo "Installing $softwares ......"
     yum install $softwares -y &> /dev/null
     if [[ $? -eq 0 ]]
     then
       echo "Successfully installed $softwares packages"
     else
       echo "Unable to install  $softwares"
     fi
  fi

done
```
