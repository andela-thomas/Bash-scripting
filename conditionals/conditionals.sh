#!/bin/bash
#creates scripts
# This script will creat new files and sets permission

if [[ ! $1 ]]; then
    echo "Missing  argument file"
    exit 1
fi
scriptname=$1
directory="${HOME}/playground/shell"
filename="${directory}/${scriptname}"

# check if the file exists

if [[ -e $filename ]]; then
    echo "File ${filename} already exists"
    exit 1
fi

if type "$scriptname"; then
    echo "Theres is command with name ${scriptname}"
    exit 1
fi
# check if directory exists

if [[ ! -d $directory ]]; then
    # if not: create the directory
    if mkdir "$directory"; then
        echo "Created ${directory}"
    else
        echo "Could not create ${directory}"
        exit 1
    fi
fi

# create a script

echo '#!/bin/bash'> "$filename"
# add executable
chmod u+x "$filename"
exit 0
