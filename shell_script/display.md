# Display or Get the name of the script.

```
echo "The name of the script is:${0}"
```
## Basename
* Print NAME with any leading directory components removed.

##### basename /home/paul/folder1/folder2/myscript.sh
Output: myscript.sh
```
echo "Name of the script is ${basename $0}"
```

## Functions
* Blog of code which perform some task and run when it is called.
* Can be reuse many times in our program which lessen our lines of code.
* We can pass arguments to the method.

### There are two ways
```
function myfun {
  echo "Hi
}

myfun() {
  echo "Hello"
}

To call the function, just use the name of the function like.

myfun
```
### Let's use the arguments/parameters in function
```
addition() {
   local num1=$1
   local num2=$2
   let sum=$num1+$num2
   echo "Sum of $num1 and $num2 is $sum"
}
myfun 12 13
```
## Shell Variables
* RANDOM - A random integer between 0 and 32767 is generated
* UID - User ID of the user logged in

##### Example of ID:
* To check if the script executed with root user or not.
```
# Generate a no, between 1 and 6
NUM=$(( $RANDOM % 6 + 1 ))
echo "Result is $NUM"
-------------------
chmod 777 dice.sh
./dice.sh
```
```
# Display if the user is root or not
if [[ $UID -eq 0 ]]
then
  echo "You are root"
else
  echo "You are not root"
fi
```
