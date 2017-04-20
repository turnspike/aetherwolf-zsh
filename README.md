# ætherwolf

_glide through zsh like a predator._

ætherwolf is a set of modular configs for zsh and friends with minimum typing and maximum feedback. Make any MacOS or Linux shell yours in seconds with a few simple commands. Powered by the excellent [Homesick](https://github.com/technicalpickles/homesick).

## Features

  * keeps secrets secret and shortcuts available
  * visual feedback and completion wherever possible
  * fuzzy find and bookmarks for speedy directory movement
  * stunts and tricks to feel like a wizard
  * has a purty mouth
  
*** 

## How to start

### 1. Prepare

    mkdir -p ~/dotbackup && cp -b ~/.* "$_" # backup your existing dotfiles
    gem install homesick
    
### 2. Base Settings

    homesick clone turnspike/aetherwolf
    homesick symlink aetherwolf
    
### 3. nVim Settings (optional)

    homesick clone turnspike/aetherwolf-nvim
    homesick symlink aetherwolf-nvim

### 4. Your Settings

    homesick clone turnspike/aetherwolf-user
    homesick symlink aetherwolf-user
    homesick cd aetherwolf-user
    git remote set-url origin https://github.com/YOUR_USERNAME/SETTINGS_REPO.git # this repo must exist on github.com

You can add your user settings by editing the templates in aetherwolf-user/home/.config

### 5. Your Secrets 
 
    homesick clone turnspike/aetherwolf-secrets
    homesick symlink aetherwolf-secrets
    homesick cd aetherwolf-secrets
    git remote set-url origin https://bitbucket.org/YOUR_USERNAME/SECRET_PRIVATE_REPO.git  # this repo must exist on bitbucket.org

You can add your secrets by editing the templates in aetherwolf-secrets/home - make sure to keep the repo private.

***

## Core settings

  * zsh + plugins
  * byobu
  * git
  * nvim (optional)

## Coming soon

  * light and dark theme switching
  * fzf
  * integrate keyring/credential mgmt
  * mutt
  * weechat
  * news
  * more docs

***

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
