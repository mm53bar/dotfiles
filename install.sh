ln -fs ~/.dotfiles/autotest ~/.autotest
ln -fs ~/.dotfiles/bashrc ~/.bashrc
ln -fs ~/.dotfiles/bash_profile ~/.bash_profile
ln -fs ~/.dotfiles/chitrc ~/.chitrc
ln -fs ~/.dotfiles/gemrc ~/.gemrc
ln -fs ~/.dotfiles/gitconfig ~/.gitconfig
ln -fs ~/.dotfiles/inputrc ~/.inputrc
ln -fs ~/.dotfiles/irbrc ~/.irbrc
ln -fs ~/.dotfiles/rvmrc ~/.rvmrc
ln -fs ~/.dotfiles/gitignore ~/.gitignore
ln -fs ~/.dotfiles/ruby-version ~/.ruby-version

mkdir -p ~/.bundle
ln -fs ~/.dotfiles/bundle_config ~/.bundle/config

[ ! -h ~/.bash_profile.d ] && ln -fs ~/.dotfiles/bash_profile.d/ ~/.bash_profile.d
[ ! -e ~/.bash_profile.d/private/ ] && mkdir ~/.bash_profile.d/private/


