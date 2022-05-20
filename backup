#!/bin/sh


# sdd trim
fstrim -a

#simple backup script
rsync -aAXHv --delete --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/home"} / /home/dark/.backup/backup1/
