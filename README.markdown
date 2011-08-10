#dotfiles

This is where I put my bash settings for OSX.

## Installation

To set these up, just copy and paste the following:

    cd ~
    git clone git://github.com/mm53bar/dotfiles.git .dotfiles
    ln -fs .dotfiles/autotest .autotest
    ln -fs .dotfiles/bash_rc .bash_rc
    ln -fs .dotfiles/bash_profile .bash_profile
    ln -fs .dotfiles/chitrc .chitrc
    ln -fs .dotfiles/gemrc .gemrc
    ln -fs .dotfiles/gitconfig .gitconfig
    ln -fs .dotfiles/inputrc .inputrc
    ln -fs .dotfiles/irbrc .irbrc
    ln -fs .dotfiles/rvmrc .rvmrc

## Sources

The git autocompletion script is directly from git itself.  You can grab it like this:

    curl http://github.com/git/git/raw/master/contrib/completion/git-completion.bash -O

## Credits

[http://iain.nl/2010/07/customizing-irb-2010-edition/](http://iain.nl/2010/07/customizing-irb-2010-edition/)

