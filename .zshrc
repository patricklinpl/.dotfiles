# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnoster"

# Folder permission "Insecure completion-dependent directories detected"
# https://github.com/ohmyzsh/ohmyzsh/issues/6835#issuecomment-390216875
ZSH_DISABLE_COMPFIX=true

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(brew docker git zsh-autosuggestions zsh-completions) 

# source $ZSH/oh-my-zsh.sh

# Antigen
source $HOME/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundles <<EOBUNDLES

# Bundles from the default repo (robbyrussell's oh-my-zsh).
	# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux
	archlinux

	# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/asdf
	asdf

    # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colorize
    colorize
 
	# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/command-not-found
	command-not-found
    
	# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/macos
	macos

# Bundles from zsh-users.
	# Fish-like autosuggestions for zsh.
	zsh-users/zsh-autosuggestions

	# Additional completion definitions for Zsh.
	zsh-users/zsh-completions

	# ZSH port of the FISH shell's history search 🐠.
	zsh-users/zsh-history-substring-search

	# # Fish shell like syntax highlighting for Zsh.
	# zsh-users/zsh-syntax-highlighting

# Other Bundles.
	# Auto updating, both of antigen and the bundles loaded in your config.
	unixorn/autoupdate-antigen.zshplugin

	# Wrappers for git commands to be efficient in the shell.
	seletskiy/zsh-git-smart-commands
EOBUNDLES

# Load the theme.
# antigen theme robbyrussell
# https://github.com/zsh-users/antigen/issues/675
THEME=agnoster 
antigen list | grep $THEME; if [ $? -ne 0 ]; then antigen theme $THEME; fi

# Tell Antigen that you're done.
antigen apply

# User configuration

source ~/.dotfiles/.zshenv
source ~/dotfiles/.aliases
