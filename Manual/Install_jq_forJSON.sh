#!/bin/bash

# jq Installation Instructions for Windows using Git Bash

# Step 1: Start Git Bash

# Step 2: Create a directory /usr/local/bin in Git Bash
mkdir -p "${EXEPATH}/usr/local/bin"

# Step 3: Download the jq executable for Windows and copy it to the /usr/local/bin directory
curl -L -o /usr/local/bin/jq.exe \
     https://github.com/stedolan/jq/releases/latest/download/jq-win64.exe

# Step 4: After downloading, check the jq version
jq --version

# Note: If you don't have permission to run these commands, start Git Bash as an administrator.
