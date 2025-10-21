#!/bin/bash
# cpu-usage.sh - Display CPU usage

echo "CPU Usage:"
top -b -n1 | grep "Cpu(s)"

