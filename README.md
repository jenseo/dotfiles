# My .dotfiles config
This dotfile repo is intended to make it easier (*for me*) to set up a new Mac for frontend development and get started as quickly as possible.

When my workflow changes, it's easy to tweak the config and adjust the setup scripts to 

## What it currently does:
	* Installs the applications I use mostly in my day to day work
	* Configure the terminal to my liking
	* Set's up my .gitconfig and .global_gitignore files
	* Configure git helper tools like my favorite [Git recent script](https://github.com/jenseo/dotfiles/blob/master/bin/git-recent).

## How to use it:
Clone this repository, step into the folder and run the install script from your terminal:
´./install.sh`

If you get an error about the file not being executable, make sure you chmod the file:
`chmod +x install.sh`

### Things me, myself and I have to remember post install:
	* Install the fonts [Fira Code](https://github.com/tonsky/FiraCode) (for terminal) and [Operator Mono](https://www.typography.com/fonts/operator/styles/operatormono) (premium font, used in my VS Code setup).
	* Enable settings sync in VS Code and download my settings/extensions from github.