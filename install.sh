#!/bin/bash

# Variables

DOTFILES_DIR=~/dotfiles # dotfiles directory

# Symlinks

ln -sfv "$DOTFILES_DIR/zsh/.zshrc" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/hush-terminal/.hushlogin" ~


# Create .nvm directory if it doesn't exist

[ -d ~/.nvm ] || mkdir ~/.nvm

# Package managers & packages

. "$DOTFILES_DIR/brew/brew.sh"
. "$DOTFILES_DIR/brew/brew_cask.sh"

install_zsh () {
# Clone my oh-my-zsh repository from GitHub only if it isn't already present
if [ ! -d ~/.oh-my-zsh/ ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
    echo "oh-my-zsh already installed"
fi
}

install_spaceship_theme() {
    if [ ! -d ~/.oh-my-zsh/custom/themes/spaceship-prompt ]; then
        git clone https://github.com/spaceship-prompt/spaceship-prompt.git ~/.oh-my-zsh/custom/themes/spaceship-prompt --depth=1
        ln -s ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme
    else
        echo "spaceship theme already installed"
    fi
}

clone_zsh_packages () {
    if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/ ]; then
        git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    else
        echo "zsh-autosuggestions already installed"
    fi

    if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/ ]; then
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    else
        echo "zsh-syntax-highlighting already installed"
    fi
}

setup_iterm_2 () {
  # Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/dotfiles/iterm2"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
}

install_zsh
install_spaceship_theme
clone_zsh_packages
setup_iterm_2