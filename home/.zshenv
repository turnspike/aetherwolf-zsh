# ---- set base locations for later use
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export ZCONF=$XDG_CONFIG_HOME/zsh # we keep zsh config in ~/.config/zsh

# ---- macos
if [[ "$OSTYPE" == "darwin"* ]]; then # homebrew configs for macos
  export PATH="/usr/local/sbin:$PATH"
  export PATH="/usr/local/opt/sqlite/bin:$PATH"
  export BYOBU_PREFIX=/usr/local
fi

# ---- load user configs
if [ -f $ZCONF/zshenv-user.zsh ]; then
  source $ZCONF/zshenv-user.zsh
fi
