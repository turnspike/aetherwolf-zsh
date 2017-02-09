#!/bin/zsh

#-- use homeschick for dotfile mgmt:
#   https://github.com/andsens/homeshick

export HS_HOME=$HOME/.homesick/repos/homeshick
source $HS_HOME/homeshick.sh # init
fpath=($HS_HOME/completions $fpath) # add hs to zsh autocompletion path
homeshick --quiet refresh # update configs from git

#-- use zplug plugin manager:
#   https://github.com/zplug/zplug

export ZPLUG_HOME=$HOME/.zplug

#-- install zplug if needed
if [[ ! -d $ZPLUG_HOME ]]; then
  git clone https://github.com/zplug/zplug $ZPLUG_HOME
  source $ZPLUG_HOME/init.zsh && zplug update --self
fi

#-- init zplug
source $ZPLUG_HOME/init.zsh

#-- plugin list
#zplug "zsh-users/zsh-syntax-highlighting"
#zplug "plugins/vi-mode", from:oh-my-zsh
zplug "jocelynmallon/zshmarks" # nice folder bookmarking
#zplug "themes/pygmalion", from:oh-my-zs
zplug "plugins/ssh-agent", from:oh-my-zsh, ignore:oh-my-zsh.sh
# zplug "plugins/git", from:oh-my-zsh
# zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
#zplug "themes/af-magic", from:oh-my-zsh
#zplug "themes/clean", from:oh-my-zsh
#zplug "plugins/colorize", from:oh-my-zsh
#zplug "plugins/zsh_reload", from:oh-my-zsh
#zplug "zsh-users/zsh-completions"
#zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

#-- theme
zplug "frmendes/geometry" # nice theme
#GEOMETRY_SYMBOL_PROMPT="∴"
GEOMETRY_PROMPT_PLUGINS=(exec_time git)

#-- install packages as needed
if ! zplug check --verbose; then
    printf "Install packages? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

#-- load plugins
#zplug load --verbose
zplug load

# # https://coderwall.com/p/yw96rg/display-all-commands-offered-by-your-installed-oh-my-zsh-plugins
# function plug_opts() {
	# PLUGIN_PATH="$HOME/.oh-my-zsh/plugins/"
	# for plugin in $plugins; do
		# echo "\n\nPlugin: $plugin"; grep -r "^function \w*" $PLUGIN_PATH$plugin | awk '{print $2}' | sed 's/()//'| tr '\n' ', '; grep -r "^alias" $PLUGIN_PATH$plugin | awk '{print $2}' | sed 's/=.*//' |  tr '\n' ', '
	# done
# }

pp_msg "zplug started."
