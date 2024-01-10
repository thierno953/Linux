# Linux SHELL 

A shell provide an environment to a user to execute commands and interact with kernel.

**There are different types of shell**

bash, sh, ksh, tsh, fish, zsh

**How to run a script**
Make sure script has execute permission **rwx**

- Run using 

```
vi script.sh         #Create script

#!/bin/bash echo "Hello World"

chmod +x script.sh   #Permission set.

./script.sh          #To Execute the shell script
```