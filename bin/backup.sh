EPHALENT_IP=10.0.1.4
rsync -avu --delete --exclude='@eaDir' -e "ssh -l admin" ~/Music/mp3/* admin@$EPHALENT_IP:/volume1/music/gaz/
rsync -avu --delete -e "ssh -l admin" --exclude=".crypt" ~/Documents/ admin@$EPHALENT_IP:/volume1/homes/gaz/documents/
rsync -avu --exclude='@eaDir' --exclude='mollys_pictures' -e "ssh -l admin" ~/Pictures/Photographs/ admin@$EPHALENT_IP:/volume1/photo/
rsync -avu -e "ssh -l admin" ~/Pictures/aperture_projects/ admin@$EPHALENT_IP:/volume1/homes/gaz/backups/aperture_projects/
rsync -avu -e "ssh -l admin" ~/Library/Application\ Support/1Password/Backups/ admin@$EPHALENT_IP:/volume1/homes/gaz/backups/1password/

## back up documents to dropbox also, excluding peepcode stuff
rsync -avu --exclude *.mov --exclude *.zip --exclude *.m4v ~/Documents/computer_science/ ~/Dropbox/computer_science/

