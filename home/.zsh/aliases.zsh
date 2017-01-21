#!/bin/zsh

#-- directories
alias l="ls -ah --color --group-directories-first"
alias ll="ls -ahl --color --group-directories-first"
alias ..="cd .."

#-- reload various things, eg to apply config changes w
alias reload-zsh="zplug clean;source ~/.zshrc"
#alias reload-omz="source $ZSH/oh-my-zsh.sh"
alias reload-tmux="tmux source-file ~/.tmux.conf"
alias reload-byobu="tmux source-file ~/.byobu/.tmux.conf"

#-- zsh "bookmark" plugin commands
alias ba="bookmark" # add bookmark for current directory to list
alias bj="jump" # jump to bookmark x
alias bl="showmarks" # list bookmarked dirs
alias bd="deletemark" # delete bookmark x

#-- temp bookmark commands
alias b='export hdbook=$(pwd)' # bookmark current directory
alias r='cd "$hdbook"' # return to previously bookmarked directory

#-- tmux commands (but I mostly use Byobu now)
alias ta="tmux new-session -A -s"
alias ts="tmux switch -t"
alias tl="tmux list-sessions"
alias td="tmux detach"
alias tk="tmux kill-session -t"
alias tka="tmux kill-session -a"
#alias tka="tmux ls | grep : | cut -d. -f1 | awk '{print substr($1, 0, length($1)-1)}' | xargs kill"

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
alias v="vim"

#-- misc
alias shellname="ps -p $$"
alias bigfiles="du -ah /home | sort -n -r | head -n 15"
