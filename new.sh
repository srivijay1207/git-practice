#!bin/bash
f-name="a1,txt"

content="we are writing code for searching words ramesh suresh"

echo"$content" > "$f-name"

if [ -e $f-name]; then

echo "file $f-name is created"
cat $f-name
else

echo "file not created"
fi
