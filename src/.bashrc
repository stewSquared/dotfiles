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

function blue_prompt {
    local blue="\[$(tput setaf 4)\]"
    local reset="\[$(tput sgr0)\]"
    PS1="${blue}[\t \u@\h \W]\$${reset=} "
}; blue_prompt; unset -f blue_prompt

# For infinite .bash_history
HISTFILESIZE=
HISTSIZE=
