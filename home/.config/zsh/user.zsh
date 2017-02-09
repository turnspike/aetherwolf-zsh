#!/bin/zsh

~/bin/dropbox.py start # start dropbox

alias enc-mount="cryfs ~/Dropbox/Encrypted ~/Private"
alias enc-unmount="fusermount -u ~/Private"

#-- mount encrypted local folder ~/Private if not already mounted
if [[ ! -d "$HOME/Private" ]]; then
    enc-mount
fi
# should this be unmounted in ~/.zlogout?

ssh-add ~/.ssh/turnspike-id-rsa # load ssh keys for gitlab etc
