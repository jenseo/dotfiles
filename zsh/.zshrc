# Fig pre block. Keep at the top of this file.
export PATH="${PATH}:${HOME}/.local/bin"
eval "$(fig init zsh pre)"

# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(git dirhistory jsontools history zsh-autosuggestions bgnotify zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Scripts path
PATH=$PATH:$HOME/dotfiles/bin 

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
source ~/.git_aliases.sh

export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# # The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jensfilipsson/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jensfilipsson/google-cloud-sdk/path.zsh.inc'; fi

# # The next line enables shell command completion for gcloud.
if [ -f '/Users/jensfilipsson/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jensfilipsson/google-cloud-sdk/completion.zsh.inc'; fi

[[ -s "/Users/jensfilipsson/.gvm/scripts/gvm" ]] && source "/Users/jensfilipsson/.gvm/scripts/gvm"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export PATH="/opt/homebrew/opt/go@1.18/bin:$PATH"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

# Fig post block. Keep at the bottom of this file.
eval "$(fig init zsh post)"

