#
# ~/.bashrc
#

# Note to self: this is always run in interactive shells, (indirectly via bash_profile for login shells)
# If not running interactively, don't do anything

[[ $- != *i* ]] && return

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

PS1='[\t \u@\h \W]\$ '

PATH=$PATH:~/bin
PATH=$PATH:~/.cabal/bin
PATH=$PATH:~/.gem/ruby/2.2.0/bin
export EDITOR="/usr/bin/emacs -nw"
export GIT_EDITOR="/usr/bin/emacs -nw"

shopt -s autocd

