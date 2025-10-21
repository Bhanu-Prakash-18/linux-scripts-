#!/bin/bash
# permissions-test.sh - Verify folder permissions

folder="/shared"

echo "Checking permissions for $folder:"
ls -ld $folder

echo "Listing ACLs:"
getfacl $folder

