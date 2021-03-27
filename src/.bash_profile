#
# ~/.bash_profile
#

# Note to self: sometimes called .bash_login -- I like that name better.
# source ~/.bashrc

[[ -f ~/.bashrc ]] && source ~/.bashrc

## HOME and PATH
ACTIVATOR_HOME=$HOME/lib/activator-dist-1.3.10
export RUBY_HOME=$HOME/.gem/ruby/2.3.0
export GOPATH=~/go

PATH=$PATH:$HOME/bin
PATH=$PATH:$HOME/.cabal/bin
PATH=$PATH:$RUBY_HOME/bin
PATH=$PATH:$ACTIVATOR_HOME/bin
PATH=$PATH:$GOPATH/bin
PATH=$PATH:$HOME/github.com/drivergroup/ude-scripts
PATH=$PATH:$HOME/perl5/bin
PATH=$PATH:$HOME/github.com/lampepfl/dotty/bin
PATH=$PATH:$HOME/.local/share/coursier/bin

## Common env
export VISUAL="/usr/bin/emacsclient -c"
export EDITOR="/usr/bin/emacsclient -t"
export GIT_EDITOR="/usr/bin/emacsclient -t"
export PAGER="less -S"

## system-specific
export IW_INTERFACE=wlp3s0

## perl lib
PERL5LIB="/home/stew/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/stew/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/stew/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/stew/perl5"; export PERL_MM_OPT;
