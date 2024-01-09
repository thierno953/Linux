#!/bin/bash

#Script to show how to use variables

name="John"
age=20

echo "My name is $name and age is $age"

name="Paul"

echo "My name is $name"

#Var to store the output of a command
HOSTNAME=$(hostname)
echo "Name of this machine is $HOSTNAME"
