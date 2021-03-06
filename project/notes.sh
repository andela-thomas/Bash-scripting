#!/bin/bash

# A simple note taking script
# Author: Thomas Nyambati

#  Get the date
date=$(date)

# Get the topic
topic=$1

# filename to write to
filename="${topic}notes.txt"
# Ask user for input
read -p "Enter your note here: " note

# check if the user added note

if [[ $note ]]; then
    echo  "$date: $note" >> "$filename"
    echo "Note '$note' has been saved to $filename"
else
    echo Note missing, cannot save empty note
fi
