#! /bin/bash

# To declare static Array

arr=(A passionate DevOps Engineer)

# To print all values of array

echo "${arr[@]}"
echo "${arr[*]}"
echo "${arr[@]:0}"
echo "${arr[*]:0}"
echo "${arr[@]:2}"
echo "${arr[0]}"
echo "${arr}"
echo "${arr[3]}"
echo "${arr[5]}"
echo "${arr[2]}"
echo "${arr[@]:0}"
echo "${arr[@]:1}"
echo "${arr[@]:2}"
echo "${arr[0]:1}"
echo "${arr[@]:1:4}"
echo "${arr[@]:2:3}"
echo "${arr[@]:1:3}"
echo "${#arr}"
x=(1 5 7 8 4 2 3 7 5 6 2 1 7 76 77)
echo ${#x}
echo ${#x[*]}
echo "${arr[@]/*[aA]*/}"
echo "${arr[@]//a/A}"
echo "${arr[@]}"
echo "${arr[0]//r/R}"
