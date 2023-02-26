# Linux

Linux is the kernel of the system and the tool that allows us to communicate with the kernel and to access it indirectly to use it and this tool is called the shell and thanks to the shell we make sure that the commands that we will give a computer will be interpreted correctly by the kernel and that we won't have to do things as instructed to successfully access the hardware.

We can give simple commands to the "computer" and the shell communicates with the kernel to carry out its commands.

Two large families of shells:
The text shell: Bash

The graphical shell: Window, KDE, Unity

## What is Shell Scripting ?

- A shell scripting is a list of commands in a computer program that is run by the Unix shell which is a command line interpreter. A shell script usually has comments that describe the steps. The different operations performed by shell scripts are program execute, file manipulation and text printing.

## Types of shell

```shell
cat /etc/shells
```

## What is shebang in linux shell scripting ?

- **#!/bin/bash**
- This **#!** is called shebang or hashbang. The shebang plays an important role in shell scripting, specially while dealing with different types of shell.
- The shebang is the combination of the **#** (pound key) and **!** (exclamation mark). This character combination has a special meaning when it is used in the very first line of the script. It is used to specify the interpreter with which the given script will be run by default.
- So if the first line of a script is: **#!/bin/bash** it means the interpreter should be bash shell. If the first line is: this.

## How to run first script in linux ?

```shell
vi file.sh Create script

#!/bin/bash echo "Hello World"

chmod +x file.sh Permission set

./file.sh to Execute the shell script
```
