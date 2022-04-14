# Backup and Recovery

Scripts to create and upload backups of a directory to Google Drive and retrieve them.
## About

DCC Course Project, 6th Semester, 2022.

## Usage

- First off, install `gdrive` CLI tool and set it up.
- Create a directory titled `Backups` on your Google Drive and retrieve its ID using `gdrive list`.
- Create a `.env` file and paste the ID into it.
- Make the shell scripts executable by running `chmod +x <script>.zsh`.
- Run the upload file using `./upload.zsh` to create a backup of a directory and upload it to Google Drive.
- Download the `Backups/` directory using `./download.zsh`.
