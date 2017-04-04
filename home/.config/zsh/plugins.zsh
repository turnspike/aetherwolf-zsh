#!/bin/zsh

# UNCOMMENT TO BENCHMARK
BENCHMARK=1 && zmodload zsh/zprof

#-- use homeschick for dotfile mgmt:
#   https://github.com/andsens/homeshick

export HS_HOME=$HOME/.homesick/repos/homeshick
source $HS_HOME/homeshick.sh # init
fpath=($HS_HOME/completions $fpath) # add hs to zsh autocompletion path
homeshick --quiet refresh # update configs from git

#-- use zplug plugin manager:
#   https://github.com/zplug/zplug

export ZPLUG_HOME=$HOME/.zplug # TODO xdg this

#-- install zplug if needed
if [[ ! -d $ZPLUG_HOME ]]; then
	git clone https://github.com/zplug/zplug $ZPLUG_HOME
	source $ZPLUG_HOME/init.zsh && zplug update --self
fi

#-- init zplug
source $ZPLUG_HOME/init.zsh

COMPLETION_WAITING_DOTS="true"
DISABLE_CORRECTION="true"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root line)

#-- plugin list
#zplug "zsh-users/zsh-syntax-highlighting"
#zplug "plugins/vi-mode", from:oh-my-zsh
zplug "junegunn/fzf-bin"
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

zplug "jocelynmallon/zshmarks" # nice folder bookmarking
#zplug "themes/pygmalion", from:oh-my-zs
zplug "plugins/ssh-agent", from:oh-my-zsh, ignore:oh-my-zsh.sh

zplug "b4b4r07/enhancd", use:init.sh # better cd
export ENHANCD_FILTER=fzy
export ENHANCD_DISABLE_DOT=1
export ENHANCD_DISABLE_HOME=1
alias cdh="cd -"

zplug "mollifier/cd-gitroot" # cd-gitroot to move up to git toplevel folder
# zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
#zplug "themes/af-magic", from:oh-my-zsh
#zplug "themes/clean", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh, ignore:oh-my-zsh.sh
#zplug "plugins/zsh_reload", from:oh-my-zsh
zplug "chrissicool/zsh-256color" # ZSH plugin enhancesheerminal environment with 256 colors.
zplug "zsh-users/zsh-completions" # Additional completion definitions for Zsh.
zplug "zsh-users/zsh-autosuggestions" # Fish-like autosuggestions for zsh bundle.
zplug "zsh-users/zsh-history-substring-search" # Fish shell's history search functionality bundle
#zplug "zsh-users/zsh-syntax-highlighting", defer:2
# Async for zsh, used by pure theme
# jkzplug "mafredri/zsh-async", from:github, defer:0
# Load completion library forhose sweet [tab] squares
zplug "lib/completion", from:oh-my-zsh, ignore:oh-my-zsh.sh
# Syntax highlighting for commands, load last
zplug "zsh-users/zsh-syntax-highlighting", from:github, defer:2

#-- dev autocompletion
zplug "plugins/bundler", from:oh-my-zsh, ignore:oh-my-zsh.sh, defer:2
zplug "plugins/git", from:oh-my-zsh, ignore:oh-my-zsh.sh, defer:2
zplug "plugins/heroku", from:oh-my-zsh, ignore:oh-my-zsh.sh, defer:2
zplug "plugins/rbenv", from:oh-my-zsh, ignore:oh-my-zsh.sh, defer:2
zplug "plugins/gem", from:oh-my-zsh, ignore:oh-my-zsh.sh, defer:2
zplug "plugins/npm", from:oh-my-zsh, ignore:oh-my-zsh.sh, defer:2
zplug "plugins/yarn", from:oh-my-zsh, ignore:oh-my-zsh.sh, defer:2

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
#
pp_msg "zplug started."
