#!/bin/zsh

# ---- zsh-history-substring-search
bindkey '^[[A' history-substring-search-up # up key to search up
bindkey '^[[B' history-substring-search-down # down key to search down

bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# ---- zsh-autosuggestions
bindkey '^[[1;5C' forward-word # ctrl-right accepts next word in cmd suggestion
bindkey '^[[1;5D' backward-word # ctrl-left moves back one word
