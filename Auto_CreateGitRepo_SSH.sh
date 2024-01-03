
# HOW TO CREATE AND INIT NEW GIT REPO!

# Replace with your actual GitHub username and email
GITHUB_USERNAME="your_github_username"
GITHUB_EMAIL="your_email@email.com"
REPOSITORY_NAME="your_repository_name"
PROJECT_DIRECTORY="C:/PATH/TO/YOUR/PROJECT"

# Navigate to your project directory
cd $PROJECT_DIRECTORY || exit

# Initialize the repository
git init

# Configure Git username and email (one-time setup)
git config --global user.name "$GITHUB_USERNAME"
git config --global user.email "$GITHUB_EMAIL"
git config --global push.default matching
git config --global alias.co checkout

# Add files to the repository
git add .

# Commit the files staged in your local repository
git commit -m "Initial commit."

# Add SSH remote repository URL
git remote add origin git@github.com:$GITHUB_USERNAME/$REPOSITORY_NAME.git

# Verify new remote URL
git remote -v

# Push changes in your local repository to GitHub
git push -u origin master

# Function to create a new branch and switch to it
create_new_branch() {
    read -p "Enter the new branch name: " branch_name
    git checkout -b "$branch_name"
    echo "Switched to new branch: $branch_name"
}

# Function to update the master branch
update_master_branch() {
    git add .
    git commit -m "Update"
    git push origin master
}

# Uncomment the following line to create a new branch and switch to it
# create_new_branch

# Uncomment the following line to update the master branch
update_master_branch

echo "Repository setup complete."

# Make the script executable by running chmod +x script_name.sh in Git Bash