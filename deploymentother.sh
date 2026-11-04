#!/bin/bash

read -p "Enter environment: " environment

if [ "$environment" = "dev" ]; then
    echo "Development deployment started"

elif [ "$environment" = "prod" ]; then
    echo "Production deployment started"

else
    echo "Invalid environment"
fi
