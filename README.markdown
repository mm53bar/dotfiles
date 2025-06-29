# dotfiles

This is where I keep my shell and development environment configuration for macOS.

## Installation

Clone the repo:

```shell
cd ~
git clone git://github.com/mm53bar/dotfiles.git .dotfiles
```

If you don't have Homebrew installed, install it first:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

You can install all packages listed in your Brewfile with:

```sh
brew bundle
```

To install all your dotfiles with [Stow](https://www.gnu.org/software/stow/), run:

```sh
cd ~/.dotfiles
stow git homebrew mise ruby zed zsh
```

## Oh My Zsh

If you don't have Oh My Zsh installed, install it with:

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Personal Config

Some configuration files contain sensitive or machine-specific information that you don't want to commit to your dotfiles repo. Examples include:

- `~/.gitconfig.personal`: your personal Git name, email, and signing key
- `~/.gitconfig.work`: your work Git name, email, and signing key
- `~/.env.local`: API keys, secrets, and environment variables for your shell

These files are useful because they keep your secrets and identity separate from your public dotfiles, making your setup portable and secure.

After installation, run the provided `after-stow.sh` script to automatically copy example files for your personal config (if they don't already exist):

    ~/.dotfiles/after-stow.sh

Edit these files to add your real information and secrets as needed.
