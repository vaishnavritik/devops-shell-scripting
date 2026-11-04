
#!/bin/bash

# Step 1: Check whether an argument was provided
if [ $# -eq 0 ]; then
    echo "Username is missing"
    exit 1
fi

# Step 2: Store the username
username="$1"

# Step 3: Remove whitespace
username_trimmed=$(printf '%s' "$username" | tr -d '[:space:]')

# Step 4: Check whether username is empty
if [ -z "$username_trimmed" ]; then
    echo "Username is missing"
    exit 1
fi

# Step 5: Print welcome message
echo "Welcome, $username"
exit 0

