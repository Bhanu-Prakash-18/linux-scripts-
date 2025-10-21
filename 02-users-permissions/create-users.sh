#!/bin/bash
# create-users.sh - Create Linux users for DevOps practice

# Users to create
users=("admin" "dev" "tester")

for user in "${users[@]}"
do
    if id "$user" &>/dev/null; then
        echo "User $user already exists."
    else
        sudo useradd -m $user
        echo "User $user created."
    fi
done

