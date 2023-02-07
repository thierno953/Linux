# Shell Scripting 
## Prerequisite:
### What is Variable in shell scripting ?
- a) - A shell variable is a character string in shell that stores some value. It could be an integer, filename, string or some shell command itself. Basically, it is a pointer to the actual data stored in memory.
- b) - Assigning a value to a variable: To assign a value to a variable, use the assignment operator (=). For example, to assign the value "devops" to a variable named "name", the syntax would be: name="devops".
- c) - Using a variable in a command: To use a variable in a command, prefix the variable name with a dollar sign ($). For example, to print the value of the "name" variable, the syntax would be: echo $name.
- d) - Performing operations on variables: We can perform operations on variables, such as arithmetic operations on numerical variables, or concatenation of strings. For example, to add the values of two numerical variables "a" and "b", the syntax would be: c=$((a + b)).
- e) - Using specific variables: Shell scripting also supports special variables such as $0, which refers to the name of the script, $1, $2, $3, etc which refer to the first, second, third, etc command-line arguments passed to the script and $#, which gives the number of command-line arguments passed to the script.
- 
#### What is If-Else in shell scripting ?
- In shell scripting, the if-else statement is used to make decisions based on the values of variables or the results of commands.The basic syntax of an if-else statement is as follows.
- if [ condition ]; then
-     commands
- else
-     commands
- fi
- - It's also possible to use elif (else if) statement which allows you to chain several conditions together. The syntax for using elif is:
- if [ condition1 ]; then
-     commands
- else [condition2 ]; then
- else
-     commands
- fi
```shell
#!/bin/bash
echo "script to install git "
echo "Installation started"
if [ "$(uname)" == "Linux" ];
then
        echo "this is linux box,installing git"
        yum install git -y
elif [ "$(uname)" == "Darwin" ];
then
        echo "this is not linux box"
        echo "this is Macos"
        brew install git
else
        echo "not installing"
fi
```
