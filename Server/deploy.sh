#!/bin/sh

CONTAINER_NAME=$(hostname)

# Generate a unique log file name based on the container name
LOG_FILE="/docker-entrypoint-initdb.d/log_${CONTAINER_NAME}.txt"

# Create the log file
touch "$LOG_FILE"



python3 /docker-entrypoint-initdb.d/App.py &
