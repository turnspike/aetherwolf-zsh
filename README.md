# Turnspike Dotfiles

turnspike's nix settings. Sane defaults and tweaks for:

  * zsh
  * spacemacs
  * byobu

# Installation

* Requires Ruby (sudo apt install ruby)

    gem install homesick
    homesick clone turnspike/dotfiles
    homesick symlink dotfiles

# Termux (Android)

    apt install zsh git coreutils ruby
    chsh -s zsh
    [restart termux session]

    gem install homesick
    homesick clone turnspike/dotfiles
    homesick symlink dotfiles
