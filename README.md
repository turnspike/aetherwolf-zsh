# ætherwolf

_glide through zsh like a predator._

ætherwolf is a set of modular configs for zsh and friends with minimum typing and maximum feedback. Make any MacOS or Linux shell yours in seconds with a few simple commands. Powered by the excellent [Homesick](https://github.com/technicalpickles/homesick).

(Instructions on how to add user settings coming very soon)

***

## Installation

    mkdir -p ~/dotbackup && cp -b ~/.* "$_" # backup your existing dotfiles
    gem install homesick
    homesick clone turnspike/aetherwolf
    homesick symlink aetherwolf
    
## nVim settings (optional)

    homesick clone turnspike/aetherwolf-nvim
    homesick symlink aetherwolf-nvim
    
***

## Features

  * apply your cli settings to any nix machine in seconds
  * fuzzy find and bookmarks for speedy directory movement
  * visual feedback and autocompletion wherever possible
  * clean division of base settings, user settings and secrets
  * modular, so easy to find and override properties
  * stunts and tricks to feel like a wizard
  * has a purty mouth

## Core settings

  * zsh + plugins
  * byobu
  * nvim (optional)

## Coming soon

  * fzf
  * mutt
  * weechat
  * news
  * docco

## Dependencies

### MacOS

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" # install homebrew
    brew install zsh byobu neovim
    chsh -s /bin/zsh
    [restart terminal]
  
### Ubuntu

    sudo apt install ruby zsh byobu nvim 
    chsh -s `which zsh`
    [restart terminal]

### Termux (Android)

Note: the nvim leader key (space) is currently bugged in termux, will be fixed soon. 

    apt install coreutils ruby git zsh nvim
    chsh -s zsh
    [restart termux session]
