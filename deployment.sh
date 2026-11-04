#!/bin/bash

read -p "Enter deployment environment: " environment

echo "Starting deployment to $environment"

if [ "$environment" = "prod" ]; then
    echo "Deploying to Production..."
elif [ "$environment" = "dev" ]; then
    echo "Deploying to Development..."
else
    echo "Invalid environment"
fi
