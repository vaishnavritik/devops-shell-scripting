#!/bin/bash

environment="$1"

if [[ "$environment" == prod* ]]; then
    echo "Production environment"
else
    echo "Non-production environment"
fi
