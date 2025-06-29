#!/bin/sh

# Determine the directory where this script lives (the dotfiles repo)
DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# Create ~/.gitconfig.personal from example if it doesn't exist
if [ ! -f "$HOME/.gitconfig.personal" ] && [ -f "$DOTFILES_DIR/git/dot-gitconfig.personal.example" ]; then
  cp "$DOTFILES_DIR/git/dot-gitconfig.personal.example" "$HOME/.gitconfig.personal"
  echo "Created ~/.gitconfig.personal from example."
fi
fi

# Create ~/.gitconfig.work from example if it doesn't exist
if [ ! -f "$HOME/.gitconfig.work" ] && [ -f "$DOTFILES_DIR/git/dot-gitconfig.work.example" ]; then
  cp "$DOTFILES_DIR/git/dot-gitconfig.work.example" "$HOME/.gitconfig.work"
  echo "Created ~/.gitconfig.work from example."
fi
fi

# Create ~/.env.local from example if it doesn't exist
if [ ! -f "$HOME/.env.local" ] && [ -f "$DOTFILES_DIR/zsh/dot-env.local.example" ]; then
  cp "$DOTFILES_DIR/zsh/dot-env.local.example" "$HOME/.env.local"
  echo "Created ~/.env.local from example."
fi
fi

echo "after-stow.sh complete."
