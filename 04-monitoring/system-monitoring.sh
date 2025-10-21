#!/bin/bash
# system-monitoring.sh - Generate CPU and Memory usage report

# Get current date and time
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

# Create a report file with timestamp
REPORT_FILE="system_report_$DATE.txt"

# CPU Usage
echo "CPU Usage:" >> "$REPORT_FILE"
top -b -n1 | grep "Cpu(s)" >> "$REPORT_FILE"

# Memory Usage
echo -e "\nMemory Usage:" >> "$REPORT_FILE"
free -h >> "$REPORT_FILE"

# Confirmation message
echo "Report generated: $REPORT_FILE"

