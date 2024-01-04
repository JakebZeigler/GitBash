#!/bin/bash

# Change this to your email
YOUR_EMAIL="your_email@example.com"

# Generating SSH Key
echo "Generating SSH key..."
ssh-keygen -t rsa -b 4096 -C "$YOUR_EMAIL"

# Starting ssh-agent in the background
eval "$(ssh-agent -s)"

# Adding your SSH key to ssh-agent
ssh-add ~/.ssh/id_rsa

# Displaying SSH key
echo "Your SSH public key:"
cat ~/.ssh/id_rsa.pub
echo "Please copy the above SSH public key and add it to GitHub."

# Wait for user confirmation after adding key to GitHub
read -p "Press enter after you have added the SSH key to GitHub."

# Setting up repository SSH URL
echo "Please enter your repository's SSH URL (e.g., git@github.com:username/repository.git):"
read REPO_SSH_URL
git remote set-url origin "$REPO_SSH_URL"

# Git operations #
git add .
git commit -m "Update"
git push origin master

echo "Repository updated and pushed via SSH."
