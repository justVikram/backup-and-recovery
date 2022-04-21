#!/bin/zsh

echo "Enter path to directory you wish to backup:"
read -r path
echo "Enter name of backup file:"
read -r file
/usr/bin/tar -czvf $file.tar.gz $path > /dev/null
echo "Backup complete!"
echo "Uploading to Google Drive..."

# Get parent directory's ID from .env file
filename='.env'
while read -r line
do
    key=$line
done < $filename

/opt/homebrew/bin/gdrive upload --delete -p $key $file.tar.gz
if [ $? -eq 0 ]
then
    
    echo "Upload complete"
else
    echo "Backup failed!"
fi
