# Install cask packages if they are missing

brew_install_cask() {
    if brew ls --casks --version $app &>/dev/null; then
        echo "${app} is already installed"
    else
        echo "Installing ${app}" && brew install --cask $app && echo "${app} is installed"
    fi
}

apps=(
    firefox
    google-chrome
    iterm2
    visual-studio-code
    slack
    mockoon
    docker
    fig
    postman
)

for app in "${apps[@]}"
do
    brew_install_cask "$app"
done