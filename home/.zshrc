#!/bin/zsh

ZSTART=$(date +%s%N | cut -b1-13) # startup timer
ZCONF=$HOME/.zsh # we keep zsh config in ~/.zsh, eg symlinked from multiple gnu stow repos
source $ZCONF/colors.zsh # load color definitions for pretty output

pp_title "ʕっ•ᴥ•ʔっ.... starting zsh"
pp_msg "☯ zsh v$ZSH_VERSION" # display zsh version info

#-- initial custom actions such as mounting encrypted dropbox folders
#   eg ~/.zsh/.init stowed from ~/Dropbox/.dotfiles

if [ -f $ZCONF/init.zsh ]; then
    pp_msg "performing initial actions in $ZCONF/.init"
    source $ZCONF/init.zsh
fi

pp_msg "loading config from $ZCONF"
source $ZCONF/plugins.zsh # load plugins
source $ZCONF/environment.zsh # load environment settings
source $ZCONF/keybinds.zsh # load keybindings
source $ZCONF/aliases.zsh # load aliases
source $ZCONF/functions.zsh # load shell helper functions

#-- user config settings
#   eg ~/.zsh/.user stowed from ~/Dropbox/.dotfiles

if [ -f $ZCONF/user.zsh ]; then
    pp_msg "loading user config from $ZCONF/.user"
    source $ZCONF/user.zsh
fi

#-- local per-machine config settings 
#   eg ~/.zsh/.local not version controlled

if [ -f $ZCONF/local.zsh ]; then
    pp_msg "loading local machine config from $ZCONF/local.zsh"
    source $ZCONF/local.zsh
fi

# ➤» 

#-- show startup duration
function { # function to localise vars
    local ZSTOP=$(date +%s%N | cut -b1-13)
    local ZDIFF=$(($ZSTOP-$ZSTART))
    pp_msg "☯ total startup took ${ZDIFF}ms."
}

unset ZSTART # remove startup timer

pp_title "zsh ready."
