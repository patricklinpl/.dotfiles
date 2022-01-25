#!/bin/zsh

# Exports 
export HISTSIZE=100000
export SAVEHIST=100000

# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=vim

# Aliases
alias reload='source ~/.zshrc'

# macOS
alias brewup='brew update; brew upgrade; brew upgrade --cask; brew cleanup; brew doctor'
alias devup='brew services start --all;'
alias devdown='brew services stop --all;'

# Git Aliases
alias c='git-smart-commit'
alias a='git-smart-add'
alias p='git-smart-push'
alias u='git-smart-pull'
alias r='git-smart-remote'
alias git-personal='git config --local user.email "15319206+patricklinpl@users.noreply.github.com"'

alias odl='cat ~/.okta | okta-docker-login --mfa push'

# Language Version Manager
# . $HOME/.asdf/asdf.sh
