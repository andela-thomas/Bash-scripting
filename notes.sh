#!/bin/bash

# A simple note taking script
# Author thomas

echo  $(date): $* >> note.text
echo Note saved: $*
