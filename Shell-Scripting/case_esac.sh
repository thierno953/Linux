#!/bin/bash
#case statement
vehicle=$1

case $vehicle in
"car")
   echo " Rent of $vehicle is 100 dollars "
   ;;
"van")
   echo " Rent of $vehicle is 80 dollars "
   ;;
"bike")
   echo " Rent of $vehicle is 30 dollars "
   ;;
"bicycle")
   echo " Rent of $vehicle is 5 dollars"
   ;;

*)
   " $vehicle unknown vehicle "
   ;;
esac
