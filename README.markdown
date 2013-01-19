#dotfiles

This is where I put my bash settings for OSX.

## Installation

To set these up, just copy and paste the following:

    cd ~
    git clone git://github.com/mm53bar/dotfiles.git .dotfiles
    chmod u+x .dotfiles/install.sh
    .dotfiles/install.sh
    source .bash_profile

## Extra Config

Add your git info (email & name) to ~/.gitconfig.local.

## Sources

The git autocompletion script is directly from git itself.  You can grab it like this:

    curl http://github.com/git/git/raw/master/contrib/completion/git-completion.bash -O

## Credits

[http://iain.nl/2010/07/customizing-irb-2010-edition/](http://iain.nl/2010/07/customizing-irb-2010-edition/)

