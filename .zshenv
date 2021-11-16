#!/bin/zsh

# Exports 
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# Add commonly used folders to $PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=vim

# Sources 
source $ZSH/oh-my-zsh.sh

# User Configuration
# Pure theme
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# Aliases
alias brewup='brew update; brew upgrade; brew upgrade --cask; brew cleanup; brew doctor'
alias reload='source ~/.zshrc'
# dev
alias devup='brew services start --all;'
alias devdown='brew services stop --all;'
# git
alias git-personal='git config --local user.email "15319206+patricklinpl@users.noreply.github.com"'

#
# Language Version Manager
#

# pyenv
export PYENV_ROOT=$(pyenv root)
export PATH="$PYENV_ROOT/shims:$PATH"
eval "$(pyenv init -)"

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# jenv
. <(jenv init -)

# rbenv
eval "$(rbenv init -)"