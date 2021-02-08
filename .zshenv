#!/bin/zsh

# Exports 
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# Add commonly used folders to $PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=vim
# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Sources 
source $ZSH/oh-my-zsh.sh

# Aliases
alias brewup='brew update; brew upgrade; brew upgrade --cask; brew cleanup; brew doctor'
# dev
alias devup='brew services start --all;'
alias devdown='brew services stop --all;'

# User Configuration
# Pure theme
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure
# pyenv
# eval "$(pyenv init -)"