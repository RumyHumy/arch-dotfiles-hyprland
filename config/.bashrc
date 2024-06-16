#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Programs with right configs
alias cava='cava -p ~/dotfiles/config/cava/config'

# Dotfiles shortcuts
alias cdots='cd ~/dotfiles/config'
alias dots='cd ~/dotfiles'

alias ls='ls --color=auto -a -l --block-size=M'
alias grep='grep --color=auto'

PS1='[\u@\h \W]\$ '
