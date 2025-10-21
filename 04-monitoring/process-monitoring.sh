#!/bin/bash
# process-monitoring.sh - Generate a report of running processes

# Get current date and time
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

# Create a report file with timestamp
REPORT_FILE="process_report_$DATE.txt"

# List all running processes with PID, %CPU, %MEM, and COMMAND, sorted by CPU usage
ps -eo pid,cmd,%mem,%cpu --sort=-%cpu >> "$REPORT_FILE"

# Confirmation message
echo "Process report generated: $REPORT_FILE"

