#!/bin/bash

# Read environment argument or use a default
environment="${1:-development}"

# Read AWS region argument or use a default
region="${2:-ap-south-1}"

# Read replica count argument or use a default
replicas="${3:-2}"

# Function to validate numeric input
is_number() {
    if [[ "$1" =~ ^[0-9]+$ ]]; then
        return 0
    else
        return 1
    fi
}

# Validate that replicas is numeric and within the valid range (1-100)
if ! is_number "$replicas"; then
    echo "Error: Replica count '$replicas' is not a valid number." >&2
    exit 1
fi

if [ "$replicas" -lt 1 ] || [ "$replicas" -gt 100 ]; then
    echo "Error: Replica count must be between 1 and 100 (got '$replicas')." >&2
    exit 1
fi

# Display deployment configuration
echo "Deployment Configuration"
echo "Environment: $environment"
echo "AWS Region: $region"
echo "Replicas: $replicas"

