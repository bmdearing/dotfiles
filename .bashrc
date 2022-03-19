#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

alias abort='pacman -Qtdq | pacman -Rns -'

# define functions
pacfind(){ pacman -Sl | awk '{print $2($4=="" ? "" : " *")}' | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S; }
yayfind(){ yay -Sl | awk '{print $2($4=="" ? "" : " *")}' | fzf --multi --preview 'yay -Si {1}' | xargs -ro yay -S; }
yeet(){ pacman -Qqe | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns; }

PS1='[\u@\h \W]\$ '

(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh

PROMPT_COMMAND="test \$? -eq 1 && ~/scripts/oof.sh"
zsh
pog
