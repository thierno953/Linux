#!/bin/bash
echo "To get first 10 biggest file in the file system passed"
path="$1"
echo $path
du -ah $path | sort -hr | head -n 5 >/tmp/filesize.txt
echo "This is the list of big files in the file system $path "
cat /tmp/filesize.txt
