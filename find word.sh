#!/bin/bash
touch a.txt

if [ $? -ne 0 ]; then

echo "file not created pls create afile"

else

echo "file created:give the word to find "

fi

grep $i

if [ $i -ne 0 ]; then

echo "word not found in file "

else

echo " print $i "

fi

