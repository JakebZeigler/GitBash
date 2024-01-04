# Load configurations from JSON file using a relative path
$config = Get-Content -Path "../config.json" | ConvertFrom-Json

# Extract values from JSON configuration
$gitBashPath = $config.gitBashPath
$ignoreDirectory = $config.ignoreDirectory

# Command to run in Git Bash
$bashCommand = "-c 'cd $ignoreDirectory && ./UpdateGitRepoIgnore.sh && exec bash'"

# Run the Bash script using Git Bash and wait for it to finish
Start-Process -FilePath $gitBashPath -ArgumentList $bashCommand -Wait

# Close the PowerShell window after the Git Bash script finishes
Start-Process -FilePath $gitBashPath -ArgumentList $bashCommand -Wait
exit