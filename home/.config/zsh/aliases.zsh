#!/bin/zsh

#-- directories
if [[ "$(uname)" = "Darwin" ]]; then # macos uses a different 'ls'
	export CLICOLOR=1
	export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
	alias l="ls -afh"
	alias ll="ls -afhg"
else
	alias l="ls -ah --color --group-directories-first"
	alias ll="ls -ahl --color --group-directories-first"
fi

alias ..="cd ./.."
alias cdu="cd-gitroot"

#-- system
alias md="mkdir"
alias rd="rmdir"
alias t="trash" # delete files with github.com/andreafrancia/trash-cli
#alias rm='echo "use trash instead, or \rm to bypass"; false'

#-- reload various things, eg to apply config changes w
alias zsh-reload="zplug clean;source ~/.zshrc"
alias zsh-fix="rm ~/.zcompdump && rm ~/.zplug/zcompdump"

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

##-- fuzzy finder
#
## vf - fuzzy open with vim from anywhere
## ex: vf word1 word2 ... (even part of a file name)
## zsh autoload function
#ffv() {
#    local files
#
#    files=(${(f)"$(locate -Ai -0 $@ | grep -z -vE '~$' | fzf --read0 -0 -1 -m)"})
#
#    if [[ -n $files ]]
#    then
#        vim -- $files
#        print -l $files[1]
#    fi
#}
#
## fe [FUZZY PATTERN] - Open the selected file with the default editor
##   - Bypass fuzzy finder if there's only one match (--select-1)
##   - Exit if there's no match (--exit-0)
##   - CTRL-O to open with `open` command,
##   - CTRL-E or Enter key to open with the $EDITOR
#ffo() {
#    local out file key
#    IFS=$'\n' out=($(fzf-tmux --query="$1" --exit-0 --expect=ctrl-o,ctrl-e))
#    key=$(head -1 <<< "$out")
#    file=$(head -2 <<< "$out" | tail -1)
#    if [ -n "$file" ]; then
#        [ "$key" = ctrl-o ] && open "$file" || ${EDITOR:-vim} "$file"
#    fi
#}
#
## fh - repeat history
#ffh() {
#    print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
#}
#
## fd - cd to selected directory
#ffd() {
#    local dir
#    dir=$(find ${1:-.} -path '*/\.*' -prune \
#        -o -type d -print 2> /dev/null | fzf +m) &&
#        cd "$dir"
#}
#
## fda - including hidden directories
#ffda() {
#    local dir
#    dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
#}
#

#-- coding
alias ct="ctags -R -f ./.git/tags ."

#-- rails commands
alias rsl="rails server -b 0.0.0.0"

#-- apps
alias ag='ag --hidden'
alias e="emacsclient -t -a ''"
#alias e="emacsclient -a '' -c"
alias eb="emacsbare"
alias eg="emacsclient -c -n -a ''" # gui emacs
alias emacsbare="emacs -nw -Q --eval \"(load-theme 'misterioso)\""
alias g="git"
alias hs="homeshick"
alias nv="nvim"
alias vim="nvim"
alias oldvim="/usr/bin/vim"
alias vimold="/usr/bin/vim"

#-- misc
alias shellname="ps -p $$"
alias bigfiles="du -ah /home | sort -n -r | head -n 15"
