
# Script to update the master branch in a Git repository

# Navigate to your project directory
# Replace with your actual project directory path
PROJECT_DIRECTORY="C:/PATH/"
cd $PROJECT_DIRECTORY || exit

# Prompt user for a commit message
read -p "Enter your commit message: " commit_message

# Add all changes to the staging area
git add .

# Commit the changes
git commit -m "$commit_message"

# Push the changes to the master branch
git push origin master

echo "Master branch updated successfully."

# Run the script by navigating to its directory and executing ./script_name.sh