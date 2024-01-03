# HOW TO CREATE A GIT IGNORE FILE!

# 1) If you don't already have a .gitignore file, create one:
touch .gitignore

# 2) Edit the .gitignore File:
# Open the .gitignore file with a text editor. You can use any text editor you like. 
# If you have Nano installed, you can use:
nano .gitignore

# 3) In the .gitignore file, add the following line to ignore ignore.txt or any file to ignore:
ignore.txt

# 4) Add and Commit the .gitignore File:
# Now, add the .gitignore file to your repository and commit it:
git add .
git commit -m "Add .gitignore"

# 5) Push to the Master Branch:
# Finally, push the changes to your remote repository's master branch:
git push origin master

