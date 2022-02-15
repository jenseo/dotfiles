#!/bin/bash

# Install Homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/jensfilipsson/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"

brew update
brew upgrade

# Install packages

apps=(
    nvm
    grep
    wget
)

brew install "${apps[@]}"