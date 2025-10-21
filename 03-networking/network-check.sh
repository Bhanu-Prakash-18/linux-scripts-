#!/bin/bash
# network-check.sh - Check network connectivity

echo "Checking network connectivity..."
ping -c 4 google.com &>/dev/null

if [ $? -eq 0 ]; then
    echo "✅ Internet connection is active."
else
    echo "❌ No internet connection. Please check your network settings."
fi

echo -e "\nCurrent IP address:"
hostname -I

echo -e "\nRouting table:"
route -n

