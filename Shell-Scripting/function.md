# Function in shell scripting

- A function is a block of code that is reusable and performs certain operations. Like any other programming language, Shell-Scripting also supports functions. Functions are popular for the following reason:
- a) - Help to reuse a piece of code
- b) - Improvise the readability of the program.
- c) - Make the program modular.
- d) - Make maintenace easier.

```bash
function funtion_name {
    commands/statements
}

funtion_name() {
    commands/statements
}
```

# Case statement in shell scripting

- You can use multiple "if..elif" statements to perform a multiway branch. However, this is not always the best solution, especially when all of the branches depend on the value of a single variable.
- Shell support "case--esac" statement which handles exactly this situation, and it does so more efficiently than repeated "if..elif" statements.

## Case statement continued...

```bash
case word in
   pattern1)
      Statement(s) to be exacuted if pattern1 matches
      ;;
   pattern2)
      Statement(s) to be exacuted if pattern2 matches
      ;;
   pattern3)
      Statement(s) to be exacuted if pattern3 matches
      ;;
   *)
      Default condition to be executed
      ;;
esac
```

```bash
#!/bin/bash
clear
echo "--------------------------------"
echo "--------welcome to calculator---"
echo "--------------------------------"
echo -e "[a]addition\n[b]Subtraction\n[c]Multiplication\n[d]Division\n"
read -p "Enter your choice: " choice
case $choice in
   [aA])
        read -p "Enter first number: " num1
        read -p "Enter second number: " num2
        result=$((num1+num2))
        echo "The result for your choice is: $result"
        ;;
   [bB])
        read -p "Enter first number: " num1
        read -p "Enter second number: " num2
        result=$((num1-num2))
        echo "The result for your choice is: $result"
        ;;
   [cC])
        read -p "Enter first number: " num1
        read -p "Enter second number: " num2
        result=$((num1*num2))
        echo "The result for your choice is: $result"
        ;;
   [dB])
        read -p "Enter first number: " num1
        read -p "Enter second number: " num2
        result=$((num1/num2))
        echo "The result for your choice is: $result"
        ;;
    *)
       echo "Wrong choice"
       ;;
esac
```
