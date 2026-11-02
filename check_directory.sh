#!/bin/bash

dev_directory_exists(){

	if [ -d "dev" ]; then
		 echo "Dev directory exists"
	else
	   mkdir "dev"
	   echo "dev directory created"
	fi
}
dev_directory_exists
