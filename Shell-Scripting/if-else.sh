#!/bin/bash

h=$(date | cut -c 12,13)

if [ "$h" -le 12 ]; then

    echo " GOOD MORNING. HAVE A NICE DAY"

elif [ "$h" -gt 12 -a "$h" -le 15 ]; then

    echo "GOOD AFTERNOON"

elif [ "$h" -ge 16 -a "$h" -lt 20 ]; then

    echo " GOOD EVENING "

else

    echo " GOOD NIGHT "

fi
