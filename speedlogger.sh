#!/bin/bash

# Define the log file location
LOG_FILE="$HOME/internet_speed_log.md"

# Get the current timestamp
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

# Run the speedtest command and capture the output
SPEEDTEST_OUTPUT=$(speedtest)

# Append the output to the log file with the required formatting
{
    echo "Timestamp: $TIMESTAMP"
    echo "--------------------------"
    echo "$SPEEDTEST_OUTPUT"
    echo "--------------------------"
    echo ""
} >> "$LOG_FILE"