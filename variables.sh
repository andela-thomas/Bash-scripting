#!/bin/bash

# Bash variables
#Author : Thomas Nyambati

#  Get the date
date=$(date)

# Get the topic
topic=$1

# filename to write to
filename="${topic}notes.txt"

echo "Note has been saved to $filename"
