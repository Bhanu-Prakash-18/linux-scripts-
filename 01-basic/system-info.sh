#!/bin/bash
# system-info.sh - Display system information

echo "===== System Information ====="
echo "Hostname: $(hostname)"
echo "Operating System: $(grep PRETTY_NAME /etc/os-release | cut -d '=' -f2 | tr -d '\"')"
echo "Kernel Version: $(uname -r)"
echo "Uptime: $(uptime -p)"
echo "Current Date: $(date)"
echo "Logged-in User: $(whoami)"

