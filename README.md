# Turnspike Dotfiles

turnspike's nix settings. Sane defaults and tweaks for:

  * zsh
  * spacemacs
  * byobu

# Installation

From the project directory, run:

    chmod u+x install.sh
    ./install.sh

Note - this will also install [homeshick](https://github.com/andsens/homeshick) if needed.

# Termux

Termux (Android) isn't compatible with standard shebangs, so any scripts need to be converted before use.

    apt install zsh git coreutils
    chsh -s zsh
    [start a new termux session]
    git clone git@github.com:turnspike/dotfiles.git
    cd dotfiles
    termux-fix-shebangs install.sh
    chmod u+x install.sh
    ./install.sh
    cd ~/.homesick/repos/homeshick/
    termux-fix-shebangs homeshick.sh
    termux-fix-shebangs bin/homeshick
    source homeshick.sh
    homeshick clone git@github.com:turnspike/dotfiles.git
    [very long wait...]
