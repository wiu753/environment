# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:/opt/nvim-linux64/bin"

ZSH_THEME="robbyrussell"

# Select previous commands with Vim-like keys
bindkey '^k' up-line-or-history
bindkey '^j' down-line-or-history

# Remove the beeping sound
unsetopt correct_all
unsetopt correct
unsetopt BEEP

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias vim="nvim"
