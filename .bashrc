#
# ~/.bashrc
#

# Note to self: this is always run in interactive shells, (indirectly via bash_profile for login shells)
# If not running interactively, don't do anything

[[ $- != *i* ]] && return

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

alias ls='ls --color=auto'
PS1='[\t \u@\h \W]\$ '

PATH=$PATH:~/.cabal/bin
PATH=$PATH:~/bin
PLAY_HOME=$HOME/lib/play-2.2.1
export ECLIPSE_HOME=~/.eclipse
export EDITOR="/usr/bin/emacs -nw"
export GIT_EDITOR="/usr/bin/emacs -nw"
#export CLASSPATH=.:CLASSPATH
# JUnit
#export CLASSPATH=CLASSPATH:~/lib/junit-4.11.jar:hamcrest-core-1.3.jar
