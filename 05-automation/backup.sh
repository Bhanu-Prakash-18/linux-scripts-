#!/bin/bash
# backup.sh - Simple folder backup script

source_folder="$HOME/testfolder"
backup_folder="$HOME/testfolder_backup"

# Create backup folder if it doesn't exist
mkdir -p $backup_folder

# Copy all files
cp -r $source_folder/* $backup_folder/

echo "Backup completed from $source_folder to $backup_folder"

