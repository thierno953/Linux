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
### Use the arguments/parameters in function
```
addition() {
   local num1=$1
   local num2=$2
   let sum=$num1+$num2
   echo "Sum of $num1 and $num2 is $sum"
}
myfun 12 13
```
