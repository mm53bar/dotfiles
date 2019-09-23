#!/bin/bash

# Installation:
#
# Clone Molly & add her to your crontab
#
# mkdir -p $HOME/bin && cd $HOME/bin && git clone git://gist.github.com/1321407.git molly
# cat <(crontab -l) <(echo "0 * * * * $HOME/bin/molly/molly.sh >/dev/null 2>&1") | crontab -
#
# Note:  the /dev/null piece in the crontab just ensures that crontab won't send an email.

# Move downloaded pictures into ~/Pictures
# find $HOME/Downloads -iname *.jpg -mtime +5 -exec mv {} $HOME/Pictures \;
# find $HOME/Downloads -iname *.png -mtime +5 -exec mv {} $HOME/Pictures \;
# find $HOME/Downloads -iname *.gif -mtime +5 -exec mv {} $HOME/Pictures \;

# Get rid of old download files
find $HOME/Downloads/*.dmg -mtime +1 -exec mv {} $HOME/.Trash/ \;
find $HOME/Downloads/* -mtime +7 -exec mv {} $HOME/.Trash/ \;

# Empty Trash once a month
find $HOME/.Trash/* -mtime +30 -exec rm -rf {} \;
