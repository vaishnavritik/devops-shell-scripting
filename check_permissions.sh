#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi
filename="$1"
echo "Checking permissions for: $filename"

if [ -e "$filename" ]; then
    echo "File exists"
	if [ -r "$filename" ]; then
    		echo "File is readable"
	else
    		echo "File is not readable"
	fi

	if [ -w "$filename" ]; then
    		echo "File is writable"
	else
    		echo "File is not writable"
	fi

	if [ -x "$filename" ]; then
    		echo "File is executable"
	else
    		echo "File is not executable"
	fi
        if [ -s "$filename" ]; then
   		 echo "File is not empty"
	else
    		echo "File is empty"
fi
else
    echo "File does not exist"
fi
