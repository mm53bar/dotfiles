realpath() {
  [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

safe_link(){
  local src="$1"
  local dest="$HOME/`basename $src`"
  [ ! -e "$dest" ] && ln -sf "$src" "$dest"
}

SCRIPT_PATH=`realpath $0`
DOTFILES=`dirname $SCRIPT_PATH`

echo "Install bin/ directory"

safe_link "$DOTFILES/bin"

echo "Installing dotfiles"

for symlink in autotest bashrc bash_profile chitrc gemrc gitconfig gitmessage \
	       inputrc irbrc rvmrc gitignore ruby-version hammerspoon
do
  echo " symlink: ~/.$symlink"
  rm -rf ~/.$symlink
  ln -s $PWD/$symlink ~/.$symlink
done

echo "installing Espanso config"

ln -fs "$PWD/espanso" "$HOME/Library/Preferences/espanso"

echo "Installing .bundle/config"

mkdir -p ~/.bundle
ln -fs ~/.dotfiles/bundle_config ~/.bundle/config

echo "Installing Brewfile"

rm ~/Brewfile
ln -s $PWD/Brewfile ~/Brewfile

echo "Installing other config files"

mkdir -p ~/.config

mkdir ~/.config/youtube-dl
ln -fs $PWD/youtube-dl ~/.config/youtube-dl/config

mkdir ~/.config/karabiner
ln -fs $PWD/karabiner.json ~/.config/karabiner/karabiner.json

echo "Installing .bash_profile.d"

[ ! -h ~/.bash_profile.d ] && ln -fs ~/.dotfiles/bash_profile.d/ ~/.bash_profile.d

echo "Initializing .bash_profile.d/private and .gitconfig.local"

[ ! -e ~/.bash_profile.d/private/ ] && mkdir ~/.bash_profile.d/private/
[ ! -f ~/.gitconfig.local ] && cp ~/.dotfiles/gitconfig.local.example ~/.gitconfig.local

echo ""

echo "Good work. We're ready to rock. Be sure to update ~/.gitconfig.local"

