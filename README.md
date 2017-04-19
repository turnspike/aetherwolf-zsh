# ætherwülf

_glide through zsh like a predator._

ætherwülf is a set of modular configs for zsh and friends with minimum typing and maximum feedback. Make any MacOS or Linux shell yours in seconds with a few simple commands. Powered by the excellent [Homesick](https://github.com/technicalpickles/homesick).

(Instructions on how to add user settings coming very soon)

***

## Installation

    gem install homesick
    homesick clone turnspike/aetherwulf
    homesick symlink aetherwulf
    
## nVim settings (optional)

    homesick clone turnspike/aetherwulf-nvim
    homesick symlink aetherwulf-nvim
    
***

## Features

  * apply your cli settings to any nix machine in seconds
  * fuzzy find and bookmarks for speedy directory movement
  * visual feedback and autocompletion wherever possible
  * clean division of base settings, user settings and secrets
  * easily override settings at a user and machine level
  * stunts and tricks to feel like a wizard
  * has a purty mouth

## Core settings

  * zsh + plugins
  * byobu
  * nvim (optional)

## Coming soon

  * mutt
  * weechat
  * news
  * docco

## Dependencies

### MacOS

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" # install homebrew
    brew install neovim zsh
    chsh -s /bin/zsh
    [restart terminal]
  
### Ubuntu

    sudo apt install zsh ruby nvim
    chsh -s `which zsh`
    [restart terminal]

### Termux (Android)

Note: the nvim leader key (space) is currently bugged in termux, will be fixed soon. 

    apt install zsh git coreutils ruby nvim
    chsh -s zsh
    [restart termux session]
