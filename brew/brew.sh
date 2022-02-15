#!/bin/bash

# Install Homebrew

which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/jensfilipsson/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
else 
    echo "Homebrew already installed"
fi

brew update
brew upgrade

# Install packages if they are missing

brew_install() {
    echo "Installing $1"
    if brew list $1 >/dev/null; then
        echo "${1} is already installed"
    else
        brew install $1 && echo "$1 is installed"
    fi
}

apps=(
    grep
    wget
)


for app in "${apps[@]}"
do
    brew_install "$app"
done