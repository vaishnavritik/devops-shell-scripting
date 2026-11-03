# Bash Functions: `return` vs `exit`

## 1. `return`

- `return` terminates the **current function**.
- It returns control to the command or script that called the function.
- It sets the function's exit status (conventionally, `0` means success and non-zero means failure).
- The script continues unless the caller decides to stop it.

### Example

```bash
#!/bin/bash

check_directory() {
    if [[ ! -d "/app" ]]; then
        echo "Directory not found"
        return 1
    fi

    echo "Directory exists"
    return 0
}

check_directory
echo "Script continues"
```

If `/app` does not exist, the function prints `Directory not found`, returns status `1`, and the script continues to print `Script continues`.

You can inspect the function's status using `$?` immediately after calling it:

```bash
check_directory
status=$?
echo "Function exit status: $status"
```

## 2. `exit`

- `exit` terminates the **entire shell script**.
- It does not just leave the current function.
- It returns an exit status to the calling shell or process.

### Example

```bash
#!/bin/bash

check_directory() {
    if [[ ! -d "/app" ]]; then
        echo "Directory not found"
        exit 1
    fi

    echo "Directory exists"
}

check_directory
echo "This line runs only if the script has not exited"
```

If `/app` does not exist, `exit 1` terminates the script. The final `echo` is not executed.

## 3. Key differences

| `return` | `exit` |
|---|---|
| Ends the current function | Ends the entire script |
| Returns control to the caller | Terminates the current shell process/script |
| Sets the function's status | Sets the script's exit status |
| Useful when a function reports success or failure | Useful when the whole script must stop |

## 4. DevOps use case

In a deployment script, a function might check whether a required directory exists.

- Use `return 1` when the function detects a problem and lets the main script decide what to do.
- Use `exit 1` when the script itself must stop because continuing would be unsafe.

Example of the caller making the decision:

```bash
check_directory() {
    [[ -d "/app" ]]
}

if check_directory; then
    echo "Continuing deployment"
else
    echo "Deployment cannot continue"
    exit 1
fi
```

## Remember

> `return` leaves a function. `exit` leaves the script.

**Important:** `return` is intended for functions (and sourced scripts). Do not use it as a general replacement for `exit` in a standalone script.
