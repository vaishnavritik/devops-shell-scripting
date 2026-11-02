#!/bin/bash

for dir in dev test prod
do
    mkdir -p "$dir"
    echo "Directory $dir created"
done
