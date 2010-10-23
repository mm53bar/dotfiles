#dotfiles

This is where I put my bash settings for OSX.

## Installation

To set these up, just copy and paste the following:

    cd ~
    git clone git://github.com/mm53bar/dotfiles.git .dotfiles
    ln -fs .dotfiles/.autotest
    ln -fs .dotfiles/.bash_profile
    ln -fs .dotfiles/.gemrc
    ln -fs .dotfiles/.gitconfig
    ln -fs .gotfiles/.irbrc

## Sources

The git autocompletion script is directly from git itself.  You can grab it like this:

    curl http://github.com/git/git/raw/master/contrib/completion/git-completion.bash -O

## Credits

[http://iain.nl/2010/07/customizing-irb-2010-edition/](http://iain.nl/2010/07/customizing-irb-2010-edition/)

