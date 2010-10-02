EPHALENT_IP=10.0.1.4
rsync -avu -e "ssh -l admin" ~/Music/mp3/ admin@$EPHALENT_IP:/volume1/music/
rsync -avu -e "ssh -l admin" ~/Documents/ admin@$EPHALENT_IP:/volume1/homes/gaz/documents/
rsync -avu -e "ssh -l admin" ~/Pictures/Photographs/ admin@$EPHALENT_IP:/volume1/photo/
rsync -avu -e "ssh -l admin" ~/Library/Application\ Support/1Password/Backups/ admin@$EPHALENT_IP:/volume1/homes/gaz/backups/1password/

# back up documents to dropbox also, excluding peepcode stuff
rsync -avu --exclude *.mov --exclude *.zip --exclude *.m4v ~/Documents/computer_science/ ~/Dropbox/computer_science/

