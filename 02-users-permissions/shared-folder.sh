#!/bin/bash
# shared-folder.sh - Create shared folder and set permissions

# Folder path
folder="/shared"

# Create folder if it doesn't exist
if [ ! -d "$folder" ]; then
    sudo mkdir $folder
    echo "Folder $folder created."
fi

# Set group permissions
sudo groupadd devgroup 2>/dev/null  # create group if not exists
sudo usermod -aG devgroup admin
sudo usermod -aG devgroup dev

# Set folder ownership and permissions
sudo chown root:devgroup $folder
sudo chmod 770 $folder  # admin & dev can read/write, others no access
echo "Permissions set: admin & dev can write, tester can read only"

# Allow tester read-only
sudo setfacl -m u:tester:rx $folder

