# Turnspike Dotfiles

turnspike's nix settings. Sane defaults and tweaks for:

  * zsh
  * spacemacs
  * byobu

# Installation

    sudo apt install zsh ruby
    chsh -s `which zsh`
    [restart terminal]
    
    gem install homesick
    homesick clone turnspike/dotfiles
    homesick symlink dotfiles

# Termux (Android)

    apt install zsh git coreutils ruby nvim
    chsh -s zsh
    [restart termux session]

    gem install homesick
    homesick clone turnspike/dotfiles
    homesick symlink dotfiles
    
