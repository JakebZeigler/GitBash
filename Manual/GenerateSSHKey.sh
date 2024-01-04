# HOW TO GENERATE AN SSH KEY FOR GIT!
# 1) Open Git Bash and enter the following command, replacing your_email@example.com with your email:
# When prompted to "Enter a file in which to save the key," press Enter to accept the default file location.
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

# 2) Add Your SSH Key to the ssh-agent:
eval "$(ssh-agent -s)"

# 3) Then, add your SSH private key to the ssh-agent:
ssh-add ~/.ssh/id_rsa

# 4) Add Your SSH Public Key to Your GitHub Account:
# Run cat ~/.ssh/id_rsa.pub to display your SSH public key. Copy the SSH public key to your clipboard.
cat ~/.ssh/id_rsa.pub

# 5) On GitHub, go to "Settings" > "SSH and GPG keys."
# Click on "New SSH key," paste your SSH key, and save it.

# 6) Change the remote URL of your repository from HTTPS to SSH.
# Replace your-repository-url with your actual repository SSH:
git remote set-url origin git@github.com:username/repositorySSHTok.git

# 7) Now, you can push changes using SSH without being prompted to log in via a browser:
git add . && \
git commit -m "Update" && \
git push origin master
