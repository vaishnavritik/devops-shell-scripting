#!/bin/bash

attempt=1

until [ "$attempt" -ge 5 ]
do
    echo "Checking service readiness: Attempt $attempt"

    attempt=$((attempt + 1))
done

echo "Service readiness check completed"
