# Turnspike Dotfiles

turnspike's nix settings. Sane defaults and tweaks for:

  * zsh
  * spacemacs
  * byobu

## Installation

    gem install homesick
    homesick clone turnspike/dotfiles
    homesick symlink dotfiles
    
## nVim / Vim settings (optional)

    homesick clone turnspike/vimrc
    homesick symlink vimrc

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

    apt install zsh git coreutils ruby nvim
    chsh -s zsh
    [restart termux session]
