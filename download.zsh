#!/bin/zsh

echo "Now downloading Backups folder to your local machine..."

# Get parent directory's ID from .env file
filename='.env'
while read -r line
do
    key=$line
done < $filename

/opt/homebrew/bin/gdrive download --recursive $key
echo "Download complete!"
