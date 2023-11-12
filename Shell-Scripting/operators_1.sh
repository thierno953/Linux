#!/bin/bash

# -eq ---> [ $a -eq $b ] is not true.
# -ne ---> [ $a -ne $b ] is true.
# -gt ---> [ $a -gt $b ] is not true.
# -lt ---> [ $a -lt $b ] is true.
# -ge ---> [ $a -ge $b ] is not true.
# -le ---> [ $a -le $b ] is true.

echo " Enter two numbers : "

read n1 n2

if [ $n1 -gt $n2 ]; then

    echo " $n1 is gt $n2 "

else

    echo " $n1 is not gt $n2 "

fi

if [ $n1 -ne $n2 ]; then

    echo " $n1 is ne $n2 "

else

    echo " $n1 is equal $n2 "

fi

if [ $n1 -eq $n2 ]; then

    echo " $n1 is eq $n2 "

else

    echo " $n1 is notequal $n2 "

fi
