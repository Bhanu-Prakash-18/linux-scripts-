#!/bin/bash
echo "Your IP Address:"
ip addr show | grep inet

echo "Default Gateway:"
ip route | grep default

echo "DNS Servers:"
cat /etc/resolv.conf | grep nameserver

