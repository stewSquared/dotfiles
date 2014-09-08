# Things that almost shouldn't be aliases
alias block='sudo block'
alias bat='cat /sys/devices/platform/smapi/BAT0/remaining_percent'
alias jblive='weechat irc://stewSquared@irc.geekshed.net/#jupiterbroadcasting'
alias activator='~/lib/activator-1.2.3/activator'
alias proset="python ~/coding/proset/proset.py 6 1440 900"
alias pom='sleep 25m && systemctl suspend'
alias take='mv ~/downloads/* .'
alias dv='setxkbmap dvorak; stty erase '

# typos
alias pyhton='python'
alias ypthon='python'

# nav
alias ls='ls --color=auto'
alias .='ls .'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# default flags
alias python='python -q'
alias cp='cp -i'
alias du='du -h'
alias df='df -h' #='df -h -B 1M'
alias mv='mv -i'
alias free='free -h'
alias mkdir='mkdir -p'
alias emacs='emacs -nw'

# git aliases
alias gad='git add'
alias gimit='git commit'
alias ginit='git init'
alias gist='git status'
alias gout='git checkout'
alias hist='git hist'

# forgetting to type 'git'
alias add='git add'
alias push='git push'
alias pull='git pull'
alias fetch='git fetch'
alias merge='git merge'
alias clone='git clone'
alias commit='git commit'

# wifi. Should I just use networkmanager? Nah. Thisiseasy.
alias wup='sudo ip link set wlp3s0 up'
alias wdn='sudo killall wpa_supplicant; sudo ip link set wlp3s0 down'
alias wpa='sudo wpa_supplicant -B -i wlp3s0 -c /etc/wpa_supplicant/default.conf'
alias wlan='sudo iw dev wlp3s0'
alias wfnd='wlan scan | grep -i ssid'
alias wcon='wlan connect'
alias amtrwi='wcon AmtrakConnect' # yep, I use it that often

# wifi passwords! in plaintext! (they're WEP networks, anyway)
alias fran='wcon 2WIRE442 key d:0:3501975353'
alias sun='wcon sunbeam key d:0:3607214458'

# stuff that needs to be sorted
alias sparktest='mosh stew@107.170.197.136'
alias hansoo='mosh stew@192.168.90.7'
alias ek='exit'
alias ec='emacsclient -nw'
