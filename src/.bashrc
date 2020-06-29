#
# ~/.bashrc
#

# Note to self: this is always run in interactive shells, (indirectly via bash_profile for login shells)
# If not running interactively, don't do anything

[[ $- != *i* ]] && return

[[ -f ~/.functions ]] && source ~/.functions

[[ -f ~/.aliases ]] && source ~/.aliases

## Shell configuration

shopt -s autocd
shopt -s cdspell
shopt -os noclobber

function set_prompt {
    local blue="\[$(tput setaf 4)\]"
    local reset="\[$(tput sgr0)\]"
    local info="[\t \u@\h\$PWD \$?]"
    local prompt="\! \W \\\$"
    PS1="${blue}\\\`#$prompt\\\` ${reset}"
}; set_prompt; unset -f set_prompt

shopt -s histappend
shopt -s histreedit
shopt -s histverify
HISTFILESIZE=
HISTSIZE=
HISTIGNORE="[ ]*"

## env related to shell interface
export VISUAL="/usr/bin/emacsclient -c"
export EDITOR="/usr/bin/emacsclient -t"
export GIT_EDITOR="/usr/bin/emacsclient -t"
export PAGER="less --chop-long-lines --shift .1"
