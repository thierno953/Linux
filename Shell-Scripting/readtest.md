# Bash Read Styntax:

- Read <options> <arguments>

```bash
#!/bin/bash
read -p "What is your name: " name
read -p "Enter the password: " -s password
echo $name
echo $password
read -p "It will timeout in 3 seconds: " -t 10
```

## While loop Syntax to read a file

```bash
while read -r line;
do
   echo "$line";
done < input.file
```

```bash
#!/bin/bash
echo "Welcome to service status check script "
read -p "Enter the service name to check its status: " service_name
if [ -z $service_name ];
then
     echo " Please enter a valid service name "
else
     systemctl status $service_name
fi
```
