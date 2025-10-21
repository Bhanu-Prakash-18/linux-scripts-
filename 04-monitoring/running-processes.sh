#!/bin/bash
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
REPORT_FILE="process_report_$DATE.txt"                          # report file

ps  -eo  pid,cmd,%mem,%cpu --sort=-%cpu >> "$REPORT_FILE"       #  List all running processes with PID, %CPU, %MEM, and COMMAND
