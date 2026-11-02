
#!/bin/bash

if [ -f "hello.sh" ]; then
    echo "hello.sh is a regular file"
elif [ -d "hello.sh" ]; then
    echo "hello.sh is a directory"
else
    echo "hello.sh does not exist"
fi
