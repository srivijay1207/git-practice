#!/bin/bash

# Check if the user provided a filename as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename="$1"

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "File not found: $filename"
    exit 1
fi

# Use awk to split the text into words and count their frequencies
awk '{
    # Iterate through each word on the line
    for (i = 1; i <= NF; i++) {
        # Remove non-alphanumeric characters and convert to lowercase
        word = tolower($i)
        gsub(/[^a-zA-Z0-9]/, "", word)
        
        # Increment the frequency counter for this word
        if (word != "") {
            words[word]++
        }
    }
}
END {
    # Print the words and their frequencies
    for (word in words) {
        print word, words[word]
    }
}' "$filename" | sort
