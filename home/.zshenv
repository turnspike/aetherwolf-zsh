# ---- set base locations for later use
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export ZCONF=$XDG_CONFIG_HOME/zsh # we keep zsh config in ~/.config/zsh

# ---- homebrew configs for macos
if [[ "$ostype" == "darwin"* ]]; then
  export path="/usr/local/sbin:$path"
  export path="/usr/local/opt/sqlite/bin:$path"
  export byobu_prefix=/usr/local
fi

# ---- load user configs
if [ -f $ZCONF/zshenv-user.zsh ]; then
  source $ZCONF/zshenv-user.zsh
fi
