#!/bin/bash
# permissions-test.sh - Test file/folder permissions

# Create a test folder
mkdir -p ~/test-folder
echo "This is a test file" > ~/test-folder/test-file.txt

# Set permissions
chmod 744 ~/test-folder/test-file.txt
chmod 755 ~/test-folder

# Display permissions
echo "Folder permissions:"
ls -ld ~/test-folder

echo "File permissions:"
ls -l ~/test-folder/test-file.txt

