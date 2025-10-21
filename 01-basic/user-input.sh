#!/bin/bash
# user-input.sh - Take input from user and respond

read -p "Enter your name: " name
read -p "Enter your role (Admin/Dev/Tester): " role

echo "👋 Hello $name, welcome to the system!"
echo "Your assigned role is: $role"

