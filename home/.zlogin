if [[ "$(uname)" = "Darwin" ]]; then # homebrew configs for macos
	# use chruby for ruby version mgmt
	source /usr/local/opt/chruby/share/chruby/chruby.sh
	#chruby ruby-2.2.3
	source /usr/local/opt/chruby/share/chruby/auto.sh

	## use nvm for nodey node node version mgmt
	#export NVM_DIR="/Users/work/.nvm"
	#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
fi

