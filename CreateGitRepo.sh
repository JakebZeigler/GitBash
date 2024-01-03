# HOW TO CREATE AND INIT NEW GIT REPO!

# 1) Open Git Bash and navigate to your project directory:
cd C:/PATH/

# 2) Then, initialize the repository:
git init

# 3) Configure your Git username and email (this is a one-time setup):
git config --global user.name "username" && \
git config --global user.email "email@email.com" && \
git config --global push.default matching && \
git config --global alias.co checkout

# 4) After initializing your repository, add files to it:
git add .

# 5) Commit the files that you've staged in your local repository:
git commit -m "Initial commit."

# 6) Create a New Repository on GitHub:
# Go to GitHub.
# In the upper-right corner, next to your avatar or identicon, click the '+' sign and then select "New repository."
# Name your repository, add a description (optional), and choose to make the repository either public or private.
# Click "Create repository."

# 7) After creating the repository on GitHub, you will see instructions to link your local repository.
# Replace https://github.com/username/new-repo.git with the URL provided by GitHub.
git remote add origin https://github.com/username/GitBash.git

# 8) If you haven’t done so already, change the remote URL to include your correct GitHub username:
git remote set-url origin https://username@github.com/username/repositoryName.git

# 9) Push the changes in your local repository to GitHub:
git push -u origin master

# 10) If you want to create a new branch and switch to it, use:
git checkout -b new-branch-name

# 11) If you want to update the master branch, use:
git add . && \
git commit -m "Update" && \
git push origin master
