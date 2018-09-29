#!/bin/zsh

# Add commonly used folders to $PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=vim

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Aliases
alias cppcompile='c++ -std=c++11 -stdlib=libc++'
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor; cd ~/.vim_runtime && git pull --rebase && cd -'

# Python
alias pip='pip3'
alias python='python3'

# MySQL
alias sql='mysql -uroot'

# Java
export JAVA_HOME="`/usr/libexec/java_home -v 10`"
javacc() { javac $1.java && java $1 }

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

# Homebrew Conda Fix
export SANS_ANACONDA="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# added by Anaconda3 5.2.0 installer
export PATH="/anaconda3/bin:$SANS_ANACONDA"

alias rmConda="export PATH="\$SANS_ANACONDA""
alias mvConda="export PATH="/anaconda3/bin:\$SANS_ANACONDA""

brew () {
  rmConda
  command brew "$@"
  mvConda
}

export PATH="/usr/local/opt/node@8/bin:$PATH"
