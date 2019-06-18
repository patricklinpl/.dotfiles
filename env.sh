#!/bin/zsh

# Add commonly used folders to $PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=vim

# Aliases
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor; cd ~/.vim_runtime && git pull --rebase && cd -'

# Usage: compresspdf [input file] [output file] [screen*|ebook|printer|prepress]
compresspdf() {
    gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dPDFSETTINGS=/${3:-"screen"} -dCompatibilityLevel=1.4 -sOutputFile="$2" "$1"
}

# Usage: download-mp3 [link]
download-mp3() {
    youtube-dl --extract-audio --audio-format mp3 "$@"
}

# Usage: download-mp4 [link]
download-mp4() {
    youtube-dl -f mp4 "$@"
}
