#
# ~/.bashrc
#

# Note to self: this is always run in interactive shells, (indirectly via bash_profile for login shells)
# If not running interactively, don't do anything

[[ $- != *i* ]] && return

[[ -f ~/.functions ]] && . ~/.functions

[[ -f ~/.aliases ]] && . ~/.aliases

BLUE_COLOR="\[$(tput setaf 4)\]"
RESET_COLOR="\[$(tput sgr0)\]"

PS1="${BLUE_COLOR}[\t \u@\h \W]\$${RESET_COLOR=} "

export HISTFILESIZE=
export HISTSIZE=

SPARK_HOME=/home/stew/lib/spark-1.4.0-bin-hadoop2.4
ADAM_HOME=/home/stew/coding/github.com/bigdatagenomics/adam
ACTIVATOR_HOME=/home/stew/lib/activator-dist-1.3.10
RUBY_HOME=/home/stew/.gem/ruby/2.3.0
export GOPATH=~/go

PATH=$PATH:~/bin
PATH=$PATH:~/.cabal/bin
PATH=$PATH:$RUBY_HOME/bin
PATH=$PATH:$SPARK_HOME/bin
PATH=$PATH:$ADAM_HOME/bin
PATH=$PATH:$ACTIVATOR_HOME/bin
PATH=$PATH:$GOPATH/bin
PATH=$PATH:/home/stew/github.com/drivergroup/ude-scripts
PATH=$PATH:/opt/google-cloud-sdk/bin/
export VISUAL="/usr/bin/emacs"
export EDITOR="/usr/bin/emacs -nw"
export GIT_EDITOR="/usr/bin/emacs -nw"
export IW_INTERFACE=wlp4s0

export PAGER="less -S"

shopt -s autocd

PATH="/home/stew/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/home/stew/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/stew/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/stew/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/stew/perl5"; export PERL_MM_OPT;
