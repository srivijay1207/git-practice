#!/bin/bash
FILE=$(touch b.txt)
PRINT=$(cat b.txt)
if [ $? -ne 0 ]; then

echo "file not created pls create afile"

else

echo "$PRINT "

fi

# vi a.txt
# ramesh
# suresh
# ramesh
# veera
# :wq!

# grep $i

# if [ $i -ne 0 ]; then

# echo "word not found in file "

# else

# echo " print $i "

# fi

