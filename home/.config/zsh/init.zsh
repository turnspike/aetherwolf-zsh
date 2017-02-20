#!/bin/zsh

ZSTART=$(date +%s%N | cut -b1-13) # startup timer
ZCONF=$XDG_CONFIG_HOME/zsh # we keep zsh config in ~/.config/zsh, eg symlinked from multiple gnu stow repos
source $ZCONF/colors.zsh # load color definitions for pretty output

pp_title "ʕっ•ᴥ•ʔっ.... starting zsh"
pp_msg "☯ zsh v$ZSH_VERSION" # display zsh version info

pp_msg "loading config from $ZCONF"
source $ZCONF/plugins.zsh # load plugins
source $ZCONF/environment.zsh # load environment settings
source $ZCONF/keybinds.zsh # load keybindings
source $ZCONF/aliases.zsh # load aliases
source $ZCONF/functions.zsh # load shell helper functions

## reload completions
#compinit -D

#-- show startup duration
function { # function to localise vars
    local ZSTOP=$(date +%s%N | cut -b1-13)
    local ZDIFF=$(($ZSTOP-$ZSTART))
    pp_msg "☯ startup took ${ZDIFF}ms."
}

unset ZSTART # remove startup timer

#-- load user config settings from
if [ -f $ZCONF/user.zsh ]; then
    pp_msg "loading user config from $ZCONF/user.zsh"
    source $ZCONF/user.zsh
fi

#-- load local per-machine config settings
if [ -f $ZCONF/local.zsh ]; then
    pp_msg "loading local machine config from $ZCONF/local.zsh"
    source $ZCONF/local.zsh
fi

pp_title "zsh ready."
