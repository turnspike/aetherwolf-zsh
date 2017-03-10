export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"

if [[ "$(uname)" = "Darwin" ]]; then # this is needed by brew on macos
	  export PATH="/usr/local/sbin:$PATH"
fi
