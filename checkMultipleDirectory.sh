#!/bin/bash

check_directory() {

	 dir="$1"

	 if [ -d "$dir" ]; then
    		echo "$dir directory exists"
 	 else
   		 mkdir -p "$dir"
     		echo "$dir directory created"
	fi
}
check_directory dev
check_directory test
check_directory prod
