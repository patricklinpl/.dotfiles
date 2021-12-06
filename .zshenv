#!/bin/zsh

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Exports 
# Add commonly used folders to $PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=vim

# Enable Starship
eval "$(starship init zsh)"
# User Configuration
# Pure theme
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# Aliases
alias reload='source ~/.zshrc'

# macOS
alias brewup='brew update; brew upgrade; brew upgrade --cask; brew cleanup; brew doctor'
alias devup='brew services start --all;'
alias devdown='brew services stop --all;'

# git
alias git-personal='git config --local user.email "15319206+patricklinpl@users.noreply.github.com"'

#
# Language Version Manager
#

. /opt/asdf-vm/asdf.sh