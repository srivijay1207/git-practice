#!bin/bash
f_name="a1.txt"

content="we are writing code for searching words ramesh suresh"

echo "$content" > "$f_name"

if [ -e "$f_name" ]; then

echo "file '$f_name' is created"
cat "$f_name"
else

echo "file not created"
fi