#!/bin/bash
# file-ops.sh - Perform basic file operations

read -p "Enter filename: " filename

touch $filename
echo "✅ File '$filename' created."

echo "Adding sample text..."
echo "This is a test file created on $(date)" > $filename

echo "Creating backup..."
cp $filename ${filename}.bak
echo "✅ Backup created as ${filename}.bak"

echo "Deleting main file..."
rm -f $filename
echo "✅ File deleted. Only backup remains."

