# Install cask packages if they are missing

brew_install_cask() {
    echo "Installing $app"
    if ! brew info $app >/dev/null; then
        brew install --cask $app && echo "$app is installed"
    else
        echo "${app} is already installed"
    fi
}

apps=(
    firefox
    google-chrome
    iterm2
    visual-studio-code
    slack
)

for app in "${apps[@]}"
do
    brew_install_cask "$app"
done