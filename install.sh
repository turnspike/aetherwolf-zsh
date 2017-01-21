#!/bin/bash

HS_HOME=$HOME/.homesick/repos/homeshick
if [[ ! -d $HS_HOME ]]; then
    git clone git://github.com/andsens/homeshick.git $HS_HOME
fi
source $HS_HOME/homeshick.sh            

homeshick clone git@gitlab.com:turnspike/dotfiles.git
