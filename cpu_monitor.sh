#!/bin/bash

# Accept CPU usage

cpu_usage="$1"

# Validate input
if [ $# -eq 0 ]; then
    echo "Usage: $0 <cpu_usage>"
    exit 1
fi

# Check CPU thresholds
if [ "$cpu_usage" -ge 90 ]; then
    echo "CRITICAL: CPU usage"
elif [ "$cpu_usage" -ge 80 ]; then
    echo "WARNING: CPU usage"
else
    echo "NORMAL: CPU usage"
fi

exit 0

