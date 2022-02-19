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
    if brew ls --versions $app &>/dev/null; then
        echo "${app} is already installed"
    else
        echo "installing ${app}" && brew install $app && echo "${app} is installed"
    fi
}

apps=(
    grep
    wget
    go
    maccy
)


for app in "${apps[@]}"
do
    brew_install "$app"
done