#!/bin/bash
# Script to create a .gitignore file and update it

# Navigate to your project directory
# Replace with your actual project directory path
PROJECT_DIRECTORY="C:/PATH/"
cd $PROJECT_DIRECTORY || exit

# Check if .gitignore file exists
if [ ! -f ".gitignore" ]; then
    # Create a new .gitignore file
    touch .gitignore
    echo "Created .gitignore file."
else
    echo ".gitignore file already exists."
fi

# Ask user for files to ignore
echo "Enter the filenames to ignore (separated by space):"
read -ra ignore_files

# Add files to .gitignore
for file in "${ignore_files[@]}"; do
    echo "$file" >> .gitignore
done

# Add and commit the .gitignore file
git add .gitignore
git commit -m "Add .gitignore"

# Push to the master branch
git push origin master

echo ".gitignore file updated and pushed to master branch."

# Run the script using 
# ./script_name.sh