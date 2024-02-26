#!/bin/bash

export INVENTORY_FILE="/etc/ansible/hosts"

# Define the path to the inventory file
INVENTORY_FILE="/etc/ansible/hosts"

# Fetch and add SSH keys for all hosts in the inventory
while IFS= read -r host; do
    ssh-keyscan -H "$host" >> ~/.ssh/known_hosts
done < "$INVENTORY_FILE"
