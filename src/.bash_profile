#
# ~/.bash_profile
#

# Note to self: sometimes called .bash_login -- I like that name better.
# source ~/.bashrc

[[ -f ~/.bashrc ]] && source ~/.bashrc

## HOME and PATH

PATH=$PATH:$HOME/bin
PATH=$PATH:$HOME/.local/share/coursier/bin

# Etsy-specific
source /Users/stewartstewart/development/sciences/dev-scripts/shell.rc
