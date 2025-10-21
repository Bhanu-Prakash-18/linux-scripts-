#!/bin/bash
# cleanup.sh - Remove files older than 7 days

target_folder="$HOME/testfolder_backup"

echo "Cleaning up files older than 7 days in $target_folder..."
find $target_folder -type f -mtime +7 -exec rm {} \;

echo "Cleanup completed."

