#!/usr/bin/bash

i=1
while [ $i -lt 30 ]; do
    ((i++))
    if [[ $(("$i" % 5)) -ne 0 ]]; then
        continue
    fi
    echo $i
done

# ---------> For loop with individual strings

for i in "zero" "one" "two" "three" "four" "five"; do

    echo "Element_1 $i"

done

# ---------> For loop with number range

for i in {0..5}; do

    echo "Element_2 $i"

done

# ---------> For loop with letter range

for i in {a..f}; do

    echo "Element_3 $i"

done

# ---------> For loop with reverse number range

for i in {5..0}; do

    echo "Element_4 $i"

done

# ---------> For loop with range increment numbers

for i in {0..10..2}; do

    echo "Element_5 $i"

done
