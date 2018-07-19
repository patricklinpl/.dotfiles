# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=/Users/patricklin/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="powerlevel9k/powerlevel9k"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man colorize pip python brew osx zsh-syntax-highlighting)

export MANPATH="/usr/local/man:$MANPATH"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# This loads nvm
export NVM_DIR="/Users/patricklin/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

source $ZSH/oh-my-zsh.sh
source ~/Projects/config/env.sh
