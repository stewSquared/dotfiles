# Things that almost shouldn't be aliases
alias block='sudo block'
alias bat='cat /sys/devices/platform/smapi/BAT0/remaining_percent'
alias jblive='weechat irc://stewSquared@irc.geekshed.net/#jupiterbroadcasting'
alias proset="python ~/coding/proset/proset.py 6 1440 900"
alias pom='sleep 25m && systemctl suspend'
alias take='mv ~/downloads/* .'
alias dv='setxkbmap -layout dvorak -option ctrl:nocaps; stty erase ; exit'
alias ek=dv

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
alias wup='sudo ip link set $IW_INTERFACE up'
alias wdn='sudo killall wpa_supplicant; sudo ip link set $IW_INTERFACE down'
alias wpa='sudo wpa_supplicant -i $IW_INTERFACE -c /etc/wpa_supplicant/default.conf -B'
alias wlan='sudo iw dev $IW_INTERFACE'
alias wfnd='wlan scan | grep -i ssid'
alias wcon='wlan connect'
alias amtrwi='wcon AmtrakConnect' # yep, I use it that often

# wifi passwords! in plaintext! (they're WEP networks, anyway)
alias fran='wcon 2WIRE442 key d:0:3501975353'
alias sun='wcon sunbeam key d:0:3607214458'

# stuff that needs to be sorted
#alias sparktest='mosh stew@107.170.197.136'
alias hansoo='mosh stew@192.168.90.7'
alias ec='emacsclient -nw'
alias xterm='xterm -sl 1048576'
alias xt='PWD=/home/stew/cur/ctig_portal xterm & disown'
alias touchpad-toggle='source ~/bin/touchpad-toggle'
alias sus='systemctl suspend'
alias portal-work='cd cur/ctig_portal/; xt xt jvm/app; xt xt ..; vagrant up; vagrant ssh postgres'
alias scalatdd='cd ~ ; rm -r sandbox ; cp -r coding/templates/scalatest sandbox ; cd sandbox ; xt emacs Main.scala src/test/scala/Tests.scala'
alias portal-activator='activator -Dhttp.port=8080 -Dlan_prefix.0= -Dlogin.timeout=9000999'
alias portal-sbt='sbt -Dhttp.port=8080 -Dlan_prefix.0= -Dlogin.timeout=9000999'
alias us='setxkbmap us'
alias =' ; stty erase '
alias wpatemp='sudo wpa_supplicant -i $IW_INTERFACE -c temp.conf'
alias avocado-submit='/home/stew/coding/github.com/drivergroup/avocado/bin/avocado-submit'
alias hista='git hista'
alias gamend='gimit --amend --no-edit'
alias xflux='xflux -z 94107'
alias bt='sudo hciconfig hci0 up; sudo hcitool cc 90:7F:61:2C:10:F5'
alias gidif='git diff'
alias xflux='xflux -z 94107'
alias sudo='sudo '
alias man='man '
