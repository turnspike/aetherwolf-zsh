#!/bin/bash

# TODO install and chsh to zsh if needed

gem install homesick
homesick clone turnspike/dotfiles
homesick symlink dotfiles
