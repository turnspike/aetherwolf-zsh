#!/bin/zsh

#-- directories
alias l="ls -ah --color --group-directories-first"
alias ll="ls -ahl --color --group-directories-first"
alias ..="cd .."

#-- reload various things, eg to apply config changes w
alias reload-zsh="zplug clean;source ~/.zshrc"

#-- zsh "bookmark" plugin commands
alias ba="bookmark" # add bookmark for current directory to list
alias bj="jump" # jump to bookmark x
alias bl="showmarks" # list bookmarked dirs
alias bd="deletemark" # delete bookmark x

#-- temp bookmark commands
alias b='export hdbook=$(pwd)' # bookmark current directory
alias r='cd "$hdbook"' # return to previously bookmarked directory

#-- byobu commands
alias bb="byobu"
alias br="/usr/lib/byobu/include/tmux-detach-all-but-current-client"

#-- coding
alias ct="ctags -R -f ./.git/tags ."

#-- rails commands
alias rsl="rails server -b 0.0.0.0"

#-- apps
alias e="emacsclient -t -a ''"
#alias e="emacsclient -a '' -c"
alias eb="emacsbare"
alias eg="emacsclient -c -n -a ''" # gui emacs
alias emacsbare="emacs -nw -Q --eval \"(load-theme 'misterioso)\""
alias g="git"
alias hs="homeshick"
alias n="nvim"
alias nv="nvim"
alias v="vim"

#-- misc
alias shellname="ps -p $$"
alias bigfiles="du -ah /home | sort -n -r | head -n 15"
