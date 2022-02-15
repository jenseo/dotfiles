# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(zsh-nvm git copydir dirhistory jsontools history zsh-syntax-highlighting zsh-autosuggestions bgnotify)

source $ZSH/oh-my-zsh.sh

if [ -d "$HOME/telia-terminal" ] 
  source ~/telia-terminal/.telia_terminal
fi

# Scripts path
PATH=$PATH:$HOME/dotfiles/bin 

export NVM_DIR="$HOME/.nvm"
    [ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
    [ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
