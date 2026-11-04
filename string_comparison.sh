#!/bin/bash

environment="$1"

if [ "$environment" = "dev" ]; then
    echo "Deploying to Development"
else
    echo "Unknown environment"
fi
