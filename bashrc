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
PATH=$PATH:~/lib/spark-1.2.1-bin-hadoop2.4/bin
export EDITOR="/usr/bin/emacs -nw"
export GIT_EDITOR="/usr/bin/emacs -nw"

SPARK_HOME=/home/stew/lib/spark-1.2.1-bin-hadoop2.4
ADAM_HOME=/home/stew/cur/aas/bdgenomics/adam

PATH=$PATH:$ADAM_HOME/bin

shopt -s autocd

PATH="/home/stew/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/home/stew/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/stew/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/stew/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/stew/perl5"; export PERL_MM_OPT;
