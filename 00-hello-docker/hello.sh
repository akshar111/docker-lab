#!/bin/sh
# ^ Shebang: tells the OS to run this file with /bin/sh (Alpine uses BusyBox sh).

echo "Hello from inside a container! $(date)"
# ^ Prints a message + the current time from inside the container's environment.
