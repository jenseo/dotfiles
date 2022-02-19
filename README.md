# My dotfiles config
This dotfile repo is intended to make it easier (*for me*) to set up a new Mac for frontend development and get started as quickly as possible.

When my workflow changes, it's easy to tweak the config and adjust the setup scripts to reflect this.

This installation is the backbone of my setup and makes it easy to be up and running in no time. I don't install all the tools I *might* need in the future, instead I try to keep it slimmed down to the tools I know I want to have from day one.

## What it currently does (TL/DR):
* Installs the applications I use mostly in my day to day work (listed below)
* Configure the terminal to my liking
* Set's up my *.gitconfig* and *.gitignore_global* files
* Configure git helper tools like my favorite [Git recent script](https://github.com/jenseo/dotfiles/blob/master/bin/git-recent).

## What it does in detail:
* Creates symlinks from my home directory to my *.dotfiles*
* Installs [Homebrew](https://brew.sh/) and the packages:
	* grep
	* wget
	* go 
	* maccy
* Installs the following applications as brew casks:
	* firefox
	* google-chrome
	* iterm2
	* visual-studio-code
	* slack
	* mockoon
	* docker
	* fig
	* postman
* Installs [Oh My Zsh](https://ohmyz.sh/), downloads [my favorite theme](https://github.com/spaceship-prompt/spaceship-prompt) as well as some useful plugins.
* Makes sure iterm2 loads and saves it's settings from and to this dotfile repo.
* NVM ready for action.

## How to use it:
Clone this repository, step into the folder and run the install script from your terminal:

`./install.sh`

If you get an error about the file not being executable, make sure you chmod the file:

`chmod +x install.sh`

### Things me, myself and I have to remember post install:
* Install the fonts [Fira Code](https://github.com/tonsky/FiraCode) (for terminal) and [Operator Mono](https://www.typography.com/fonts/operator/styles/operatormono) (premium font, used in my VS Code setup).
* Enable settings sync in VS Code and download my settings/extensions from github.