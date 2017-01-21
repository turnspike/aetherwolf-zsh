#!/bin/zsh
export BLOCKSIZE=1k # set default blocksize for ls, df, du

## TODO: is this block still  needed on a modern zsh install?
## ignore duplicate and cruft history items
export HISTCONTROL="ignoreboth"
export HISTIGNORE="&:ls:[bf]g:exit:l:ll:.."
#shopt -s cmdhist # fix for multiline commands

## locale settings for perl, ruby
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
