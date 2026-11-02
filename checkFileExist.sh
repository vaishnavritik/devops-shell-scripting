#!/bin/bash

check_exists() {
	if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename-or-directory>"
    exit 1
fi
    path="$1"

    if [ -e "$path" ]; then
        echo "$path exists"
    else
        echo "$path does not exist"
    fi

}

check_exists "$1"
