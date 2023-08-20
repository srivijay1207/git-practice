#!/bin/bash

# Specify the file name
file_name="vijay.txt"

# Text to write to the file
content="Hello, this is some content that we are writing to a file."

# Use echo to write the content to the file
echo "$content" > "$file_name"

# Verify that the file was created and the content was written
if [ -e "$file_name" ]; then
    echo "File '$file_name' created with content:"
    cat "$file_name"  # Display the content
else
    echo "Failed to create the file."
fi