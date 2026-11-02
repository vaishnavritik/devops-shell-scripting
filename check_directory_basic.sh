#!/bin/bash

if [ -d "test" ]; then
    echo "Directory already exists"
else
    mkdir test
    echo "Directory created successfully"
fi
