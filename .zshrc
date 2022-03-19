# Filename:      /etc/skel/.zshrc
# Purpose:       config file for zsh (z shell)
# Authors:       (c) grml-team (grml.org)
# Bug-Reports:   see http://grml.org/bugs/
# License:       This file is licensed under the GPL v2 or any later version.
################################################################################
# Nowadays, grml's zsh setup lives in only *one* zshrc file.
# That is the global one: /etc/zsh/zshrc (from grml-etc-core).
# It is best to leave *this* file untouched and do personal changes to
# your zsh setup via ${HOME}/.zshrc.local which is loaded at the end of
# the global zshrc.
#
# That way, we enable people on other operating systems to use our
# setup, too, just by copying our global zshrc to their ${HOME}/.zshrc.
# Adjustments would still go to the .zshrc.local file.
################################################################################

## Inform users about upgrade path for grml's old zshrc layout, assuming that:
## /etc/skel/.zshrc was installed as ~/.zshrc,
## /etc/zsh/zshrc was installed as ~/.zshrc.global and
## ~/.zshrc.local does not exist yet.
if [ -r ~/.zshrc -a -r ~/.zshrc.global -a ! -r ~/.zshrc.local ] ; then
    printf '-!-\n'
    printf '-!- Looks like you are using the old zshrc layout of grml.\n'
    printf '-!- Please read the notes in the grml-zsh-refcard, being'
    printf '-!- available at: http://grml.org/zsh/\n'
    printf '-!-\n'
    printf '-!- If you just want to get rid of this warning message execute:\n'
    printf '-!-        touch ~/.zshrc.local\n'
    printf '-!-\n'
fi

# Dotfiles Alias
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME


# Imported from .bashrc
# alias war3save="cd ~/games/warcraft3/drive_c/users/atrx/My\ Documents/Warcraft\ III/CustomMapData"
#hash -d wc3=~/games/warcraft3/drive_c/users/atrx/My\ Documents/Warcraft\ III/CustomMapData
alias ls='ls --color=auto'

alias abort='pacman -Qtdq | pacman -Rns -'

# alias pacfind='sudo pacman -Sl | awk '{print $2($4=="" ? "" : " *")}' | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S'

# define functions
pacfind(){ pacman -Sl | awk '{print $2($4=="" ? "" : " *")}' | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S; }
yayfind(){ yay -Sl | awk '{print $2($4=="" ? "" : " *")}' | fzf --multi --preview 'yay -Si {1}' | xargs -ro yay -S; }
yeet(){ pacman -Qqe | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns; }

PS1='[\u@\h \W]\$ '

(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh

PROMPT_COMMAND="test \$? -eq 1 && ~/scripts/oof.sh"

pog



## Settings for umask
#if (( EUID == 0 )); then
#    umask 002
#else
#    umask 022
#fi

## END OF FILE #################################################################
