#!/bin/bash

echo "Using double quoted @"

for arg in "$@"
do
    echo "$arg"
done

echo "----------------"

echo "Using double quoted *"

for arg in "$*"
do
    echo "$arg"
done
